" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'lewis6991/impatient.nvim'



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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update



"Plug 'kristijanhusak/orgmode.nvim' ", {'branch': 'tree-sitter'}
"Plug 'axvr/org.vim'
Plug 'godlygeek/tabular'
Plug 'ixru/nvim-markdown'
"let g:vim_markdown_conceal = 0 " Pandoc has better conceal

"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'rhysd/vim-gfm-syntax'
let g:gfm_syntax_emoji_conceal = 1
"Plug 'prurigro/vim-markdown-concealed'

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
let g:limelight_paragraph_span = 1


Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'farmergreg/vim-lastplace'
Plug 'tyru/restart.vim'
Plug 'vim-scripts/ScrollColors'
Plug 'mcchrish/nnn.vim'
"Git
Plug 'tpope/vim-fugitive'

Plug 'liuchengxu/vim-which-key'

Plug 'norcalli/nvim-colorizer.lua' ", {'do': g:loadcolor}


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

Plug 'preservim/tagbar'
"Plug 'majutsushi/tagbar'
"Plug 'lvht/tagbar-markdown'
"Plug 'tenfyzhong/tagbar-ext.vim'
Plug 'jszakmeister/markdown2ctags'
""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin="/home/linuxbrew/.linuxbrew/Cellar/universal-ctags/p5.9.20211219.0/bin/ctags"
" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '~/.vim/plugged/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes --sro=»',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }
""""""""""""""""""""""""""""""""""""""""""""""


Plug 'aditya-K2/spellfloat'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'karb94/neoscroll.nvim'




""""""""""""""""""""""""
Plug 'Pocco81/true-zen.nvim'
"""""""""""""""""""""""

"""""""""""""""""""""""
" Vim Script
Plug 'folke/twilight.nvim'


"""""""""""""""""""""""

Plug 'stevearc/dressing.nvim'

Plug 'rcarriga/nvim-notify'

Plug 'windwp/nvim-autopairs'

"Plug 'petertriho/nvim-scrollbar'

Plug 'kevinhwang91/nvim-hlslens'

Plug 'EdenEast/nightfox.nvim'

Plug 'jesson/vim-daylight'

let g:daylight_morning_color_gvim = "dawnfox"
let g:daylight_afternoon_color_gvim = "dayfox"
let g:daylight_evening_color_gvim = "duskfox"
let g:daylight_late_color_gvim = "nightfox"

let g:daylight_morning_color_term = "dawnfox"
let g:daylight_afternoon_color_term = "dayfox"
let g:daylight_evening_color_term = "duskfox"
let g:daylight_late_color_term = "nightfox"

let g:daylight_late_hour = 21
let g:daylight_morning_hour = 6
let g:daylight_afternoon_hour = 12
let g:daylight_evening_hour = 17

Plug 'nvim-lua/plenary.nvim'

Plug 'Djancyp/custom-theme.nvim'

Plug 'skywind3000/vim-quickui'
source ~/.vim/menus.vim



Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
function! s:SetupGhostBuffer()
    set ft=markdown
endfunction

augroup vim-ghost
    au!
    au User vim-ghost#connected call s:SetupGhostBuffer()
augroup END


if has('python3') && has('timers')
  Plug 'danth/pathfinder.vim'
else
  echoerr 'pathfinder.vim is not supported on this Vim installation'
endif


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
"Autoclose
augroup oldfiles
    autocmd!
    autocmd FileType qf if get(w:, 'quickfix_title') =~# 'Oldfiles' | nnoremap <buffer> <CR> <CR>:cclose<CR> | endif
augroup END
"""""""""""

Plug 'vim-scripts/cbackup.vim'

let g:backup_purge=100


Plug 'folke/which-key.nvim'

Plug 'huiscool/vim-wpm'

""""""""""""""""""""""""
silent! Plug 'oxytocin/DocComments', { 'do': 'UpdateRemotePlugins' }
vnoremap c :MakeCommentVisual<cr>
nnoremap yc :MakeCommentNormal<cr>
nnoremap <leader>dc :DeleteComment<cr>
nnoremap K :GetComment<cr>
nnoremap <leader>ec :EditComment<cr>

""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


Plug 'preservim/vim-pencil'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init({'wrap':'soft'})
  autocmd FileType text         call pencil#init({'wrap':'soft'})
augroup END


Plug 'romgrk/barbar.nvim'
Plug 'norcalli/nvim-colorizer.lua'



Plug 'rubixninja314/vim-mcfunction'


Plug 'PatrBal/vim-textidote'
let g:textidote_jar = '~/textidote.jar'
let g:textidote_lang = 'es'

let g:textidote_ignore_rules = 'sh:d:008,lt:es:VOSEO,lt:en:PROFANITY'
let g:textidote_dictionary = &spellfile


Plug 'micarmst/vim-spellsync'

Plug 'MunifTanjim/nui.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'folke/noice.nvim'
Plug 'gmarmstrong/vim-muse'
Plug 'rcarriga/nvim-notify'

Plug 'brenopacheco/vim-hydra'
Plug 'gyim/vim-boxdraw'

"Plug 'rktjmp/lush.nvim'
"Plug 'ellisonleao/gruvbox.nvim'
"Plug 'Nequo/vim-allomancer'

" Always has to load last to apply icons to everything else
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'


call plug#end()


au VimEnter * luafile ~/.vim/nvim/start.lua
let g:DocCommentsEchoComment = 1


source ~/.vim/hydrafile.vim

set nolz
silent autocmd UIEnter * nested
			\  if !argc() && line2byte('$') == -1
			\ | bro Oldfiles
