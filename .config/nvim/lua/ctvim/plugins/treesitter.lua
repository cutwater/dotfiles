return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function ()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 'bash', 'go', 'hcl', 'json', 'lua', 'markdown', 'python', 'rust', 'toml', 'yaml' },
      ignore_install = { 'all' },
      sync_install = false,
      indent = { enable = true },
      highlight = { enable = true },
    })
  end
}
