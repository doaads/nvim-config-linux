nnoremap <SPACE> <Nop>
let mapleader = ' '

"set shellcmdflag=-command
"set shellquote=\"
"set shellxquote=

lua require('plugins')
lua require('lsp_config')
lua require('treesitter')
lua require("tree")
lua require("telescope_config")
lua require("barbar_config")	
lua require('lualine').setup()
lua require('indentblank')
lua require('transparent_config')
lua require('autopairs_config')
lua require('webtools')
lua require('etc')

set background=dark
set number
set relativenumber
set splitbelow splitright
set completeopt
set wildmenu
set termguicolors
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ignorecase

colorscheme onedark
highlight Normal ctermbg=NONE
highlight NonText ctermbg=NONE

nnoremap <Leader>t :NvimTreeToggle<CR>
nnoremap <Leader>o :TransparentToggle<CR>
nnoremap <Leader>j <C-W>j
nnoremap <Leader>k <C-W>k
nnoremap <Leader>l <C-W>l
nnoremap <Leader>h <C-W>h
nnoremap . .
tnoremap <C-space> <C-\><C-n>
tnoremap <Esc> cls<CR>exit<CR>

autocmd FileType asm setlocal shiftwidth=8 tabstop=8

source ~/.config/nvim/vim/markdown_preview.vim
