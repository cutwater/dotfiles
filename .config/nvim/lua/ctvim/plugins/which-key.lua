local opts = {
    mode = "n",
    prefix = "<leader>",
}

local mappings = {
   b = { name = "Buffers" },
   f = { name = "Find" },
   s = { name = "Search" },
}

local function setup()
    local which_key = require('which-key')
    which_key.setup()
    which_key.register(mappings, opts)
end

return {
    setup = setup,
}
