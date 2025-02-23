return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      perl = { "perltidy" },
      zsh = { "shfmt" },
      racket = { "racket_fmt" },
    },
    formatters = {
      racket_fmt = {
        command = "raco",
        args = { "fmt" },
      },
    },
  },
}
