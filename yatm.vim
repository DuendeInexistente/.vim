" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Nerdtree
Plug 'scrooloose/nerdtree',  { 'on':  'NERDTreeToggle' }

" Gramatical correctness. 
Plug 'ntnn/vim-diction'
Plug 'reedes/vim-textobj-quote'
Plug 'kana/vim-textobj-user'

" Clipboard. Always autoload.
Plug 'svermeulen/vim-easyclip'
Plug 'NLKNguyen/copy-cut-paste.vim'


" Fancy searching
Plug 'mhinz/vim-grepper', { 'on': 'Grepper' }

"Json. Do I actually need this?
" Plug 'tpope/vim-jdaddy' { 'on': 'aj','gqaj','gwaj' }

" Themes
" Plug 'noah/vim256-color'
Plug 'zefei/vim-colortuner', { 'on': 'Colortuner' }
Plug 'flazz/vim-colorschemes'
Plug 'rainglow/vim'
Plug 'vim-scripts/fu'

"User interface
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'dbeecham/ctrlp-commandpalette.vim', { 'on': 'CtrlP' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Why do I do this to myself
"Plug 'aurieh/discord.nvim'

" NVim-Ghost. For text areas
" Plug 'raghur/vim-ghost', { 'do': ':GhostInstall' }
"Plug 'falstro/ghost-text-vim'
Plug 'pandysong/ghost-text.vim'

Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

call plug#end()
