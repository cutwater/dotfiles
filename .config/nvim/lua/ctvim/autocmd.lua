local autocmd = vim.api.nvim_create_autocmd

local function setup()
    autocmd('FileType', {
        pattern = { 'yaml' },
        command = 'setlocal indentkeys-=0#'
    })
end

return {
    setup = setup
}
