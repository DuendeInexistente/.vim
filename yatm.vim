" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


"Lua
" Plug 'davisdude/vim-love-docs', { 'branch': 'build' }

" Make sure you use single quotes

" Nerdtree
Plug 'scrooloose/nerdtree',  { 'on':  'NERDTreeToggle' }
Plug 'dstein64/vim-startuptime'

" Gramatical correctness.
" Plug 'ntnn/vim-diction'

Plug 'reedes/vim-textobj-quote'
Plug 'kana/vim-textobj-user'
Plug 'reedes/vim-litecorrect'
" Plug 'rhysd/vim-grammarous', { 'on': 'GrammarousCheck' }
Plug 'mboughaba/vim-lessmess'


"Syntax files
"Plug 'sheerun/vim-polyglot'
"Plug 'milisims/tree-sitter-org'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
au VimEnter * luafile ~/.vim/nvim/start.lua



"Plug 'kristijanhusak/orgmode.nvim' ", {'branch': 'tree-sitter'}
"Plug 'axvr/org.vim'
Plug 'godlygeek/tabular'
"Plug 'ixru/nvim-markdown'
"let g:vim_markdown_conceal = 0 " Pandoc has better conceal

"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'lukas-reineke/headlines.nvim'
Plug 'lifepillar/vim-outlaw'


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
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'farmergreg/vim-lastplace'
Plug 'tyru/restart.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'mcchrish/nnn.vim'
"Git
Plug 'tpope/vim-fugitive'

Plug 'liuchengxu/vim-which-key'

Plug 'norcalli/nvim-colorizer.lua' ", {'do': g:loadcolor}


Plug 'skywind3000/vim-quickui'
source ~/.vim/menus.vim

""Ebooks
" Plug 'vim-scripts/Vim-EPUB'
" Plug 'makerj/vim-pdf'



"" Status bars
Plug 'nvim-lualine/lualine.nvim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'liuchengxu/eleline.vim'
" Plug 'zefei/vim-wintabs'
" Plug 'zefei/vim-wintabs-powerline'

" Status bar addons
" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-buftabline'
Plug 'sf1/quicktoc-vim'

"Plug 'preservim/tagbar'
"Plug 'tenfyzhong/tagbar-ext.vim'
Plug 'aditya-K2/spellfloat'

Plug 'ellisonleao/glow.nvim', {'do' : 'GlowInstall'}

Plug 'dkarter/bullets.vim'

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch',
    \ 'org'
    \]
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'gpanders/vim-oldfiles'



Plug 'vim-scripts/cbackup.vim'

let g:backup_purge=100


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


Plug 'preservim/vim-pencil'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END


Plug 'romgrk/barbar.nvim'
Plug 'norcalli/nvim-colorizer.lua'



" Always has to load last to apply icons to everything else
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()
