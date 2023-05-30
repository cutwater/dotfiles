local header = {
    [[ ________ _________        ___      ___ ___  _____ ______      ]],
    [[|\   ____\\___   ___\     |\  \    /  /|\  \|\   _ \  _   \    ]],
    [[\ \  \___\|___ \  \_|     \ \  \  /  / | \  \ \  \\\__\ \  \   ]],
    [[ \ \  \       \ \  \       \ \  \/  / / \ \  \ \  \\|__| \  \  ]],
    [[  \ \  \____   \ \  \       \ \    / /   \ \  \ \  \    \ \  \ ]],
    [[   \ \_______\  \ \__\       \ \__/ /     \ \__\ \__\    \ \__\]],
    [[    \|_______|   \|__|        \|__|/       \|__|\|__|     \|__|]],
}

local function setup()
    local theme = require('alpha/themes/dashboard')
    theme.section.header.val = header

    local button = theme.button
    theme.section.buttons.val = {
        button("e", "  New file", "<cmd>ene <CR>"),
        button("<leader> f f", "󰈞  Find file"),
        button("<leader> f g", "󰈬  Find word"),
    }
    require('alpha').setup(theme.config)

end

return {
    setup = setup
}
