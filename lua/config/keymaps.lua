-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
local Util = require("lazyvim.util")
local map = vim.keymap.set

-- better up/down
map({ "n" }, "<C-d>", "<C-d>zz", { silent = true })
map({ "n" }, "<C-u>", "<C-u>zz", { silent = true })
