local g = vim.g
local o = vim.o
local opt = vim.opt

g.mapleader = "\\"

-- Indentation
o.expandtab = true
o.smartindent = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

o.number = true
o.relativenumber = true

o.showtabline = 2

o.list = true
opt.listchars = { tab = "→ ", trail = "·", nbsp = "␣" }

-- Providers
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

-- Trim trailing whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    local pos = vim.api.nvim_win_get_cursor(0)
    vim.cmd([[%s/\s\+$//e]])
    vim.api.nvim_win_set_cursor(0, pos)
  end,
})
