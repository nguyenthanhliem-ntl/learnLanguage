/** Design tokens theo CLAUDE.md §8.1 */
/** Colour values live in CSS variables (src/assets/main.css) so Dark mode only swaps variables, no dark: classes needed */

const token = (name) => `rgb(var(--c-${name}) / <alpha-value>)`

/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{vue,js}'],
  darkMode: 'class',
  theme: {
    container: {
      center: true,
      padding: '1rem',
    },
    extend: {
      colors: {
        primary: {
          50: token('primary-50'),
          100: token('primary-100'),
          200: token('primary-200'),
          300: token('primary-300'),
          600: token('primary-600'),
          700: token('primary-700'),
          800: token('primary-800'),
        },
        ink: {
          900: token('ink-900'),
          700: token('ink-700'),
          500: token('ink-500'),
          400: token('ink-400'),
        },
        surface: token('surface'),
        canvas: token('canvas'),
        border: token('border'),
        success: token('success'),
        danger: token('danger'),
        stat: {
          teal: token('stat-teal'),
          violet: token('stat-violet'),
          pink: token('stat-pink'),
          blue: token('stat-blue'),
        },
        // Highlighted gradient block: blue in Light mode, soft dark blue in Dark mode
        hero: {
          start: token('hero-start'),
          end: token('hero-end'),
        },
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', '-apple-system', 'Segoe UI', 'Roboto', 'sans-serif'],
        mono: ['"Noto Sans Mono"', 'ui-monospace', 'Consolas', 'monospace'],
      },
    },
  },
  plugins: [],
}
