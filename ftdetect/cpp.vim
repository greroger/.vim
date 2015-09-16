set number

set textwidth=80
set colorcolumn=-2
set tabstop=4
set shiftwidth=4
set expandtab

" Help keep the code under 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Use all the colors
set t_Co=256
" Use syntax highlighting
syntax on

" My prefered indenting options
set cinoptions=g0,:0,(0,N-s,t0

" Don't want single line comments to continue
setlocal comments-=://
setlocal comments+=f://

" Set up a save and build key
nmap <Leader>m :wa<CR>:make<CR>

let g:alternateSearchPath = 'wdr:src/**,wdr:include/**,sfr:../source,sfr:../src,sfr:../include,sfr:../inc'
