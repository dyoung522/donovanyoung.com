module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.{css,scss}",
    "./app/javascript/**/*.{js,jsx}"
  ],
  theme: {
    fontFamily: {
      "sans": ["Roboto", "sans-serif"],
      "serif": ["'Roboto Slab'", "serif"],
      "mono": ["'Roboto Mono'", "monospace"],
      "rock-salt": ["'Rock Salt'", "cursive"]
    },
    extend: {
      backgroundImage: {
        "circuit-board-light": "url('bg-circuit-board-light.svg')",
        "circuit-board-dark": "url('bg-circuit-board-dark.svg')",
      },
    },
  },
  plugins: [],
}
