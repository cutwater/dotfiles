return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 'bash', 'lua', 'python' },
      ignore_install = { 'all' },
      sync_install = false,
      indent = { enable = true },
      highlight = { enable = true },
    })
  end
}
