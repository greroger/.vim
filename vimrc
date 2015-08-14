set nocompatible

execute pathogen#infect()

" Easy on the eyes
set background=dark
colorscheme solarized

" Move all the specific config to seperate files
filetype plugin indent on

" I like multiple files
set hidden

" I like a status line
set laststatus=2

" Search options
set showmatch
set smartcase
set incsearch
set scrolloff=5
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

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

let g:airline#extensions#tabline#enabled = 1

