import {callDeepSeekChat} from "../../providers/deepseekChat";
import {parseModelJson} from "../jsonUtils";
import {
  Blueprint,
  BlueprintConcept,
  BlueprintPart,
  ConceptKind,
  DocumentType,
  PartPlan,
  SourceMode,
  Subject,
} from "./types";

/**
 * The planner decides ONE GO versus PARTS by LEARNING LOAD, never by
 * page or word count. A dense one-page sheet with 25 concepts becomes
 * several parts; a 30-slide deck with 6 big ideas becomes one rich
 * response (the writer enriches it).
 *
 * TUNE THESE on real uploads. One weight unit is about 190 words of
 * finished notes (see WORDS_PER_WEIGHT in writer.ts).
 */
/** At or below this total weight the notes are written in ONE go. */
export const SINGLE_PASS_MAX_WEIGHT = 16;
/** When splitting, aim for about this much weight per part. */
export const TARGET_PART_WEIGHT = 10;
/** A last part lighter than this is merged into the one before it. */
export const MIN_LAST_PART_WEIGHT = 3;
/** Hard cap on how many parts one note set can have. */
export const MAX_PARTS = 14;
/** Cap on source characters sent to the writer in one call. */
export const MAX_WRITER_SOURCE_CHARS = 60000;

const PLANNER_MODEL = "deepseek-v4-flash";
const PLANNER_VIEW_FULL_LIMIT = 45000;

/** Cheap measurements of the source, used as hints and for fallback. */
export interface SourceMetrics {
  words: number;
  lines: number;
  headings: number;
  equations: number;
}

const HEADING_RE =
  /^(?:#{1,4}\s+\S|\d{1,2}(?:\.\d{1,2}){0,3}[.)]?\s+[A-Z][^.]{3,80}$|[A-Z][A-Z0-9 ,:&\-]{6,80}$|(?:Chapter|Section|Lecture|Topic|Unit|Module|Learning outcome)\b.{0,80}$)/;

/**
 * Looks for heading-like lines.
 * @param {string} text - The source.
 * @return {string[]} Heading-like lines in order.
 */
function headingLines(text: string): string[] {
  return text
    .split("\n")
    .map((l) => l.trim())
    .filter((l) => l.length > 0 && l.length <= 100 && HEADING_RE.test(l));
}

/**
 * Measures the source.
 * @param {string} text - The source.
 * @return {SourceMetrics} Words, lines, headings and equation marks.
 */
export function computeSourceMetrics(text: string): SourceMetrics {
  const words = text.split(/\s+/).filter(Boolean).length;
  const lines = text.split("\n").length;
  const equations = (text.match(/[=\u2211\u222B\u221A\u00B1\u2264\u2265]/g) ??
    []).length;
  return {words, lines, headings: headingLines(text).length, equations};
}

/**
 * What the planner model reads: the whole source if it is small, else
 * the start, every heading-like line from the whole text, and the end.
 * @param {string} full - The full source.
 * @return {string} The view of the source.
 */
function buildPlannerView(full: string): string {
  if (full.length <= PLANNER_VIEW_FULL_LIMIT) return full;
  const heads = headingLines(full).slice(0, 300).join("\n");
  return (
    `${full.slice(0, 20000)}\n\n[... middle of document omitted; its ` +
    `headings follow ...]\n${heads}\n\n[... end of document ...]\n` +
    full.slice(-6000)
  );
}

const VALID_KINDS: ConceptKind[] = [
  "definition",
  "mechanism",
  "comparison",
  "calculation",
  "case",
  "framework",
  "other",
];

/**
 * Chooses a part title from its concepts.
 * @param {BlueprintConcept[]} cs - The concepts in the part.
 * @return {string} A short title.
 */
function titleFor(cs: BlueprintConcept[]): string {
  const first = cs[0].section || cs[0].title;
  const last = cs[cs.length - 1].section || cs[cs.length - 1].title;
  const t = first === last ? first : `${first} & ${last}`;
  return t.length > 80 ? t.slice(0, 77) + "..." : t;
}

/**
 * Builds a part from concepts.
 * @param {BlueprintConcept[]} cs - Non-empty concepts.
 * @return {BlueprintPart} The part.
 */
function makePart(cs: BlueprintConcept[]): BlueprintPart {
  return {
    title: titleFor(cs),
    weight: cs.reduce((s, c) => s + c.weight, 0),
    concepts: cs,
  };
}

/**
 * Packs concepts (in source order) into parts. Decision rule: if the
 * total learning load fits one part, ONE part; otherwise split at
 * natural section seams into evenly loaded parts.
 * @param {BlueprintConcept[]} concepts - Concepts in teaching order.
 * @return {BlueprintPart[]} The planned parts (at least one).
 */
export function packParts(concepts: BlueprintConcept[]): BlueprintPart[] {
  const total = concepts.reduce((s, c) => s + c.weight, 0);
  if (total <= SINGLE_PASS_MAX_WEIGHT) return [makePart(concepts)];

  const nParts = Math.min(
    MAX_PARTS,
    Math.max(2, Math.ceil(total / TARGET_PART_WEIGHT))
  );
  const groups: BlueprintConcept[][] = [];
  let cur: BlueprintConcept[] = [];
  let curW = 0;
  let closedW = 0;

  for (const c of concepts) {
    // Re-aim every time: what is left divided by the parts still to fill,
    // so early parts closing at section seams never starve or bloat the
    // last part.
    const slotsLeft = nParts - groups.length;
    const targetPer = (total - closedW) / slotsLeft;
    const prev = cur[cur.length - 1];
    const canClose = groups.length < nParts - 1 && cur.length > 0;
    const sectionBreak =
      prev !== undefined && prev.section !== c.section &&
      curW >= targetPer * 0.75;
    const overflow =
      curW + c.weight > targetPer * 1.25 && curW >= targetPer * 0.5;
    if (canClose && (curW >= targetPer || sectionBreak || overflow)) {
      groups.push(cur);
      closedW += curW;
      cur = [];
      curW = 0;
    }
    cur.push(c);
    curW += c.weight;
  }
  if (cur.length > 0) groups.push(cur);

  const weightOf = (g: BlueprintConcept[]) =>
    g.reduce((s, c) => s + c.weight, 0);
  if (
    groups.length >= 2 &&
    weightOf(groups[groups.length - 1]) < MIN_LAST_PART_WEIGHT
  ) {
    const tail = groups.pop() as BlueprintConcept[];
    groups[groups.length - 1] = [...groups[groups.length - 1], ...tail];
  }
  return groups.map(makePart);
}

/**
 * A local plan used only when the planner model fails: concepts come
 * from heading-like lines, or from even chunks of the text.
 * @param {string} source - The source.
 * @param {boolean} topicRequest - True for a bare topic.
 * @return {BlueprintConcept[]} Concepts.
 */
function fallbackConcepts(
  source: string,
  topicRequest: boolean
): BlueprintConcept[] {
  if (topicRequest) {
    return [{
      title: source.trim().slice(0, 80) || "The topic",
      section: "The topic",
      weight: 8,
      kind: "other",
    }];
  }
  const heads = headingLines(source).slice(0, 60);
  if (heads.length >= 2) {
    return heads.map((h) => ({
      title: h.slice(0, 80),
      section: h.slice(0, 80),
      weight: 2,
      kind: "other" as ConceptKind,
    }));
  }
  const words = source.split(/\s+/).filter(Boolean).length;
  const chunks = Math.max(1, Math.min(24, Math.round(words / 250)));
  return Array.from({length: chunks}, (_, i) => ({
    title: `Section ${i + 1}`,
    section: `Section ${i + 1}`,
    weight: 2,
    kind: "other" as ConceptKind,
  }));
}

/**
 * Plans the whole note set before any writing. Never throws: if the
 * planner model fails the local fallback is used.
 * @param {object} input - What to plan from.
 * @return {Promise<Blueprint>} The blueprint.
 */
export async function planNotes(input: {
  moduleTitle: string;
  sourceText: string;
  subject: Subject;
  docType: DocumentType;
  sourceMode: SourceMode;
  apiKey: string;
}): Promise<Blueprint> {
  const topicRequest = input.sourceMode === "topic_request";
  const metrics = computeSourceMetrics(input.sourceText);

  const system =
    "You are a curriculum planner for university study notes. You do " +
    "NOT write notes. You list the TEACHABLE CONCEPTS a student must " +
    "master from the material and weigh how heavy each is to learn. " +
    "Reply with ONLY a JSON object.";

  const user = `
MODULE: ${input.moduleTitle}
SUBJECT: ${input.subject}
DOCUMENT TYPE: ${input.docType}
INPUT KIND: ${topicRequest ?
    "a bare topic request - plan the concepts a complete first-time " +
    "university lecture on it would cover (a focused scope; total weight " +
    "usually 8-20)" :
    "a real document - list the concepts IT teaches, in its order. If " +
    "the document is sparse (many pages, little content) list only what " +
    "it actually teaches; if it is dense (little space, many ideas) list " +
    "every distinct idea separately."}

SOURCE METRICS (hints only): ${metrics.words} words, ${metrics.headings} heading-like lines, ${metrics.equations} equation symbols.

SOURCE:
${buildPlannerView(input.sourceText)}

Return JSON exactly like:
{
  "density": "sparse" | "normal" | "dense",
  "concepts": [
    {"title": string, "section": string, "weight": 1-4,
     "kind": "definition"|"mechanism"|"comparison"|"calculation"|"case"|"framework"|"other"}
  ]
}

RULES:
- "concepts" in the order a student should learn them. Maximum 60; merge trivial neighbouring facts into one concept.
- "section": the topic/heading the concept belongs to (concepts of one topic share the same section string).
- "weight" measures LEARNING LOAD, not how many words the source spends:
  1 = a simple definition or fact; 2 = a mechanism, comparison or framework needing explanation; 3 = a multi-step process, a key case, or a calculation technique needing a worked example; 4 = a big integrated idea needing several worked examples.
- Page count is irrelevant. 30 mostly-picture slides on 6 ideas is a SMALL load; one packed page with 25 ideas is a LARGE load.
- Skip agendas, "questions?" slides, repeated headers and filler.
`.trim();

  let concepts: BlueprintConcept[] = [];
  let density: Blueprint["density"] = "normal";
  let usedFallback = false;

  try {
    const raw = await callDeepSeekChat({
      apiKey: input.apiKey,
      system,
      user,
      model: PLANNER_MODEL,
      temperature: 0,
      maxTokens: 4000,
      timeoutMs: 45000,
    });
    const parsed = parseModelJson(raw) as {
      density?: unknown;
      concepts?: unknown;
    };
    if (Array.isArray(parsed.concepts)) {
      for (const item of parsed.concepts as Record<string, unknown>[]) {
        const title = String(item.title ?? "").trim();
        if (!title) continue;
        const w = Number(item.weight);
        const kind = String(item.kind ?? "other") as ConceptKind;
        concepts.push({
          title: title.slice(0, 120),
          section: String(item.section ?? title).trim().slice(0, 100) ||
            title.slice(0, 100),
          weight: Number.isFinite(w) ? Math.max(1, Math.min(4, Math.round(w))) : 2,
          kind: VALID_KINDS.includes(kind) ? kind : "other",
        });
        if (concepts.length >= 60) break;
      }
    }
    if (
      parsed.density === "sparse" ||
      parsed.density === "normal" ||
      parsed.density === "dense"
    ) {
      density = parsed.density;
    }
  } catch (e) {
    console.warn("planNotes: planner call failed, using fallback", e);
  }

  if (concepts.length === 0) {
    usedFallback = true;
    concepts = fallbackConcepts(input.sourceText, topicRequest);
  }

  const parts = packParts(concepts);
  const totalWeight = concepts.reduce((s, c) => s + c.weight, 0);
  console.log(
    `planNotes: ${concepts.length} concepts, weight ${totalWeight}, ` +
    `${parts.length} part(s), density ${density}, fallback ${usedFallback}`
  );

  return {
    version: 1,
    sourceKind: topicRequest ? "topic_request" : "document",
    density,
    totalWeight,
    parts,
    usedFallback,
  };
}

/**
 * The writer's slice of the blueprint for one part.
 * @param {Blueprint} bp - The blueprint.
 * @param {number} partNumber - 1-based part number.
 * @return {PartPlan | null} The plan, or null if out of range.
 */
export function partPlanOf(bp: Blueprint, partNumber: number): PartPlan | null {
  const part = bp.parts[partNumber - 1];
  if (!part) return null;
  return {title: part.title, weight: part.weight, concepts: part.concepts};
}

/**
 * Percent of the whole note set done after a given part.
 * @param {Blueprint} bp - The blueprint.
 * @param {number} partNumber - 1-based part number just finished.
 * @return {number} 0-100.
 */
export function progressAfterPart(bp: Blueprint, partNumber: number): number {
  const total = bp.parts.reduce((s, p) => s + p.weight, 0) || 1;
  const done = bp.parts
    .slice(0, partNumber)
    .reduce((s, p) => s + p.weight, 0);
  return Math.round((done / total) * 100);
}

/**
 * For very long sources, picks the window of the source that matters for
 * one part (concepts follow source order, so position tracks load).
 * @param {string} source - The full source handed to the engine.
 * @param {Blueprint} bp - The blueprint.
 * @param {number} partNumber - 1-based part number.
 * @return {string} The source text to send to the writer.
 */
export function sliceSourceForPart(
  source: string,
  bp: Blueprint,
  partNumber: number
): string {
  if (source.length <= MAX_WRITER_SOURCE_CHARS) return source;
  const total = bp.parts.reduce((s, p) => s + p.weight, 0) || 1;
  const before = bp.parts
    .slice(0, partNumber - 1)
    .reduce((s, p) => s + p.weight, 0);
  const upto = before + (bp.parts[partNumber - 1]?.weight ?? 0);
  const margin = 8000;
  const start = Math.max(
    0, Math.floor(source.length * (before / total)) - margin
  );
  let end = Math.min(
    source.length, Math.ceil(source.length * (upto / total)) + margin
  );
  if (end - start > MAX_WRITER_SOURCE_CHARS) {
    end = start + MAX_WRITER_SOURCE_CHARS;
  }
  return (
    (start > 0 ? "[... earlier material omitted ...]\n" : "") +
    source.slice(start, end) +
    (end < source.length ? "\n[... later material omitted ...]" : "")
  );
}
