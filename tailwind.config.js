/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './**/*.{html,js}',
  ],
  theme: {
    extend: {
      colors: {
        'text-primary': '#111828',
        'text-secondary': '#64748B',
        'text-subelement': '#475569',
        'text-accent': '#5169B1',
        'text-dark-accent': '#0369A1',
      },
    },
  }
}

