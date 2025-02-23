return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      bashls = {
        settings = {
          filetypes = { "sh", "zsh" },
        },
      },
      racket_langserver = {},
      perlnavigator = {},
    },
  },
}
