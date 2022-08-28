local M = {}

local plugins = {
  { "wbthomason/packer.nvim" },
  -- Theme
  {
    "gruvbox-community/gruvbox",
    config = function()
      vim.cmd 'colorscheme gruvbox'
    end
  },
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
