set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

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

" Moving through errors and grep's
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

" Speed up switching windows
map <C-h> :wincmd h<CR>
map <C-j> :wincmd j<CR>
map <C-k> :wincmd k<CR>
map <C-l> :wincmd l<CR>

let g:airline#extensions#tabline#enabled = 1

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 0

let g:neocomplete#enable_insert_char_pre = 1
let g:neocomplete#enable_fuzzy_completion = 0

if !exists('g:neocomplete#omni_patterns')
    let g:neocomplete#omni_patterns = {}
endif
let g:neocomplete#omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" <TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ neocomplete#start_manual_complete()
  function! s:check_back_space() "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction"}}}
