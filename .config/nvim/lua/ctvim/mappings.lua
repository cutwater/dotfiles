local map = vim.keymap.set

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Files' })
map('n', '<leader>fg', '<cmd>Telescope find_files<cr>', { desc = 'Grep' })
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Buffers' })
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })

-- Nvim tree
map('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = 'File tree: Toggle' })
map('n', '<leader>o', '<cmd>NvimTreeFocus<cr>', { desc = 'File tree: Focus' })
