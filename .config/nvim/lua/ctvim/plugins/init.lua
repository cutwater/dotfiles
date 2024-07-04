return {
    {
        'gruvbox-community/gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
            }
        },
    },
    {
        "akinsho/bufferline.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            vim.opt.showtabline = 2
            require("bufferline").setup()
        end,
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            disable_netrw = true,
            view = { width = 40 },
        },
        config = function(_, opts)
            require('nvim-tree').setup(opts)
        end,
    },
    {
        'folke/which-key.nvim',
        keys = { '<leader>', },
        cmd = 'WhichKey',
        opts = {},
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        config = function(_, opts)
            local wk = require('which-key')
            wk.setup(opts)
            wk.register({
                b = { name = 'Buffers' },
                f = { name = 'Find' },
                g = { name = 'Git' },
            }, { prefix="<leader>" })
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    'bash',
                    'lua',
                    'python',
                    'rust',
                },
                ignore_install = { 'all' },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
    end
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local header = {
                [[ ________ _________        ___      ___ ___  _____ ______      ]],
                [[|\   ____\\___   ___\     |\  \    /  /|\  \|\   _ \  _   \    ]],
                [[\ \  \___\|___ \  \_|     \ \  \  /  / | \  \ \  \\\__\ \  \   ]],
                [[ \ \  \       \ \  \       \ \  \/  / / \ \  \ \  \\|__| \  \  ]],
                [[  \ \  \____   \ \  \       \ \    / /   \ \  \ \  \    \ \  \ ]],
                [[   \ \_______\  \ \__\       \ \__/ /     \ \__\ \__\    \ \__\]],
                [[    \|_______|   \|__|        \|__|/       \|__|\|__|     \|__|]],
            }
            local theme = require('alpha/themes/dashboard')
            theme.section.header.val = header

            local button = theme.button
            theme.section.buttons.val = {
                button("n", "  New file", "<cmd>ene<CR>"),
                button("<leader> f f", "󰈞  Find file"),
                button("<leader> f w", "󰈬  Find text"),
            }
            require('alpha').setup(theme.config)
        end,
    },
}
