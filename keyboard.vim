"""""""""""""""""""""""""""""""
"Commands""""""""""""""""""""""
"""""""""""""""""""""""""""""""

" CDC = Change to Directory of Current file
	command! CDC cd %:p:h
" charcount:
	command! Charcount !wc -m %

"""""""""""""""""""""""""""""""
"Keybindings"""""""""""""""""""
"""""""""""""""""""""""""""""""


"Easy movement
map j gj
map k gk
map <up> gk
map <down> gj
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk
set backspace=indent,eol,start

"Tab movement
" nnoremap <C-Left> :tabprev
" map! <C-Left> :tabprev
" imap! <C-Left> <ESC>:tabprev
" inoremap <C-Left> :tabprev
" vnoremap <C-Left> :tabprev

"Make JJ act the same as Esc
imap jj <Esc>

"Prevent question mark spam
"imap ¿¿¿¿¿¿ ¿
imap nyn ñ
imap NYN Ñ

 "Move between buffers
noremap <f3> :bprev<CR>
noremap <f4> :bnext<CR>

"Save with CTRL+S
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i


"Move between buffers with ALT+arrows
nnoremap <A-Left> <C-w>h
nnoremap <A-Up> <C-w>k
nnoremap <A-Down> <C-w>j
nnoremap <A-Right> <C-w>l

"Select all
nnoremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG

let mapleader=","

"Text-mode menu
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F2> :emenu <C-Z>

"Fancy characters
inoremap ... …
inoremap -- —
inoremap --- ---
inoremap -.-.- ------------------------------

"CtrlPPalette
"map <C-p> :CtrlPCommandPalette
"
"
nnoremap <leader>my :call Spellfloat() <CR>


nmap <F8> :TagbarToggle<CR>

