let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
cnoremap <expr> <Plug>EasyClipCommandModePaste '' . EasyClip#GetDefaultReg()
imap <expr> <Plug>EasyClipInsertModePaste '<Plug>PasteToggle' . EasyClip#GetDefaultReg() . '<Plug>PasteToggle'
inoremap <Up> gk
inoremap <Down> gj
nnoremap  ggVG
nmap <silent>  <Plug>EasyClipSwapPasteBackwards
nmap <silent>  <Plug>EasyClipSwapPasteForward
nmap  <Plug>(RepeatRedo)
nnoremap  :write
snoremap   "_c 
snoremap ! "_c!
snoremap " "_c"
snoremap # "_c#
snoremap $ "_c$
snoremap & "_c&
snoremap ' "_c'
snoremap ( "_c(
snoremap ) "_c)
snoremap * "_c*
snoremap + "_c+
map ,r <Plug>(quickrun)
snoremap , "_c,
nmap <silent> ,P <Plug>EasyClipPasteUnformattedBefore
nmap <silent> ,p <Plug>EasyClipPasteUnformattedAfter
xmap <silent> ,P <Plug>XEasyClipPasteUnformatted
xmap <silent> ,p <Plug>XEasyClipPasteUnformatted
snoremap - "_c-
nmap . <Plug>(RepeatDot)
snoremap . "_c.
snoremap / "_c/
snoremap 0 "_c0
snoremap 1 "_c1
snoremap 2 "_c2
snoremap 3 "_c3
snoremap 4 "_c4
snoremap 5 "_c5
snoremap 6 "_c6
snoremap 7 "_c7
snoremap 8 "_c8
snoremap 9 "_c9
snoremap : "_c:
snoremap ; "_c;
snoremap < "_c<
snoremap = "_c=
snoremap > "_c>
snoremap ? "_c?
snoremap @ "_c@
snoremap A "_cA
snoremap B "_cB
snoremap C "_cC
xnoremap <silent> C "_C
nnoremap <silent> C "_C
snoremap D "_cD
xnoremap <silent> D "_D
nnoremap <silent> D "_D
snoremap E "_cE
snoremap F "_cF
snoremap G "_cG
snoremap H "_cH
snoremap I "_cI
snoremap J "_cJ
snoremap K "_cK
snoremap L "_cL
snoremap M "_cM
snoremap N "_cN
snoremap O "_cO
snoremap P "_cP
nmap <silent> P <Plug>EasyClipPasteBefore
xmap <silent> P <Plug>XEasyClipPaste
snoremap Q "_cQ
nmap QV <Plug>CCP_PasteText
vmap QX <Plug>CCP_CutText
nmap QX <Plug>CCP_CutLine
vmap QC <Plug>CCP_CopyText
nmap QC <Plug>CCP_CopyLine
snoremap R "_cR
snoremap S "_cS
xnoremap <silent> S "_S
nnoremap <silent> S "_S
snoremap T "_cT
nmap U <Plug>(RepeatUndoLine)
snoremap U "_cU
snoremap V "_cV
snoremap W "_cW
snoremap X "_cX
xnoremap <silent> X "_X
nnoremap <silent> X "_X
snoremap Y "_cY
nnoremap <silent> Y :EasyClipBeforeYanky$:EasyClipOnYanksChanged
snoremap Z "_cZ
vmap [% [%m'gv``
snoremap [ "_c[
snoremap \\ "_c\\
nnoremap \m :ShowMaps            " Map keys to call the function
vmap ]% ]%m'gv``
snoremap ] "_c]
snoremap ^ "_c^
snoremap _ "_c_
snoremap ` "_c`
omap aq <Plug>(textobj-quote-select-d-a)
xmap aq <Plug>(textobj-quote-select-d-a)
omap aQ <Plug>(textobj-quote-select-s-a)
xmap aQ <Plug>(textobj-quote-select-s-a)
vmap a% [%v]%
onoremap <silent> aj :normal vaj
xnoremap <expr> aj jdaddy#outer_movement(v:count1)
snoremap a "_ca
snoremap b "_cb
snoremap c "_cc
nnoremap <silent> cc "_S
xnoremap <silent> c "_c
nnoremap <silent> c "_c
snoremap d "_cd
nnoremap <silent> dD 0"_d$
nnoremap <silent> dd "_dd
xnoremap <silent> d "_d
nnoremap <silent> d "_d
snoremap e "_ce
snoremap f "_cf
nnoremap <silent> gwaj :exe jdaddy#reformat('jdaddy#outer_pos', v:count1, v:register)
nnoremap <silent> gwij :exe jdaddy#reformat('jdaddy#inner_pos', v:count1, v:register)
nnoremap <silent> gqaj :exe jdaddy#reformat('jdaddy#outer_pos', v:count1)
nnoremap <silent> gqij :exe jdaddy#reformat('jdaddy#inner_pos', v:count1)
snoremap g "_cg
nmap <silent> g,P <Plug>G_EasyClipPasteUnformattedBefore
nmap <silent> g,p <Plug>G_EasyClipPasteUnformattedAfter
nmap <silent> gP <Plug>G_EasyClipPasteBefore
nmap <silent> gp <Plug>G_EasyClipPasteAfter
xmap <silent> gP <Plug>XG_EasyClipPaste
xmap <silent> gp <Plug>XG_EasyClipPaste
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
snoremap h "_ch
omap iq <Plug>(textobj-quote-select-d-i)
xmap iq <Plug>(textobj-quote-select-d-i)
omap iQ <Plug>(textobj-quote-select-s-i)
xmap iQ <Plug>(textobj-quote-select-s-i)
onoremap <silent> ij :normal vij
xnoremap <expr> ij jdaddy#inner_movement(v:count1)
snoremap i "_ci
map j gj
map k gk
snoremap l "_cl
snoremap m "_cm
xmap <silent> m <Plug>MoveMotionXPlug
nmap <silent> mm <Plug>MoveMotionLinePlug
nmap <silent> m <Plug>MoveMotionPlug
snoremap n "_cn
snoremap o "_co
snoremap p "_cp
nmap <silent> p <Plug>EasyClipPasteAfter
xmap <silent> p <Plug>XEasyClipPaste
snoremap q "_cq
snoremap r "_cr
map <silent> rc <Plug>ReplaceWithCurly
snoremap s "_cs
xnoremap <silent> s "_s
nnoremap <silent> s "_s
snoremap t "_ct
nmap u <Plug>(RepeatUndo)
snoremap u "_cu
snoremap v "_cv
snoremap w "_cw
snoremap x "_cx
xnoremap <silent> x "_x
nnoremap <silent> x "_x
snoremap y "_cy
xmap <silent> y <Plug>VisualModeYank
nmap <silent> yy <Plug>YankLinePreserveCursorPosition
nmap <silent> y <Plug>YankPreserveCursorPosition
snoremap z "_cz
snoremap { "_c{
snoremap | "_c
snoremap } "_c}
snoremap ~ "_c~
vnoremap <Up> gk
vnoremap <Down> gj
nnoremap <Up> gk
nnoremap <Down> gj
omap <Up> gk
omap <Down> gj
nnoremap <silent> <Plug>(RepeatRedo) :call repeat#wrap("\<C-R>",v:count)
nnoremap <silent> <Plug>(RepeatUndoLine) :call repeat#wrap('U',v:count)
nnoremap <silent> <Plug>(RepeatUndo) :call repeat#wrap('u',v:count)
nnoremap <silent> <Plug>(RepeatDot) :exe repeat#run(v:count)
map <S-Insert> <MiddleMouse>
vnoremap <silent> <Plug>(quickrun) :QuickRun -mode v
nnoremap <silent> <Plug>(quickrun) :QuickRun -mode n
nnoremap <silent> <Plug>(quickrun-op) :set operatorfunc=quickrun#operatorg@
vnoremap <Plug>SurroundWithSingle :call textobj#quote#surround#surround(0, visualmode())
nnoremap <Plug>SurroundWithSingle :call textobj#quote#surround#surround(0, '')
vnoremap <Plug>SurroundWithDouble :call textobj#quote#surround#surround(1, visualmode())
nnoremap <Plug>SurroundWithDouble :call textobj#quote#surround#surround(1, '')
vnoremap <Plug>ReplaceWithStraight :call textobj#quote#replace#replace(0, visualmode())
nnoremap <Plug>ReplaceWithStraight :call textobj#quote#replace#replace(0, '')
vnoremap <Plug>ReplaceWithCurly :call textobj#quote#replace#replace(1, visualmode())
nnoremap <Plug>ReplaceWithCurly :call textobj#quote#replace#replace(1, '')
nnoremap <silent> <Plug>LDictionAdd :LDictionAdd
nnoremap <silent> <Plug>LDiction :LDiction
nnoremap <silent> <Plug>DictionAdd :DictionAdd
nnoremap <silent> <Plug>Diction :Diction
snoremap <BS> "_c
nnoremap <silent> <expr> <Plug>YankPreserveCursorPosition ":call EasyClip#Yank#PreYankMotion():set opfunc=EasyClip#Yank#YankMotion" . (v:count > 0 ? v:count : '') . "g@"
nnoremap <silent> <Plug>YankLinePreserveCursorPosition :call EasyClip#Yank#PreYankMotion():call EasyClip#Yank#YankLine()
nnoremap <Plug>EasyClipRotateYanksBackward :call EasyClip#Yank#ManuallyRotateYanks(-1)
nnoremap <Plug>EasyClipRotateYanksForward :call EasyClip#Yank#ManuallyRotateYanks(1)
nnoremap <silent> <Plug>YankMotionEndOfLinePlug :EasyClipBeforeYanky$:EasyClipOnYanksChanged
nnoremap <silent> <Plug>SubstituteLine :call EasyClip#Substitute#SubstituteLine(v:register, v:count):call repeat#set("\<Plug>SubstituteLine")
nnoremap <silent> <Plug>G_SubstituteToEndOfLine :call EasyClip#Substitute#SubstituteToEndOfLine(v:register, 0):call repeat#set("\<Plug>G_SubstituteToEndOfLine")
nnoremap <silent> <Plug>SubstituteToEndOfLine :call EasyClip#Substitute#SubstituteToEndOfLine(v:register, 1):call repeat#set("\<Plug>SubstituteToEndOfLine")
nnoremap <silent> <Plug>G_SubstituteOverMotionMap :call EasyClip#Substitute#OnPreSubstitute(v:register, 0):set opfunc=EasyClip#Substitute#SubstituteMotiong@
nnoremap <silent> <Plug>SubstituteOverMotionMap :call EasyClip#Substitute#OnPreSubstitute(v:register, 1):set opfunc=EasyClip#Substitute#SubstituteMotiong@
nnoremap <silent> <expr> <Plug>MoveMotionPlug ":call EasyClip#Move#PreMoveMotion():set opfunc=EasyClip#Move#MoveMotion" . (v:count > 0 ? v:count : '') . "g@"
nnoremap <silent> <expr> <Plug>MoveMotionLinePlug ':EasyClipBeforeYank'. v:count .'yy'. v:count . '"_dd:EasyClipOnYanksChanged:call repeat#set("\<Plug>MoveMotionLinePlug")'
nnoremap <silent> <Plug>MoveMotionReplaceLinePlug :EasyClipBeforeYank0y$:EasyClipOnYanksChanged"_d$:call repeat#set("\<Plug>MoveMotionReplaceLinePlug")
nnoremap <silent> <Plug>MoveMotionEndOfLinePlug :EasyClipBeforeYanky$:EasyClipOnYanksChanged"_d$:call repeat#set("\<Plug>MoveMotionEndOfLinePlug")
nnoremap <silent> <Plug>EasyClipToggleFormattedPaste :call EasyClip#Paste#ToggleFormattedPaste()
xnoremap <silent> <Plug>XG_EasyClipPasteUnformatted "_d:call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 0, "G_EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>XEasyClipPasteUnformatted "_d:call EasyClip#Paste#PasteText(v:register, v:count, 'P', 0, "EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>G_EasyClipPasteUnformattedBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 0, "G_EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>G_EasyClipPasteUnformattedAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'gp', 0, "G_EasyClipPasteUnformattedAfter")
nnoremap <silent> <Plug>EasyClipPasteUnformattedBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'P', 0, "EasyClipPasteUnformattedBefore")
nnoremap <silent> <Plug>EasyClipPasteUnformattedAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'p', 0, "EasyClipPasteUnformattedAfter")
xnoremap <silent> <Plug>XG_EasyClipPaste "_d:call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 1, "G_EasyClipPasteBefore")
nnoremap <silent> <Plug>G_EasyClipPasteBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'gP', 1, "G_EasyClipPasteBefore")
nnoremap <silent> <Plug>G_EasyClipPasteAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'gp', 1, "G_EasyClipPasteAfter")
xnoremap <silent> <expr> <Plug>XEasyClipPaste ':call EasyClip#Paste#PasteTextVisualMode(''' . v:register . ''',' . v:count . ')'
nnoremap <silent> <Plug>EasyClipPasteBefore :call EasyClip#Paste#PasteText(v:register, v:count, 'P', 1, "EasyClipPasteBefore")
nnoremap <silent> <Plug>EasyClipPasteAfter :call EasyClip#Paste#PasteText(v:register, v:count, 'p', 1, "EasyClipPasteAfter")
nnoremap <silent> <Plug>EasyClipSwapPasteBackwards :call EasyClip#Paste#SwapPaste(0)
nnoremap <silent> <Plug>EasyClipSwapPasteForward :call EasyClip#Paste#SwapPaste(1)
nnoremap <Plug>CCP_PasteText "+p
vnoremap <Plug>CCP_CutText "+y gvd
nnoremap <Plug>CCP_CutLine "+Y dd
vnoremap <Plug>CCP_CopyText "+y
nnoremap <Plug>CCP_CopyLine "+Y
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <M-F8> :call NextColor(0)
nnoremap <S-F8> :call NextColor(-1)
nnoremap <F8> :call NextColor(1)
nnoremap <silent> <Plug>(startify-open-buffers) :call startify#open_buffers()
vnoremap <silent> <Plug>Ditto :call ditto#dittoOp(visualmode(), 1)
nnoremap <silent> <Plug>Ditto :set opfunc=ditto#dittoOpg@
nnoremap <silent> <Plug>DittoUpdate :call ditto#dittoUpdate()
nnoremap <silent> <Plug>ToggleDitto :call ditto#toggleDitto()
nnoremap <silent> <Plug>DittoOff :call ditto#dittoOff()
nnoremap <silent> <Plug>DittoOn :call ditto#dittoOn()
nnoremap <silent> <Plug>DittoPrev :silent keepp call ditto#dittoSearch("?")
nnoremap <silent> <Plug>DittoNext :silent keepp call ditto#dittoSearch("/")
nnoremap <silent> <Plug>DittoLess :call ditto#dittoLess()
nnoremap <silent> <Plug>DittoMore :call ditto#dittoMore()
nnoremap <Plug>DittoBad :call ditto#addBadWord(expand("<cword>"))
nnoremap <Plug>DittoGood :call ditto#addGoodWord(expand("<cword>"))
map <F2> :emenu 
nnoremap <M-Right> l
nnoremap <M-Down> k
nnoremap <M-Up> j
nnoremap <M-Left> h
noremap <F4> :bnext
noremap <F3> :bprev
inoremap  ggVG
inoremap  :writei
inoremap -- —
inoremap ... …
imap jj 
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/.vim/.vimfiles/backup
set directory=~/.vim/.vimfiles/swp
set display=lastline
set fileencodings=ucs-bom,utf-8,default,latin1
set guifont=Consolas\ 13
set guioptions=aegiLt
set helplang=en
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set nomodeline
set mouse=a
set pastetoggle=<Plug>PasteToggle
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,~/.vim/pack/syntax_check/start/vimproc.vim,~/.vim/pack/syntax_check/start/vim-watchdogs,~/.vim/pack/syntax_check/start/vim-quickrun,~/.vim/pack/syntax_check/start/vim-lint,~/.vim/pack/syntax_check/start/vim-hier,~/.vim/pack/syntax_check/start/syntastic,~/.vim/pack/syntax_check/start/shabadou.vim,~/.vim/pack/spelling/start/vim-textobj-user,~/.vim/pack/spelling/start/vim-textobj-quote,~/.vim/pack/spelling/start/vim-diction,~/.vim/pack/searching/start/vim-grepper,~/.vim/pack/organizing/start/vim-orgmode,~/.vim/pack/codingthings/start/vim-jdaddy,~/.vim/pack/clipboard/start/vim-repeat,~/.vim/pack/clipboard/start/vim-easyclip,~/.vim/pack/clipboard/start/copy-cut-paste.vim,~/.vim/pack/airline/start/vim-airline-themes,~/.vim/pack/airline/start/vim-airline,~/.vim/pack/NERDtree/start/nerdtree,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vim80/pack/dist/opt/matchit,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set sessionoptions=blank,buffers,curdir,help,tabpages,winsize,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,help,tabpages,resize,winpos,winsize,blank,buffers,curdir,folds,help,options,tabpages
set shortmess=filnxtToOI
set showcmd
set smartcase
set spelllang=en_us,es
set splitright
set statusline=%1*%<%F%M%y%=\ %{WordCount()}\ words,\ %l/%L\ lines,\ %P
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set termencoding=utf-8
set undodir=~/.vim/.vimfiles/undo
set undofile
set updatetime=100
set wildcharm=26
set wildmenu
set window=31
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.vim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +151 vimrc
badd +0 keyboard.vim
argglobal
silent! argdel *
set lines=32 columns=111
winpos 0 16
edit vimrc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 56 + 55) / 111)
exe 'vert 2resize ' . ((&columns * 54 + 55) / 111)
argglobal
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us,es
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 100 - ((3 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
100
normal! 0
wincmd w
argglobal
edit keyboard.vim
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us,es
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 49 - ((28 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 025|
wincmd w
exe 'vert 1resize ' . ((&columns * 56 + 55) / 111)
exe 'vert 2resize ' . ((&columns * 54 + 55) / 111)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
