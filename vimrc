set nocompatible

execute pathogen#infect()

" Easy on the eyes
colorscheme solarized

" Move all the specific config to seperate files
filetype plugin indent on

" I like multiple files
set hidden

" Search options
set showmatch
set smartcase
set incsearch
set scrolloff=999

" Replace default to global
set gdefault

" This just works better
let mapleader=","

" Toggle nerd tree window
nmap <Leader>n :NERDTreeToggle<CR>

" Speed up switching windows
map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>
