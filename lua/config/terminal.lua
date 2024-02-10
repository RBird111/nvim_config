local go = function()
  local s = vim.fn.globpath(".", "*")
  if string.find(s, "./main") then
    return "go run main/main.go"
  end
  return "go run ."
end

local ft_cmds = {
  py = "py " .. vim.fn.expand("%"),
  js = "node " .. vim.fn.expand("%"),
  ts = "node " .. vim.fn.expand("%"),
  rs = "cargo run",
  ex = "elixir " .. vim.fn.expand("%"),
  exs = "elixir " .. vim.fn.expand("%"),
  go = go(),
}

local M = {}

-- run script
function M.run_script()
  vim.cmd.write()

  local extension = vim.fn.expand("%:e")

  -- horizontal|vertical|float
  require("nvterm.terminal").send(ft_cmds[extension], "vertical")
end

return M
