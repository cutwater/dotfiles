-- Set leader bindings
vim.g.mapleader = "\\"

-- Install lazy.nvim if not installed already
require('ctvim/lazy')

require('lazy').setup({
    spec = {
        { import = 'ctvim/plugins' },
    },
    rocks = {
        enabled = false,
    },
})

require('ctvim/options')
require('ctvim/mappings')
