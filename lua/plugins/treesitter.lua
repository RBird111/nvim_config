return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add tsx and treesitter
    vim.list_extend(opts.ensure_installed, {
      "css",
      "html",
      "gleam",
      "svelte",
      "tsx",
      "typescript",
    })
  end,
}
