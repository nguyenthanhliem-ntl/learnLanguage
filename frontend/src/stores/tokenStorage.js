// Store the JWT in sessionStorage: closing the tab / browser signs the user out (reloading keeps them signed in).
// Wrapped in try/catch because the browser may block storage.
const KEY = 'vocab.token'

// The old version kept the token in localStorage (survives closing the browser): remove it so the user is not signed in again automatically
try {
  localStorage.removeItem(KEY)
} catch {
  // ignore
}

export function getToken() {
  try {
    return sessionStorage.getItem(KEY)
  } catch {
    return null
  }
}

export function setToken(token) {
  try {
    sessionStorage.setItem(KEY, token)
  } catch {
    // ignore: if it cannot be saved, the user has to sign in again after reloading
  }
}

export function clearToken() {
  try {
    sessionStorage.removeItem(KEY)
  } catch {
    // ignore
  }
}
