local opt = vim.opt
local o = vim.o
local g = vim.g

-- Indentation
o.expandtab = true
o.smartindent = true
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

o.list = true
o.showbreak = '↪ '
opt.listchars = { tab = '→ ', trail = '•', extends = '⟩', precedes = '⟨', nbsp = '␣' }

o.number = true

o.mouse = 'a'

o.termguicolors = true

-- Providers
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0
