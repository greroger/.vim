" This just works better
let mapleader=","

set nocompatible

execute pathogen#infect()
execute pathogen#helptags()

set encoding=utf-8
set mouse+=a
if exists('$TMUX')  " Support resizing in tmux
	set ttymouse=xterm2
end

syntax on
set t_Co=256
" Easy on the eyes
set background=dark
colorscheme solarized

" Move all the specific config to seperate files
filetype plugin indent on

" I like multiple files
set hidden

set switchbuf=useopen,usetab

" I like a status line
set laststatus=2

set cmdheight=3

" Deal with the window titles
if &term =~ "screen.*"
	set t_ts=k
	set t_fs=\
endif
if &term =~ "screen.*" || &term =~ "xterm.*"
	set title
endif

" Search options
set showmatch
set ignorecase
set smartcase
set incsearch
set scrolloff=5
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Setup completion
set wildmode=list:longest
set wildmenu

" Replace default to global
set gdefault

" Fix the damn backspace
set backspace=indent,eol,start

" Toggle nerd tree window
nmap <Leader>n :NERDTreeToggle<CR>

" Moving through errors and grep's
"nnoremap <C-n> :cn<CR>
"nnoremap <C-p> :cp<CR>

" Speed up switching windows
"map <C-h> :wincmd h<CR>
"map <C-j> :wincmd j<CR>
"map <C-k> :wincmd k<CR>
"map <C-l> :wincmd l<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#show_buffers = 0
let g:airline#extensions#show_close_button = 0

set noshowmode

" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>
nmap <leader>t :tabnew<CR>

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" TagList options
let Tlist_Show_One_File = 1
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_WinWidth = 40
let Tlist_Sort_Type = 'name'
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1

set rtp+=~/.fzf

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'FZF' s:find_git_root()
