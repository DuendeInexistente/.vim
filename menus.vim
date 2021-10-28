"Contect menu. Press K to use.
let g:context_menu_k = [
        \ ["Cu&t \t\\QX", 'exec feedkeys("QX")',"Use keybinding to copy selections." ],
        \ ["&Copy \t\\QC", 'exec feedkeys("QC")',"Use keybinding to copy selections."],
        \ ['-'],
        \ ["&Paste \t\\QV", 'exec feedkeys("QX")',"Use keybinding to copy selections." ],
        \ ['-'],
        \ ["&Limelight!!", "Limelight!!",":Limelight!!"],
        \ ['-'],
        \ ["Nnn&picker", "Nnnpicker",":Nnnpicker"],
        \ ["Nnn&explorer", "NnnExplorer",":NnnExplorer"],
	\ ['-'],
	\ ["Undo\t\\U", "undo"],
	\ ["Redo\t\\<C-t>", "redo","<C- means control."],
	\ ["Undo Tree", "UndotreeToggle",":UndotreeToggle"],
        \ ]

nnoremap <silent>K :call quickui#tools#clever_context('k', g:context_menu_k, {})<cr>

" enable to display tips in the cmdline
let g:quickui_show_tip = 1
call quickui#menu#reset()


call quickui#menu#install("&Config files", [
        \ ["&vimrc", "e ~/.vim/vimrc","Vim config file"],
        \ ["i&nit.nvim","e ~/.vim/nvim/init.vim", "NVim config file"],
			\ [ "--", ],
        \ ["&Keybindings", "e ~/.vim/keyboard.vim"],
        \ ["&Menus", "e ~/.vim/menus.vim"],
        \ ["&Plugin file", "e ~/.vim/yatm.vim"],
			\ ])



" hit space twice to open menu
noremap <space><space> :call quickui#menu#open()<cr>


echo "Press K for context menu."
