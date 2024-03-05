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

-- save/quit
map({ "n" }, "<C-q>", ":wqa<CR>", { silent = true })

-- comment
map({ "n", "v" }, "<leader>/", "gc", { silent = true, remap = true })
map({ "n" }, "<leader>/", "gcc", { silent = true, remap = true })

-- run script (work in progress)
map({ "n" }, "<leader>rs", require("config.terminal").run_script, { silent = true, desc = "Run script" })
-- run test
map({ "n" }, "<leader>rt", require("config.terminal").run_test, { silent = true, desc = "Run test" })
