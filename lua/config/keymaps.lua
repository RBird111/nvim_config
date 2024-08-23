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

-- smart-splits
-- map({ "n" }, "<C-h>", require("smart-splits").move_cursor_left)
-- map({ "n" }, "<C-j>", require("smart-splits").move_cursor_down)
-- map({ "n" }, "<C-k>", require("smart-splits").move_cursor_up)
-- map({ "n" }, "<C-l>", require("smart-splits").move_cursor_right)

-- clear extra EOL character
map({ "n" }, ",m", function()
  vim.cmd(":%s/\r//g")
end, { silent = true })

-- hover action
map({ "n" }, "gh", function()
  vim.lsp.buf.hover()
end, { silent = true })
