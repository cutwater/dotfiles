local M = {}

local plugins = {
  { "wbthomason/packer.nvim" },
  -- Theme
  {
    "gruvbox-community/gruvbox",
    config = function()
      vim.cmd 'colorscheme gruvbox'
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup()
    end,
  }
}

function M.setup()
  packer = require("packer")
  packer.startup(function(use)
    for _, plugin in pairs(plugins) do
      use(plugin)
    end
  end)
end

return M
