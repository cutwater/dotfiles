local function on_attach(bufnr)
    local api = require('nvim-tree.api')

    local function opt(desc)
        return {
            desc = 'nvim-tree: ' .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true,
        }
    end

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set('n', '?', api.tree.toggle_help, opt('Help'))
end

local function setup()
    local opts = {
        view = {
            width = 40,
        },
        on_attach = on_attach,
    }

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
