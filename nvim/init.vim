syntax enable
filetype plugin indent on

let g:ale_completion_enabled = 1
let g:ale_linters = {'rust' : ['analyzer'],}

" colorscheme OceanicNext
set number
set ts=4 sw=4

autocmd FileType c setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType go setlocal ts=4 sts=4 sw=4 expandtab
set completeopt=menu,menuone,preview
highlight ALEError ctermbg=DarkMagenta
highlight ALEWarning ctermbg=None

call plug#begin()
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'https://github.com/echasnovski/mini.trailspace'
" Plug 'https://github.com/echasnovski/mini.animate'
Plug 'https://github.com/echasnovski/mini.map'
Plug 'https://github.com/echasnovski/mini.tabline'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/farmergreg/vim-lastplace'
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()
autocmd! User GoyoEnter Limelight
lua =require('mini.trailspace').setup()
" lua require('mini.animate').setup()
lua require('mini.map').setup()
lua require('mini.tabline').setup()
