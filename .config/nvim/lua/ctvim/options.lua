local options = {
    opt = {
        -- Indentation
        expandtab = true,
        smartindent = true,
        shiftwidth = 4,
        tabstop = 4,
        softtabstop = 4,

        -- Line numbers
        number = true,

        -- Misc
        mouse = 'a',
        
        termguicolors = true,
    
        timeoutlen = 500 -- Timeout before whichkey opens
    },
    g = {
        -- Disable netrw (replace with nvim-tree)
        loaded_netrw = 1,
        loaded_netrwPlugin = 1,
    },
    t = {

    },
}

local function setup()
    for scope, table in pairs(options) do
        for setting, value in pairs(table) do
            vim[scope][setting] = value
        end
    end
end

return {
    setup = setup
}
