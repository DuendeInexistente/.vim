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


augroup myvimrc
	au!
	au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC
augroup END

<
    let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]
>



function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

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

"Register yatm
source ~/.vim/yatm.vim

" source ~/.vim/airlinelight.vim
source ~/.vim/ditto.vim

