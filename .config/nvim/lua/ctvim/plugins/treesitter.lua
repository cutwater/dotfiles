-- References:
--   1. https://mhpark.me/posts/update-treesitter-main/

return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ":TSUpdate",
  config = function ()
    local ts = require("nvim-treesitter")
    local parsers = {
      'bash',
      'go',
      'hcl',
      'json',
      'lua',
      'markdown',
      'python',
      'rust',
      'toml',
      'yaml',
    }

    ts.install(parsers)
  end
}
