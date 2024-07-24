if vim.g.vscode then
  -- VSCode
  vim.o.clipboard = "unnamedplus"
else
  require("config.setup")
end
