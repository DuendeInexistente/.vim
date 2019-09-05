"Register yatm
"DO BEFORE ANYTHING ELSE.
source ~/.vim/yatm.vim






set wrap
set linebreak
filetype on
set spell
syntax on
set spell spelllang=en_us,es
" set guifont=Consolas\ 13
" set guifont=Inconsolata\ Medium\ 11
set guifont=Anonymice\ Nerd\ Font\ Mono\ 11 

colorscheme fu
"colorscheme Atelier_CaveDark
"colorscheme challenger_deep

""""""""""""""""""""""""""""""""""""""""""""""""""
if 0
	if strftime("%H") < 7 || strftime("%H") >= 19
	  let themes = [
	    \ 'vimspectr0-dark'   , 'vimspectr0-dark'    , 'vimspectr30-dark'  ,
	    \ 'vimspectr60-dark'  , 'vimspectr90-dark'   , 'vimspectr120-dark' ,
	    \ 'vimspectr150-dark' , 'vimspectr180-dark'  , 'vimspectr210-dark' ,
	    \ 'vimspectr240-dark' , 'vimspectr270-dark'  , 'vimspectr300-dark' ,
	    \ 'vimspectr330-dark' , 'vimspectrgrey-dark'
	    \ ]
	else
	  let themes = [
	    \ 'vimspectr0-light'  , 'vimspectr0-light'   , 'vimspectr30-light' ,
	    \ 'vimspectr60-light' , 'vimspectr90-light'  , 'vimspectr120-light',
	    \ 'vimspectr150-light', 'vimspectr180-light' , 'vimspectr210-light',
	    \ 'vimspectr240-light', 'vimspectr270-light' , 'vimspectr300-light',
	    \ 'vimspectr330-light', 'vimspectrgrey-light'
	    \ ]
	endif
	exe 'colorscheme '.themes[localtime() % len(themes)]
endif
""""""""""""""""""""""



"if has('nvim') || has('termguicolors')
"  set termguicolors
"endif

hi CursorLine term=bold cterm=bold 

set undofile
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
set nocursorline

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

