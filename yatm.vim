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
Plug 'rhysd/vim-grammarous', { 'on': 'GrammarousCheck' }
Plug 'mboughaba/vim-lessmess'
"
Plug 'sheerun/vim-polyglot'

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
"Plug 'mhinz/vim-startify'
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'farmergreg/vim-lastplace'
Plug 'tyru/restart.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'mcchrish/nnn.vim'
"Git
Plug 'tpope/vim-fugitive'
"Plug 'skywind3000/vim-quickui'


" clear all the menus
"call quickui#menu#reset()

" install a 'File' menu, use [text, command] to represent an item.
"call quickui#menu#install('&File', [
            \ [ "&New File\tCtrl+n", 'echo 0' ],
            \ [ "&Open File\t(F3)", 'echo 1' ],
            \ [ "&Close", 'echo 2' ],
            \ [ "--", '' ],
            \ [ "&Save\tCtrl+s", 'echo 3'],
            \ [ "Save &As", 'echo 4' ],
            \ [ "Save All", 'echo 5' ],
            \ [ "--", '' ],
            \ [ "E&xit\tAlt+x", 'echo 6' ],
            \ ])

" items containing tips, tips will display in the cmdline
"call quickui#menu#install('&Edit', [
            \ [ '&Copy', 'echo 1', 'help 1' ],
            \ [ '&Paste', 'echo 2', 'help 2' ],
            \ [ '&Find', 'echo 3', 'help 3' ],
            \ ])

" script inside %{...} will be evaluated and expanded in the string
"call quickui#menu#install("&Option", [
			\ ['Set &Spell %{&spell? "Off":"On"}', 'set spell!'],
			\ ['Set &Cursor Line %{&cursorline? "Off":"On"}', 'set cursorline!'],
			\ ['Set &Paste %{&paste? "Off":"On"}', 'set paste!'],
			\ ])

" register HELP menu with weight 10000
"call quickui#menu#install('H&elp', [
			\ ["&Cheatsheet", 'help index', ''],
			\ ['T&ips', 'help tips', ''],
			\ ['--',''],
			\ ["&Tutorial", 'help tutor', ''],
			\ ['&Quick Reference', 'help quickref', ''],
			\ ['&Summary', 'help summary', ''],
			\ ], 10000)

" enable to display tips in the cmdline
"let g:quickui_show_tip = 1

" hit space twice to open menu
noremap <space><space> :call quickui#menu#open()<cr>


""Ebooks
" Plug 'vim-scripts/Vim-EPUB'
" Plug 'makerj/vim-pdf'



"" Status bars
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'liuchengxu/eleline.vim'
" Plug 'zefei/vim-wintabs'
" Plug 'zefei/vim-wintabs-powerline'

" Status bar addons
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'



" CtrlP stuff
Plug 'ctrlpvim/ctrlp.vim',                  { 'on': ['CtrlP', 'CntrlPCommandPalette', 'CtrlPMpc', 'CtrlPFunky', 'CtrlPCmdline','CtrlPMenu','CtrlPYankring' ] }
Plug 'tacahiroy/ctrlp-funky',               { 'on': 'CtrlPFunky' }
Plug 'sgur/ctrlp-extensions.vim',           { 'on': ['CtrlPCmdline','CtrlPMenu','CtrlPYankring'] }
Plug 'dbeecham/ctrlp-commandpalette.vim',   { 'on': ['CtrlP', 'CntrlPCommandPalette'] }
Plug 'lucidstack/ctrlp-mpc.vim',            { 'on': 'CtrlPMpc'}
	let g:ctrlp_mpc_cmd = 'mpc --port 8050'

""""""""""""Functionality
"Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}

"Ghoststart

Plug 'vim-scripts/cbackup.vim'
let g:backup_purge=100


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




Plug 'romgrk/barbar.nvim'
Plug 'norcalli/nvim-colorizer.lua'



" Always has to load last to apply icons to everything else
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()
