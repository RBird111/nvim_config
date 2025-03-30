-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

-- Add any additional autocmds here with `vim.api.nvim_create_autocmd`
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd({ "BufLeave", "FocusLost" }, {
  pattern = "*",
  command = "silent! wall",
  desc = "Save buffers on focus loss.",
})

local usercmd = vim.api.nvim_create_user_command

local function doc(cmd)
  local r = vim.system(cmd, { text = true, timeout = 1000 }):wait()
  vim.cmd([[vertical new<CR>]])

  -- Just set the file to a new name
  vim.cmd.file({ "man://" .. cmd[#cmd], mods = { silent = true } })
  vim.api.nvim_buf_set_lines(0, 0, -1, false, vim.split(r.stdout, "\n"))
  vim.cmd("1") -- moves cursor to first line

  vim.cmd([[Man!]])

  vim.bo.buftype = "nofile"
  vim.bo.bufhidden = "unload"
  vim.bo.modified = false
end

usercmd("Godoc", function(params)
  doc({ "go", "doc", "-all", params.args })
end, { nargs = 1 })

usercmd("Perldoc", function(params)
  doc({ "perldoc", params.args })
end, { nargs = 1 })
