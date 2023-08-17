/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './**/*.html',
    './node_modules/tw-elements/dist/js/**/*.js'
  ],
  theme: {
    extend: {
      colors: {
        'headroom': '#023047',
        'light-text': '#FCFBFC',
        'accent': '#1383FF',
        'dark-accent': '#0D5EB6',
      },
    },
  },
  plugins: [
    require("tw-elements/dist/plugin.cjs"),
  ],
}

