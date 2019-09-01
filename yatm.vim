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
Plug 'reedes/vim-litecorrect'

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
Plug 'reedes/vim-colors-pencil'

"User interface
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'dbeecham/ctrlp-commandpalette.vim', { 'on': 'CtrlP' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }



call plug#end()
