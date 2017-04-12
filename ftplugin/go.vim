set number

set listchars=tab:\|\ ,trail:·
set list

set tabstop=4
set shiftwidth=4
set noexpandtab

au FileType go nmap <leader>r :wa<CR><Plug>(go-run)
au FileType go nmap <leader>b :wa<CR><Plug>(go-build)
au FileType go nmap <leader>t :wa<CR><Plug>(go-test)
au FileType go nmap <leader>c :wa<CR><Plug>(go-coverage)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"
