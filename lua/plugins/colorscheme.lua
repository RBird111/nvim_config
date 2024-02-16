return {
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      -- Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      style = "cool",
      transparent = true,
      lualine = {
        transparent = true, -- lualine center bar transparency
      },
    })
    require("onedark").load()
  end,
}
