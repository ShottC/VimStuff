set nocompatible              " required
filetype off                  " required
func! WordProcessorMode()
		setlocal textwidth=80
		setlocal smartindent
		setlocal spell spelllang=en_us
		setlocal noexpandtab
endfu
com! WP call WordProcessorMode()
syntax on
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set autoindent
set smartindent 
set cindent
set colorcolumn=80
highlight ColorColumn ctermbg=darkgray
set tabpagemax=15
set showtabline=2
"header file formatting to C and set up doxygen
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
" set window nav keys to not include <C-w>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
:nnoremap <silent> [<space> :pu! _<cr>:']+1<cr>
:nnoremap <silent> ]<space> :pu _<cr>:'[-1<cr>
set number!
set nu!
set relativenumber
set rnu
nnoremap <leader>h <Esc>:call EasyMode()<CR>
nnoremap <leader>H <Esc>:call HardMode()<CR>
color northpole
