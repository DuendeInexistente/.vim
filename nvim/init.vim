set runtimepath^=~/.vim,~/.vim/nvim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
lua require("statusbar")