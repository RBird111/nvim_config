local M = {}

M.send = require("nvterm.terminal").send

-- run script
function M.run_script()
  -- save file
  vim.cmd.write()

  local extension = vim.fn.expand("%:e")
  local cmd_pre = "cd " .. vim.fn.expand("%:p:h") .. " && "

  local run_cmds = {
    py = "python3 " .. vim.fn.expand("%"),
    js = "bun " .. vim.fn.expand("%"),
    ts = "bun " .. vim.fn.expand("%"),
    rs = "cargo run",
    ex = "elixir " .. vim.fn.expand("%"),
    exs = "elixir " .. vim.fn.expand("%"),
    go = M.go_cmd(),
  }

  M.send(cmd_pre .. run_cmds[extension], "vertical")
end

function M.run_test()
  -- save file
  vim.cmd.write()

  local extension = vim.fn.expand("%:e")
  local cmd_pre = "cd " .. vim.fn.expand("%:p:h") .. " && "

  local test_cmds = {
    py = "pytest",
    js = "node " .. vim.fn.expand("%"),
    ts = "node " .. vim.fn.expand("%"),
    rs = "cargo test -- --include-ignored",
    ex = "mix test --include pending",
    exs = "mix test --include pending",
    go = "go test -v --bench . --benchmem",
  }

  M.send(cmd_pre .. test_cmds[extension], "vertical")
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

  return "echo 'main function not found'"
end

return M
