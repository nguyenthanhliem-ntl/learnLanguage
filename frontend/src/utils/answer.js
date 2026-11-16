// Compares typed answers: removes hidden characters (zero-width, BOM from pasting / input methods), normalizes Unicode,
// turns curly apostrophes into straight ones (doesn’t = doesn't), collapses spaces, case-insensitive
export function normalizeAnswer(s) {
  return (s ?? '')
    .normalize('NFC')
    .replace(/[\u200B-\u200D\u2060\uFEFF]/g, '')
    .replace(/[\u2018\u2019\u02BC]/g, "'")
    .trim()
    .replace(/\s+/g, ' ')
    .toLowerCase()
}

/** The answer matches one of the accepted answers (empty is wrong). */
export function matchesAnswer(typed, answers) {
  const t = normalizeAnswer(typed)
  return t !== '' && answers.some((a) => normalizeAnswer(a) === t)
}
