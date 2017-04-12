set number

set listchars=tab:>-,trail:·
set list

set textwidth=80
set colorcolumn=-2
set tabstop=4
set shiftwidth=4
set expandtab

" Help keep the code under 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" My prefered indenting options
set cinoptions=g0,:0,(0,N-s,t0

" Don't want single line comments to continue
set comments-=://
set comments+=f://

" Set up a save and build key
nmap <Leader>m :wa<CR>:make<CR>
nmap <Leader>t :wa<CR>:make test<CR>
nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprev<CR>

let g:alternateSearchPath='wdr:src/**,wdr:include/**,wdr:../common/include/**,wdr:../common/src/**,sfr:../source,sfr:../src,sfr:../include,sfr:../inc'

" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#A4E57E'

let g:indentLine_char = '┆'
