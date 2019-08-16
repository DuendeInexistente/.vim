fu! SaveSess()
    execute 'mksession! ' . getcwd() . 'Session.vim'
endfunction

fu! RestoreSess()
if filereadable(getcwd() . 'Session.vim')
    execute 'so ' . getcwd() . 'Session.vim'
    if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
                exec 'sbuffer ' . l
            endif
        endfor
    endif
endif
endfunction

if filereadable(getcwd() . 'Session.vim')
     autocmd VimLeave * call SaveSess()
     autocmd VimEnter * nested call RestoreSess()
endif
