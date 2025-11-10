return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local header = {
      [[ ________ _________        ___      ___ ___  _____ ______      ]],
      [[|\   ____\\___   ___\     |\  \    /  /|\  \|\   _ \  _   \    ]],
      [[\ \  \___\|___ \  \_|     \ \  \  /  / | \  \ \  \\\__\ \  \   ]],
      [[ \ \  \       \ \  \       \ \  \/  / / \ \  \ \  \\|__| \  \  ]],
      [[  \ \  \____   \ \  \       \ \    / /   \ \  \ \  \    \ \  \ ]],
      [[   \ \_______\  \ \__\       \ \__/ /     \ \__\ \__\    \ \__\]],
      [[    \|_______|   \|__|        \|__|/       \|__|\|__|     \|__|]],
    }
    local theme = require('alpha/themes/dashboard')
    theme.section.header.val = header
  
    local button = theme.button
    theme.section.buttons.val = {
      button("n", "  New file", "<cmd>ene<CR>"),
      button("<leader> f f", "󰈞  Find file"),
      button("<leader> f g", "󰈬  Live grep"),
    }
    require('alpha').setup(theme.config)
  end,
}
