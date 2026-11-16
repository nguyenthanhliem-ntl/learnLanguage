import t from '@/locales/vi'

/** Gets the Vietnamese error message from the backend's { code, message, details } response. */
export function getErrorMessage(error) {
  if (!error?.response) {
    return t.errors.network
  }
  return error.response.data?.message || t.errors.unknown
}

/** Detailed errors (e.g. per-field validation errors), with the leading "field: " removed. */
export function getErrorDetails(error) {
  const details = error?.response?.data?.details
  if (!Array.isArray(details)) return []
  return details.map((d) => d.replace(/^[\w.]+:\s*/, ''))
}
