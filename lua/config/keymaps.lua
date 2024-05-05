-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
-- local Util = require("lazyvim.util")
local map = vim.keymap.set

-- better up/down
map({ "n" }, "<C-d>", "<C-d>zz", { silent = true })
map({ "n" }, "<C-u>", "<C-u>zz", { silent = true })
map({ "n" }, "G", "Gzz", { silent = true })

-- comment
map({ "n", "v" }, "<leader>/", "gc", { silent = true, remap = true })
map({ "n" }, "<leader>/", "gcc", { silent = true, remap = true })

-- clear search
map({ "n" }, "<ESC><ESC>", ":noh<CR>", { silent = true })

-- hover action
map({ "n" }, "gh", function()
  vim.lsp.buf.hover()
end, { silent = true })

-- run script (work in progress)
map({ "n" }, "<leader>rs", require("config.terminal").run_script, { silent = true, desc = "Run script" })
-- run test
map({ "n" }, "<leader>rt", require("config.terminal").run_test, { silent = true, desc = "Run test" })
-- run clear script
map(
  { "n" },
  "<leader>rc",
  require("config.terminal").clear_custom_cmd,
  { silent = true, desc = "Clear custom command" }
)
