"Contect menu. Press K to use.
let g:context_menu_k = [
        \ ["Cu&t \t\\QX", 'exec feedkeys("QX")' ],
        \ ["&Copy \t\\QC", 'exec feedkeys("QC")' ],
        \ ['-'],
        \ ["&Paste \t\\QV", 'exec feedkeys("QX")' ],
        \ ['-'],
        \ ['(Use keybinding to'],
        \ ['copy selections.)'],
        \ ]

nnoremap <silent>K :call quickui#tools#clever_context('k', g:context_menu_k, {})<cr>


" enable to display tips in the cmdline
"let g:quickui_show_tip = 1


echo "Press K for context menu."