if !exists("autocommands_loaded")
    let autocommands_loaded = 1

    autocmd BufNewFile *.h call InitHeader()
    autocmd BufNewFile *.hpp call InitHeader()

    "autocmd BufNewFile *.c InitCSource()
    "autocmd BufNewFile *.cpp InitCSource()

endif

function! InitHeader()
    call InsertFileName()
endfunction

function! InsertFileName()
    " Convert filename.h to _FILENAME_H_
    let fname = expand("%:t")
    let fname = toupper(fname)
    let fname = substitute(fname, "\\.", "_", "g")

    exe "normal A#ifndef _" . fname . "_\n"
    exe "normal A#define _" . fname . "_\n\n"
    exe "normal A#endif // _" . fname . "_\n"

endfunction
