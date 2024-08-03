return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
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
