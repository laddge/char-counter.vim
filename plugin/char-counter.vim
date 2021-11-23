augroup CharCounter
    autocmd!
    autocmd BufNew,BufEnter,BufWrite,TextChanged,TextChangedI * call <SID>Count()
augroup END

function! s:Count()
    let l:count = 0
    for l:linenum in range(0, line('$'))
        let l:line = getline(l:linenum)
        let l:count += strlen(substitute(l:line, ".", "x", "g"))
    endfor
    let b:charCount = l:count
endfunction
