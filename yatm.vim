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


"git? 
Plug 'tpope/vim-fugitive'



"User interface
Plug 'mhinz/vim-startify'
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'farmergreg/vim-lastplace'

""""" Status bars
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'liuchengxu/eleline.vim'
" Plug 'zefei/vim-wintabs'
" Plug 'zefei/vim-wintabs-powerline'
""""Airline settings
let g:airline_powerline_fonts = 1 
let g:airline_detect_paste = 1
let g:airline_skip_empty_sections = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_detect_whitespace = 0
let g:airline_section_warning=' '

"""""" Status bar addons
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

"CtrlP stuff
Plug 'ctrlpvim/ctrlp.vim', { 'on': ['CtrlP', 'CntrlPCommandPalette', 'CtrlPMpc', 'CtrlPFunky', 'CtrlPCmdline','CtrlPMenu',:'CtrlPYankring' ] }
Plug 'tacahiroy/ctrlp-funky', { 'on': 'CtrlPFunky' }
Plug 'sgur/ctrlp-extensions.vim', { 'on': ['CtrlPCmdline','CtrlPMenu','CtrlPYankring'] }
Plug 'dbeecham/ctrlp-commandpalette.vim', { 'on': ['CtrlP', 'CntrlPCommandPalette'] }
Plug 'lucidstack/ctrlp-mpc.vim', { 'on': 'CtrlPMpc'}
let g:ctrlp_mpc_cmd = 'mpc --port 8050'




" Always has to load last to apply icons to everything else
Plug 'ryanoasis/vim-devicons'
call plug#end()
