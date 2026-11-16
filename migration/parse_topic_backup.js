const fs = require("fs");
const path = require("path");

const PROJECT_ROOT = path.resolve(__dirname, "..");

const topicFile = path.join(
  PROJECT_ROOT,
  "lib",
  "modules",
  "wtw134",
  "theme1_functions_and_change",
  "subtopics",
  "functions_and_their_graphs",
  "introduction_to_functions.dart"
);

console.log("");
console.log("======================================");
console.log("WTW134 TOPIC PARSER");
console.log("======================================");
console.log("");

if (!fs.existsSync(topicFile)) {
  throw new Error(
    `Topic file not found:\n${topicFile}`
  );
}

const source = fs.readFileSync(topicFile, "utf8");

console.log("Topic file found: TRUE");
console.log(`File size: ${source.length} characters`);
console.log("");

// --------------------------------------------------
// Extract a named Dart List<String>
// --------------------------------------------------

function extractList(source, listName) {
  const startMarker = `notes: [`;
  const imageMarker = `images: [`;

  let marker;

  if (listName === "notes") {
    marker = startMarker;
  } else if (listName === "images") {
    marker = imageMarker;
  } else {
    throw new Error(`Unknown list: ${listName}`);
  }

  const start = source.indexOf(marker);

  if (start === -1) {
    throw new Error(`Could not find ${marker}`);
  }

  const listStart = start + marker.length;

  let depth = 1;
  let inString = false;
  let stringQuote = null;
  let escaped = false;

  let end = -1;

  for (let i = listStart; i < source.length; i++) {
    const char = source[i];

    if (inString) {
      if (escaped) {
        escaped = false;
        continue;
      }

      if (char === "\\") {
        escaped = true;
        continue;
      }

      if (char === stringQuote) {
        inString = false;
        stringQuote = null;
      }

      continue;
    }

    if (char === '"' || char === "'") {
      inString = true;
      stringQuote = char;
      continue;
    }

    if (char === "[") {
      depth++;
    }

    if (char === "]") {
      depth--;

      if (depth === 0) {
        end = i;
        break;
      }
    }
  }

  if (end === -1) {
    throw new Error(`Could not find end of ${listName} list`);
  }

  return source.substring(listStart, end);
}

// --------------------------------------------------
// Extract quoted strings from a Dart list
// --------------------------------------------------

function extractStrings(listSource) {
  const results = [];

  const regex = /"((?:\\.|[^"\\])*)"/g;

  let match;

  while ((match = regex.exec(listSource)) !== null) {
    results.push(match[1]);
  }

  return results;
}

// --------------------------------------------------
// Extract title
// --------------------------------------------------

function extractTitle(source) {
  const match = source.match(/title:\s*"([^"]+)"/);

  if (!match) {
    throw new Error("Could not find topic title");
  }

  return match[1];
}

// --------------------------------------------------
// Extract StudyLocation
// --------------------------------------------------

function extractLocation(source) {
  const moduleMatch = source.match(/module:\s*"([^"]+)"/);
  const topicMatch = source.match(/topic:\s*"([^"]+)"/);
  const subtopicMatch = source.match(/subtopic:\s*"([^"]+)"/);

  return {
    module: moduleMatch ? moduleMatch[1] : null,
    topic: topicMatch ? topicMatch[1] : null,
    subtopic: subtopicMatch ? subtopicMatch[1] : null,

    // Parent folder containing the actual topic file.
    category: path.basename(path.dirname(topicFile)),
  };
}

// --------------------------------------------------
// Parse topic
// --------------------------------------------------

const title = extractTitle(source);
const location = extractLocation(source);

const notesSource = extractList(source, "notes");
const imagesSource = extractList(source, "images");

const notes = extractStrings(notesSource);
const images = extractStrings(imagesSource);

// --------------------------------------------------
// Build structured topic
// --------------------------------------------------

const topic = {
  title,
  location,
  images,
  notes,
};

// --------------------------------------------------
// Display results
// --------------------------------------------------

console.log("===== EXTRACTED TOPIC =====");
console.log("");

console.log(`Title: ${topic.title}`);

console.log("");
console.log("Location:");
console.log(`  Module: ${topic.location.module}`);
console.log(`  Topic: ${topic.location.topic}`);
console.log(`  Category: ${topic.location.category}`);
console.log(`  Subtopic: ${topic.location.subtopic}`);

console.log("");
console.log(`Images found: ${topic.images.length}`);

topic.images.forEach((image, index) => {
  console.log(`  ${index + 1}. ${image}`);
});

console.log("");
console.log(`Notes found: ${topic.notes.length}`);

topic.notes.slice(0, 10).forEach((note, index) => {
  console.log(`  ${index + 1}. ${note}`);
});

if (topic.notes.length > 10) {
  console.log(`  ... ${topic.notes.length - 10} more notes`);
}
const outputDir = path.join(__dirname, "output");

if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

const outputFile = path.join(
  outputDir,
  "introduction_to_functions.json"
);

fs.writeFileSync(
  outputFile,
  JSON.stringify(topic, null, 2),
  "utf8"
);

console.log("");
console.log("JSON FILE CREATED:");
console.log(outputFile);

console.log("");
console.log("======================================");
console.log("READ-ONLY EXTRACTION TEST COMPLETE");
console.log("======================================");