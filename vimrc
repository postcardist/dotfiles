
" Pathogen stuff
execute pathogen#infect()
syntax on
filetype plugin indent on

"For Litecorrect
filetype plugin on       " may already be in your .vimrc

augroup litecorrect
	  autocmd!
	    autocmd FileType markdown,mkd call litecorrect#init()
		  autocmd FileType textile call litecorrect#init()
	  augroup END

set nocompatible " Use vim like it’s 2017

set number " Line numbering

set hlsearch " Highlight search results

set incsearch " Set incremental search

" Set up spellchecker
set spelllang=en_gb
set spell

" Set text width
set textwidth=80

" Set tabstops every 4 spaces and set the shiftwidth as 4 spaces
set ts=4 sw=4

set showmatch " Shows matching brackets
set ruler " Always shows location in file (line#)
set smarttab " Autotabs for certain code

" Set  colour scheme
colo desert

" Switch spellchecker off
:map <F5> :set nospell<CR>

" Enable airline tagbar
let g:airline#extensions#tabline#enabled = 1

" Disable folding for vim-pandoc
let g:pandoc#modules#disabled = ["folding"]

" Turn wildmenu on
set wildmenu

" Set up pencil for markdown
augroup pencil
	  autocmd!
	    autocmd FileType markdown,mkd,md call pencil#init()
		  autocmd FileType text         call pencil#init()
	  augroup END

" Toggle NERDtree
map <silent> <C-n> :NERDTreeToggle<CR>

" Toggle Goyo plugin
map <silent> <C-G> :Goyo <CR>

