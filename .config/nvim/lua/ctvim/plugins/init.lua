return {
  -- Gruvbox theme
  {
    'gruvbox-community/gruvbox',
    config = function()
      vim.cmd('colorscheme gruvbox')
    end
  },
  -- Keymap helper
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        { '<leader>b', group = 'Buffers' },
        { '<leader>f', group = 'Find' },
        { '<leader>g', group = 'Git' },
      },
    },
  },
  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.1.9',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- File explorer
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      disable_netrw = true,
      view = { width = 40 },
    },
  },
  -- Lualine
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
  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        themable = true,
        offsets = {
          { filetype = "NvimTree", highlight = "NvimTreeNormal" },
        },
      },
    },
  },
}
