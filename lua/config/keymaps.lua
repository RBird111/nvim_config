-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
-- local Util = require("lazyvim.util")
local map = vim.keymap.set

-- better up/down
map({ "n" }, "<C-d>", "<C-d>zz", { silent = true })
map({ "n" }, "<C-u>", "<C-u>zz", { silent = true })

map({ "n" }, "<leader>rs", function()
    local extension = vim.fn.expand "%:e"

    local ft_cmds = {
        py = "py " .. vim.fn.expand "%",
        js = "node " .. vim.fn.expand "%",
        ts = "node " .. vim.fn.expand "%",
        rs = "cargo run",
        ex = "elixir " .. vim.fn.expand "%",
        exs = "elixir " .. vim.fn.expand "%",
        go = "go run .",
    }

    require("config.terminal").send(ft_cmds[extension])
end, { desc = "Run script" })
