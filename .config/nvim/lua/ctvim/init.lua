local function setup()
    require('ctvim/bootstrap').setup()
    require('ctvim/options').setup()
    require('ctvim/autocmd').setup()
    require('ctvim/plugins').setup()
    require('ctvim/keymap').setup()
end

return {
  setup = setup
}
