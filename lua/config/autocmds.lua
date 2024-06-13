-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- autocmd("ExitPre", {
--   group = vim.api.nvim_create_augroup("Exit", { clear = true }),
--   command = "set guicursor=a:ver90",
--   desc = "Set cursor back to beam when leaving Neovim.",
-- })

autocmd({ "BufLeave", "FocusLost" }, {
  pattern = "*",
  command = "silent! wall",
  desc = "Save buffers on focus loss.",
})
