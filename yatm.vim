" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


"Lua
" Plug 'davisdude/vim-love-docs', { 'branch': 'build' }

" Make sure you use single quotes

" Nerdtree
Plug 'scrooloose/nerdtree',  { 'on':  'NERDTreeToggle' }

" Gramatical correctness.
" Plug 'ntnn/vim-diction'

 Plug 'reedes/vim-textobj-quote'
 Plug 'kana/vim-textobj-user'
" Plug 'reedes/vim-litecorrect'
" Plug 'rhysd/vim-grammarous', { 'on': 'GrammarousCheck' }
" Plug 'mboughaba/vim-lessmess'

"
" Plug 'sheerun/vim-polyglot'

" Clipboard. Always autoload.
Plug 'svermeulen/vim-easyclip'
Plug 'NLKNguyen/copy-cut-paste.vim'

" Fancy searching
Plug 'mhinz/vim-grepper', { 'on': 'Grepper' }

" Themes
" Plug 'noah/vim256-color'
Plug 'zefei/vim-colortuner', { 'on': 'Colortuner' }
Plug 'flazz/vim-colorschemes'
Plug 'rainglow/vim'
Plug 'vim-scripts/fu'
Plug 'reedes/vim-colors-pencil'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'rafalbromirski/vim-aurora'
Plug 'nightsense/vimspectr'
Plug 'rakr/vim-two-firewatch'
Plug 'arzg/vim-colors-xcode'

""User interface

" Plug 'mhinz/vim-startify'
"Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
" Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
" Plug 'farmergreg/vim-lastplace'
Plug 'tyru/restart.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'mcchrish/nnn.vim'
"Git
Plug 'tpope/vim-fugitive'






Plug 'skywind3000/vim-quickui'


let g:context_menu_k = [
        \ ["&Help Keyword\t\\ch", 'echo 100' ],
        \ ["&Signature\t\\cs", 'echo 101'],
        \ ['-'],
        \ ["Find in &File\t\\cx", 'echo 200' ],
        \ ["Find in &Project\t\\cp", 'echo 300' ],
        \ ["Find in &Defintion\t\\cd", 'echo 400' ],
        \ ["Search &References\t\\cr", 'echo 500'],
        \ ['-'],
        \ ["&Documentation\t\\cm", 'echo 600'],
        \ ]

nnoremap <silent>K :call quickui#tools#clever_context('k', g:context_menu_k, {})<cr>

"Press K to use


" enable to display tips in the cmdline
"let g:quickui_show_tip = 1

""Ebooks
" Plug 'vim-scripts/Vim-EPUB'
" Plug 'makerj/vim-pdf'



"" Status bars
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'liuchengxu/eleline.vim'
" Plug 'zefei/vim-wintabs'
" Plug 'zefei/vim-wintabs-powerline'

" Status bar addons
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'



" CtrlP stuff
" Plug 'ctrlpvim/ctrlp.vim',                  { 'on': ['CtrlP', 'CntrlPCommandPalette', 'CtrlPMpc', 'CtrlPFunky', 'CtrlPCmdline','CtrlPMenu','CtrlPYankring' ] }
" Plug 'tacahiroy/ctrlp-funky',               { 'on': 'CtrlPFunky' }
" Plug 'sgur/ctrlp-extensions.vim',           { 'on': ['CtrlPCmdline','CtrlPMenu','CtrlPYankring'] }
" Plug 'dbeecham/ctrlp-commandpalette.vim',   { 'on': ['CtrlP', 'CntrlPCommandPalette'] }
" Plug 'lucidstack/ctrlp-mpc.vim',            { 'on': 'CtrlPMpc'}
" 	let g:ctrlp_mpc_cmd = 'mpc --port 8050'

""""""""""""Functionality

" Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}

" Ghoststart

Plug 'vim-scripts/cbackup.vim'
let g:backup_purge=100


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




Plug 'romgrk/barbar.nvim'
Plug 'norcalli/nvim-colorizer.lua'



" Always has to load last to apply icons to everything else
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()
