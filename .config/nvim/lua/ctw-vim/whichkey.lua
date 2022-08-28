local M = {}

local config = {}

local opts = {
  -- prefix = "<leader>",
}

function M.setup()
  local wk = require("which-key")
  wk.setup(config)
  wk.register(
    {
      ["fe"] = { "<cmd>NvimTreeToggle<CR>", "Toggle File Tree" },
      ["ff"] = { "<cmd>NvimTreeFocus<CR>", "Focus on File Tree" },
    }, 
    { prefix = "<leader>" }
  )
end

return M
