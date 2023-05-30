local plugins = {
    { 'wbthomason/packer.nvim' },

    -- Theme
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
        end
    },
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    },
    {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('ctvim/plugins/alpha').setup()
        end
    },
    {   
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
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
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('ctvim/plugins/nvim-tree').setup()
        end,

    },
}

local function setup()
    local packer = require('packer')
    packer.startup(function(use)
        for _, plugin in ipairs(plugins) do
            use(plugin)
        end
    end)
end

return {
    setup = setup
}
