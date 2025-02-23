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
        })
        require("onedark").load()
      end,
    },
  },
  kanagawa = {
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "kanagawa-wave",
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
          overrides = function(colors)
            local theme = colors.theme
            return {
              -- NormalFloat = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
              NormalFloat = { bg = "none" },
              FloatBorder = { bg = "none" },
              FloatTitle = { bg = "none" },

              -- Save an hlgroup with dark background and dimmed foreground
              -- so that you can use it where you still want darker windows.
              -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
              NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

              -- Popular plugins that open floats will link to NormalFloat by default;
              -- set their background accordingly if you wish to keep them dark and borderless
              -- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
              -- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            }
          end,
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
      "catppuccin",
      priority = 1000,
      opts = {
        flavor = "mocha",
        transparent_background = true,
      },
    },
  },
}

return colorschemes.kanagawa
