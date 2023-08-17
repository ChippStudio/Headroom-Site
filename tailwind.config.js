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
      },
    },
  },
  plugins: [
    require("tw-elements/dist/plugin.cjs"),
  ],
}

