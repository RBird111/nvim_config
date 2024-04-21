local M = {}

M.send = require("nvterm.terminal").send

M.custom_cmd = nil

M.clear_custom_cmd = function()
  M.custom_cmd = nil
end

M.set_custom_cmd = function(input)
  M.custom_cmd = input
  M.send(M.custom_cmd, "vertical")
end

-- run script
function M.run_script()
  -- save file
  vim.cmd.write()

  if M.custom_cmd then
    M.send(M.custom_cmd, "vertical")
    return
  end

  local extension = vim.fn.expand("%:e")

  local run_cmds = {
    py = "python3 " .. vim.fn.expand("%"),
    js = "bun " .. vim.fn.expand("%"),
    ts = "bun " .. vim.fn.expand("%"),
    rs = "cargo run",
    ex = "elixir " .. vim.fn.expand("%"),
    exs = "elixir " .. vim.fn.expand("%"),
    gleam = "gleam run",
    go = M.go_cmd(),
    pl = "perl " .. vim.fn.expand("%"),
    pm = "perl " .. vim.fn.expand("%"),
  }

  local cmd = run_cmds[extension]
  if cmd == nil then
    vim.ui.input({ prompt = "Enter command: " }, M.set_custom_cmd)
    return
  end

  M.send(cmd, "vertical")
end

function M.run_test()
  -- save file
  vim.cmd.write()

  local extension = vim.fn.expand("%:e")

  local test_cmds = {
    py = "pytest",
    js = "node " .. vim.fn.expand("%"),
    ts = "node " .. vim.fn.expand("%"),
    rs = "cargo test -- --include-ignored",
    ex = "mix test --include pending",
    exs = "mix test --include pending",
    go = "go test -v --bench . --benchmem",
    pm = "prove",
  }

  M.send(test_cmds[extension], "vertical")
end

function M.go_cmd()
  local directory = vim.fn.expand("%:p:h")
  local contents = vim.split(vim.fn.glob(directory .. "/**"), "\n", { trimempty = true })

  for _, item in pairs(contents) do
    local i = string.find(item, "main.go")
    if i ~= nil then
      return "go run " .. item
    end
  end

  return nil
end

return M
