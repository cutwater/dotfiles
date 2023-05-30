local function setup()
    local telescope = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', telescope.git_files, { desc = "Git files" })
    vim.keymap.set('n', '<leader>ff', telescope.find_files, { desc = "Find file" })
    vim.keymap.set('n', '<leader>fg', telescope.live_grep, { desc = "Live grep" })
    vim.keymap.set('n', '<leader>fb', telescope.buffers, { desc = "Buffers" })
    vim.keymap.set('n', '<leader>fh', telescope.help_tags, { desc = "Help tags" })
    vim.keymap.set('n', '<leader>fe', '<cmd>NvimTreeToggle<cr>', { desc = "File explorer" })
end

return {
    setup = setup
}
