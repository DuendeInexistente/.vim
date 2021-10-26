set runtimepath^=~/.vim,~/.vim/nvim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
lua require("statusbar")
lua print("asdasdas")


" nvim-colorizer {{{

if IsPlugInstalled('nvim-colorizer.lua')
  lua require('colorizer').setup()
endif

autocmd VimEnter * call s:setup_lualine()
function! s:setup_lualine() abort
lua<<EOF
require('lualine').setup {}
EOF
endfunction


