return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "racket",
      "css",
      "gleam",
      "go",
      "html",
      "perl",
      "python",
      "rust",
      "svelte",
      "tsx",
      "typescript",
    })
  end,
}
