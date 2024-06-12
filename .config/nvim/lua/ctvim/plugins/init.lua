local opts = {
    install = {
        missing = false,
    }
}

local plugins = {
    -- -- Themes
    {
        'gruvbox-community/gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    },
    {
        'folke/which-key.nvim',
        config = function()
            require('ctvim/plugins/which-key').setup()
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    -- Starting page greeting window
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('ctvim/plugins/alpha').setup()
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('ctvim/plugins/lualine').setup()
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
        config = function()
            require('ctvim/plugins/treesitter').setup()
        end,
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('ctvim/plugins/nvim-tree').setup()
        end,
    },
}

local function setup()
    local lazy = require('lazy')

    lazy.setup(plugins, opts)
end

return {
    setup = setup
}
