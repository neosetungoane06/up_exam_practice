// The list of reasons an account can be warned, restricted, suspended or
// banned for. This is the ONE place the wording lives: the admin picks a
// reason code, and the student sees the matching title, explanation and
// Terms of Service section on their screen. Change the wording here and
// redeploy functions - no app update needed.

export const APPEAL_EMAIL = "keplerstudy@gmail.com";
export const APPEAL_DAYS = 7;

export interface ReasonInfo {
  title: string;
  text: string;
  /** Which part of the Terms of Service this comes from. */
  terms: string;
}

export const REASONS: Record<string, ReasonInfo> = {
  account_sharing: {
    title: "Account shared with other people",
    text: "This account was used by more than one person, or on more " +
      "devices than allowed. Each account is for one person, on up to 5 " +
      "devices.",
    terms: "Section 2 (Account, Devices and Sharing) and Section 25",
  },
  multiple_accounts: {
    title: "More than one account",
    text: "More than one account was used to get around the free plan " +
      "limits, or to come back after a suspension or ban.",
    terms: "Section 2 (Account, Devices and Sharing)",
  },
  disposable_email: {
    title: "Temporary email address",
    text: "This account was created with a temporary or disposable email " +
      "address, so uploads are paused. Please use a permanent email " +
      "address, such as your Gmail or university email.",
    terms: "Section 2 (Account, Devices and Sharing) and Section 25",
  },
  payment_dispute: {
    title: "Payment dispute",
    text: "A payment for this account was disputed or charged back, and " +
      "the dispute was rejected, withdrawn or found to be unjustified.",
    terms: "Section 25 (Subscriptions, Billing and Refunds)",
  },
  automated_access: {
    title: "Bots or scraping",
    text: "We found automated access to Kepler, or attempts to collect " +
      "Kepler's notes or other content.",
    terms: "Section 26 (Fair Use, Automated Access and Competing Services)",
  },
  service_overload: {
    title: "Overloading our systems",
    text: "This account sent very large, corrupted or repeated files or " +
      "requests that slowed down or put at risk the service for others.",
    terms: "Section 26 (Fair Use, Automated Access and Competing Services)",
  },
  prohibited_content: {
    title: "Prohibited content",
    text: "Material uploaded, linked or asked about on this account broke " +
      "our rules on prohibited content.",
    terms: "Section 3 (Acceptable Use) and Section 28",
  },
  harmful_links: {
    title: "Harmful links",
    text: "This account added links to harmful, malicious or non-study " +
      "websites or videos.",
    terms: "Section 3 (Acceptable Use) and Section 28",
  },
  illegal_content: {
    title: "Illegal content",
    text: "Content connected to illegal activity was found on this account.",
    terms: "Section 3 (Acceptable Use) and Section 28",
  },
  harassment: {
    title: "Harassment or threats",
    text: "This account was used to harass, bully, threaten or stalk " +
      "someone.",
    terms: "Section 3 (Acceptable Use)",
  },
  restricted_region: {
    title: "Restricted region",
    text: "This account was used from a region where Kepler is not " +
      "available, or a VPN or proxy was used to hide the location.",
    terms: "Section 27 (Restricted Regions)",
  },
  security_circumvention: {
    title: "Bypassing protections",
    text: "This account tried to get around Kepler's limits, security or " +
      "other protections.",
    terms: "Section 3 (Acceptable Use) and Section 26",
  },
  returning_banned: {
    title: "Returning after a suspension or ban",
    text: "This email address belongs to an account that was previously " +
      "suspended or closed.",
    terms: "Section 21 (Suspension, Termination and Appeals)",
  },
  strike_limit: {
    title: "Repeated breaches",
    text: "This account received several warnings for breaking our rules.",
    terms: "Section 21 (Suspension, Termination and Appeals)",
  },
  other: {
    title: "Breach of our Terms",
    text: "We found a breach of our Terms of Service on this account.",
    terms: "Section 21 (Suspension, Termination and Appeals)",
  },
};

/**
 * @param {string | null | undefined} code - A reason code.
 * @return {object} The reason (falls back to "other" for unknown codes).
 */
export function reasonInfo(
  code: string | null | undefined
): ReasonInfo & {code: string} {
  const c = code && REASONS[code] ? code : "other";
  return {code: c, ...REASONS[c]};
}

/** @return {Array<{code: string, title: string}>} All reasons, for the admin page. */
export function reasonList(): Array<{code: string; title: string}> {
  return Object.entries(REASONS).map(([code, r]) => ({code, title: r.title}));
}