local M = {}

local mappings = {
  f = {
    name = "File",
    e = { "<cmd>NvimTreeToggle<CR>", "File Tree" },

    f = { "<cmd>Telescope find_files<CR>", "Find Files" },
    g = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
    b = { "<cmd>Telescope buffers<CR>", "Buffers" },
    n = { "<cmd>Telescope help_tags<CR>", "Help tags" },
  },
}

local opts = {
  prefix = "<leader>",
}

function M.setup()
  local wk = require("which-key")
  wk.register(mappings, opts)
end

return M
