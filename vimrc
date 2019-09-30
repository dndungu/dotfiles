syntax on
set nowrap
set tabstop=4
set textwidth=120
set formatoptions+=
set viminfo='20,<1000,s1000

set nocompatible
set nobackup
set nowritebackup
set noswapfile

set mouse=a
set ttymouse=sgr
set clipboard=unnamed

set updatetime=1000
set balloondelay=500

set signcolumn=auto

set backspace=2

map <space> viw
map r :GOVIMRename<CR>

filetype plugin indent on
set autoindent
set smartindent

autocmd! BufEnter,BufNewFile *.go syntax on
autocmd! BufLeave *.go syntax off

" YAML
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Subtle 80+ column indicator
highlight OverLength ctermbg=black ctermfg=darkgrey
match OverLength /\%121v.\+/
