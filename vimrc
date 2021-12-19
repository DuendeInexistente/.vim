"Register yatm
"DO BEFORE ANYTHING ELSE.
source ~/.vim/yatm.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap
set linebreak
set spell
set spell spelllang=en_us,es
" set guifont=Consolas\ 13
" set guifont=Inconsolata\ Medium\ 11
set guifont=Anonymice\ Nerd\ Font\ Mono\ 11
filetype on
syntax on


let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme




hi CursorLine term=bold cterm=bold

set undofile
set undodir=.
set backupdir=.
set encoding=utf-8

set showmode
set showcmd

set incsearch
set hlsearch

set ttyfast
set lazyredraw

set splitright

set cursorline
set hidden
"set nocursorline

set ww+=<,>,[,]
set ssop-=options
" set ssop-=folds
set display+=lastline
set ssop+=resize,winpos,winsize,blank,buffers,curdir,folds,help,options,tabpages


set go-=m
set go-=T
set go-=r



set ignorecase             " Searching with / is case-insensitive.
set smartcase              " Disable 'ignorecase' if the term contains upper-case.


let g:buftabs_only_basename=1
let g:airline_detect_spell=0
function! AirlineInit()
let g:airline_section_y = 0
endfunction


""""Airline settings
let g:airline_powerline_fonts = 1
let g:airline_detect_paste = 1
let g:airline_skip_empty_sections = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_detect_whitespace = 0
let g:airline_section_warning=' '
"""""""""""""""""""""""""""
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline_left_sep = ''
let g:airline_left_sep = '▒░'
let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ''
let g:airline_right_sep = '░▒'
let g:airline_right_alt_sep = '|'
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.dirty=⚡



"""""""""""""""""""""""""""""""""""""""""""""""""""

let g:EasyClipShareYanks=1
let g:EasyClipYankHistorySize=50

 augroup textobj_quote
   autocmd!
   autocmd FileType markdown call textobj#quote#init()
   autocmd FileType textile call textobj#quote#init()
   autocmd FileType text call textobj#quote#init({'educate': 0})
 augroup END
map <silent> rc <Plug>ReplaceWithCurly
command! ReplaceWithCurly :<C-u>call textobj#quote#replace#replace(1, visualmode())<cr>


"augroup myvimrc
"	au!
"	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC
"augroup END

<
    let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
>




augroup litecorrect
  autocmd!
  autocmd FileType markdown,mkd call litecorrect#init()
  autocmd FileType textile call litecorrect#init()
augroup END


"Reduce the 'Press enter to continue!' prompts
set cmdheight=2

"Loading external keybindings and making a command to make them easier to reload independently.
source ~/.vim/keyboard.vim
command! KBD source ~/.vim/keyboard.vim || echo "Reloaded your keybindings!"


"source ~/.vim/gitfolder.vim
command! FBTerm source ~/.vim/fbterm.vim


" source ~/.vim/airlinelight.vim
source ~/.vim/ditto.vim

function! s:layout()
  let buf = nvim_create_buf(v:false, v:true)

  let height = &lines - (float2nr(&lines / 3))
  let width = float2nr(&columns - (&columns * 2 / 3))

  let opts = {
        \ 'relative': 'editor',
        \ 'row': 2,
        \ 'col': 10,
        \ 'width': width,
        \ 'height': height
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction
let g:nnn#layout = 'call ' . string(function('<SID>layout')) . '()'


set termguicolors

colorscheme two-firewatch
source ~/.vim/backups.vim
source ~/.vim/menus.vim
