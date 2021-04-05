" nvim configuration
call plug#begin("~/.config/vim")
" auto close ( [ {
Plug 'jiangmiao/auto-pairs'
" color theme
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

" color theme
set termguicolors
let g:tokyonight_style = 'night'
let g:tokonight_enable_italic = 1
colorscheme tokyonight

" tab and indent config
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" line number and syntax
set number
set ruler
syntax on

" turn off backup
set noswapfile
set nobackup
set nowritebackup

" search config
set ignorecase
set smartcase


