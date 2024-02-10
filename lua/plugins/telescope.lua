return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>.", require("lazyvim.util").telescope("live_grep"), desc = "Grep (root dir)" },
  },
}
