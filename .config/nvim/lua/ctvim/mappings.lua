local map = vim.keymap.set

-- nvim tree
map('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = 'Toggle file tree' })
map('n', '<leader>o', '<cmd>NvimTreeFocus<cr>', { desc = 'Focus file tree' })

-- telescope
map('n', '<leader>bb', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Previous buffer' })
map('n', '<leader>bn', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer' })
map('n', '<leader>bf', '<cmd>Telescope buffers<cr>', { desc = 'Find buffer' })

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find file' })
map('n', '<leader>fw', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })

map('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', { desc = 'Git branches' })
map('n', '<leader>gc', '<cmd>Telescope git_commits<cr>', { desc = 'Git commits (repository)' })
map('n', '<leader>gC', '<cmd>Telescope git_bcommits<cr>', { desc = 'Git commits (current file)' })
map('n', '<leader>gt', '<cmd>Telescope git_status<cr>', { desc = 'Git status' })
