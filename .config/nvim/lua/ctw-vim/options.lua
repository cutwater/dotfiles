local M = {}

M.setup = function()
  -- Indentation
  vim.o.expandtab = true
  vim.o.smartindent = true
  vim.o.shiftwidth = 4
  vim.o.tabstop = 4
  vim.o.softtabstop = 4

  -- Row numbers
  vim.o.number = true

  vim.o.mouse = "a"
end

return M

