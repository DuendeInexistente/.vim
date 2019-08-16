
" For when testing the file by running the buffer repeatedly
let b:isgit = "This is empty now"
echom b:isgit

let b:isgit = system("git rev-parse --is-inside-work-tree | tr -d '\\n'")

echom b:isgit
if b:isgit == "true"
 let b:path = system("git rev-parse --show-toplevel | tr -d '\\n'")
else
 let b:path = echo expand('%:p:h') 
endif

call mkdir('b:isgit'+'/\.vimfiles')
" let b:currentdir = echo $PWD
" cd b:path
" !mkdir(".vimfiles")
" cd b:currentdir

" !mkdir(expand("b:path")."/.vimfiles")
"call system('mkdir("b:path"/.vimfiles")'




function! Mkdir(path)
    if !isdirectory(resolve(a:path))
        try
            call mkdir(a:path, "p", 0775)
        catch
            return ''
        endtry
    endif
    return a:path
endfunction

" Find the nearest .git directory
let s:repo_root = ''
let s:cwd = getcwd()
while getcwd() != '/'
	if isdirectory('.git')
        let s:repo_root = getcwd()
        break
    endif
    cd ..
endwhile
exec 'cd 's:cwd

" If we found a .git/ directory somewhere, create directories there
if s:repo_root != ''
    set undofile
    set backup
    set swapfile

    let s:dirpath = s:repo_root."/.vimfiles"
    let &undodir = Mkdir(s:dirpath."/undo")
    let &backupdir = Mkdir(s:dirpath."/backup")
    let &directory = Mkdir(s:dirpath."/swp")
endif