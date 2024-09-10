local colorschemes = {
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
            ["@string.escape"] = { fg = "$orange" },
            ["@string.special.perl"] = { fg = "$orange" },
            ["@lsp.type.variable.perl"] = { fg = "$red" },
            ["@lsp.type.variable.rust"] = { fg = "$red" },
            ["@lsp.type.property"] = { fg = "$cyan" },
          },
        })
        require("onedark").load()
      end,
    },
  },
  kanagawa = {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "kanagawa",
      },
    },
    {
      "rebelot/kanagawa.nvim",
      priority = 1000,
      config = function()
        require("kanagawa").setup({
          -- wave, dragon, lotus
          theme = "wave",
          transparent = true,
          colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
        })
        require("kanagawa").load()
      end,
    },
  },
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

return colorschemes.kanagawa
