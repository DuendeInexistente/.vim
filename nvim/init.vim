set runtimepath^=~/.vim,~/.vim/nvim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc


" nvim-colorizer {{{


autocmd VimEnter * call s:setup_lualine()
function! s:setup_lualine() abort
lua<<EOF
local function time()
   time = os.date("*t")
   return(time.hour .. ":" .. time.min)
end

local function temp()
  return(os.execute("acpi -t | grep -o [[:digit:]][[:digit:]].[[:digit:]]"))
end

--  require('lualine').setup{}


require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '|', right = '|'},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff',
                  {'diagnostics', sources={'nvim_diagnostic', 'coc'}}},
		  lualine_c = {'filename',{time},{'!acpi -t | grep -o [[:digit:]][[:digit:]].[[:digit:]]'}},
  lualine_x = { 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

EOF
endfunction




