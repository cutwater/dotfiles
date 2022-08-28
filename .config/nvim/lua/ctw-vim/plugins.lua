local M = {}

local plugins = {
  { "wbthomason/packer.nvim" },
  -- Theme
  {
    "gruvbox-community/gruvbox",
    config = function()
      vim.cmd "colorscheme gruvbox"
    end,
  },
  {
    "folke/which-key.nvim",
    config = require("ctw-vim.whichkey").setup,
  },
  {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup()
    end,
  },
  {
    "kyazdani42/nvim-tree.lua",
    requires = { "kyazdani42/nvim-web-devicons" },
    tag = "nightly",
    config = function()
      require("nvim-tree").setup()
    end,
  },
}

function M.setup()
  local packer = require("packer")
  packer.startup(function(use)
    for _, plugin in pairs(plugins) do
      use(plugin)
    end
  end)
end

return M
