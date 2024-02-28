local M = {}

-- run script
function M.run_script()
  vim.cmd.write()

  local extension = vim.fn.expand("%:e")

  local ft_cmds = {
    py = "python3 " .. vim.fn.expand("%"),
    js = "bun " .. vim.fn.expand("%"),
    ts = "bun " .. vim.fn.expand("%"),
    rs = "cargo run",
    ex = "elixir " .. vim.fn.expand("%"),
    exs = "elixir " .. vim.fn.expand("%"),
    go = "go run .",
  }

  -- horizontal|vertical|float
  require("nvterm.terminal").send(ft_cmds[extension], "vertical")
end

function M.run_test()
  vim.cmd.write()

  local extension = vim.fn.expand("%:e")

  local ft_cmds = {
    py = "pytest",
    js = "node " .. vim.fn.expand("%"),
    ts = "node " .. vim.fn.expand("%"),
    rs = "cargo test -- --include-ignored",
    ex = "mix test --include pending",
    exs = "mix test --include pending",
    go = "go test -v --bench . --benchmem",
  }

  -- horizontal|vertical|float
  require("nvterm.terminal").send(ft_cmds[extension], "vertical")
end

return M
