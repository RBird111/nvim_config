local colorschemes = {
  -- ONEDARK
  onedark = {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "onedark",
      },
    },
    {
      "navarasu/onedark.nvim",
      priority = 1000,
      config = function()
        require("onedark").setup({
          -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
          style = "dark",
          transparent = true,
          lualine = {
            transparent = false, -- lualine center bar transparency
          },
          highlights = {
            ["@string.special.perl"] = { fg = "$orange" },
            ["@lsp.type.variable.perl"] = { fg = "$red" },
            ["@lsp.type.property"] = { fg = "$cyan" },
          },
        })
        require("onedark").load()
      end,
    },
  },
  -- CATPPUCCIN
  catppuccin = {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin-mocha",
      },
    },
    {
      "catppuccin/nvim",
      priority = 1000,
      opts = {
        flavor = "mocha",
        transparent_background = true,
      },
    },
  },
}

return colorschemes.onedark
