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

o.showtabline = 2

-- Providers
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0
