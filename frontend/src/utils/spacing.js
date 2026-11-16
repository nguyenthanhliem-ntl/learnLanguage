/** A word must not appear again within this many questions. */
export const REPEAT_GAP = 5

/**
 * Reorders questions so each word is at least {@code gap} questions away from its previous appearance,
 * including the questions just asked in the previous round ({@code recentIds}). Does its best when the bank is very small.
 */
export function arrangeWithGap(questions, recentIds = [], gap = REPEAT_GAP) {
  const pending = [...questions]
  const out = []
  while (pending.length) {
    const recent = [...recentIds, ...out.map((q) => q.word.id)].slice(-gap)
    let i = pending.findIndex((q) => !recent.includes(q.word.id))
    if (i < 0) i = 0
    out.push(pending.splice(i, 1)[0])
  }
  return out
}

/** A word just learned (bonus word) must be reviewed within this many questions at the start of the next round. */
export const NEW_WORD_WITHIN = 10

/**
 * Places the questions of the words in {@code ids} at a random position within the first {@code limit} questions.
 * The other questions keep their order.
 */
export function placeWithin(questions, ids = [], limit = NEW_WORD_WITHIN) {
  const out = [...questions]
  for (const id of ids) {
    const from = out.findIndex((q) => q.word.id === id)
    if (from < 0) continue // word not in this round
    const [q] = out.splice(from, 1)
    const to = Math.floor(Math.random() * Math.min(limit, out.length + 1))
    out.splice(to, 0, q)
  }
  return out
}
