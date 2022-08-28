local M = {}

local plugins = {
  { "wbthomason/packer.nvim" },
}

function M.setup()
  packer = require("packer")
  packer.startup(plugins)
end

return M
