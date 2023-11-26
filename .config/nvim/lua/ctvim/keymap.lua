local function setup_telescope()
    local status_ok, telescope = pcall(require, 'telescope.builtin')
    if not status_ok then
        return
    end

    -- Git
    vim.keymap.set('n', '<C-p>', telescope.git_files, { desc = "Git files" })

    -- Buffers
    vim.keymap.set('n', '<leader>bf', telescope.buffers, { desc = "Find" })

    -- Search
    vim.keymap.set('n', '<leader>sf', telescope.find_files, { desc = "Find File" })
    vim.keymap.set('n', '<leader>st', telescope.live_grep, { desc = "Text" })
    vim.keymap.set('n', '<leader>sh', telescope.help_tags, { desc = "Help tags" })
end

local function setup_nvim_tree()
    if not pcall(require, 'nvim-tree') then
        return
    end

    vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = "Explorer" })
end

local function setup()
    setup_telescope()
    setup_nvim_tree()
end

return {
    setup = setup
}
