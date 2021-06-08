set mouse=a

set guifont=SauceCodePro\ Nerd\ Font:h10

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

map  <silent>  <S-Insert>  "+p
imap <silent>  <S-Insert>  <Esc>"+pa
