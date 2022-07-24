set mouse=a

if has('macunix')
    set guifont=FiraCode\ Nerd\ Font:h12:w57
else
    "set guifont=SauceCodePro\ Nerd\ Font:h10
    set guifont=Source\ Code\ Pro:h10
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

map  <silent>  <S-Insert>  "+p
imap <silent>  <S-Insert>  <Esc>"+pa
