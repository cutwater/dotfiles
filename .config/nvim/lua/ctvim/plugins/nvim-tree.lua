local opts = {
    view = {
        width = 40,
    },
}

local function setup()
    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Enable highlight groups
    vim.opt.termguicolors = true

    require('nvim-tree').setup(opts)    
end

return {
    setup = setup
}
