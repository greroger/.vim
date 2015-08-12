set nocompatible

execute pathogen#infect()

colorscheme solarized

filetype plugin indent on

let mapleader=","

" Toggle nerd tree window
nmap <Leader>n :NERDTreeToggle<CR>

" Speed up switching windows
map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>
