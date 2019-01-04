set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
func! WordProcessorMode()
		setlocal textwidth=80
		setlocal smartindent
		setlocal spell spelllang=en_us
		setlocal noexpandtab
endfu
com! WP call WordProcessorMode()
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
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
