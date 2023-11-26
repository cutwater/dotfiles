local config = {
    options = {
        theme = 'gruvbox_dark',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    },
}

local function setup()
    require('lualine').setup(config)
end

return {
    setup = setup,
}
