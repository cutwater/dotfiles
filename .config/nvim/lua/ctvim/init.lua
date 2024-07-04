require('ctvim/lazy')

-- Set leader bindings
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require('lazy').setup({
    spec = {
        { import = 'ctvim/plugins' },
    },
})

require('ctvim/options')
require('ctvim/mappings')
