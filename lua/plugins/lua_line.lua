if true then
  return {}
end

local auto_theme_custom = require("lualine.themes.auto")
auto_theme_custom.normal.c.bg = "None"

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = auto_theme_custom,
    },
  },
}
