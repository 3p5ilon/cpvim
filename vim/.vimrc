colorscheme jellybeans
"colo desert
"colo darkblue
 
 
"set exrc
 
 
noremap <F1> <ESC>:tabprev <CR>
vnoremap <F1> <ESC>:tabprev <CR>
inoremap <F1> <ESC>
 
noremap <F3> <ESC> :w <CR> :make <CR>
inoremap <F3> <ESC> :w <CR> :make <CR>
 
"noremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
"inoremap <F4> <ESC> :w <CR> :!pycodestyle %<.py <CR>
 
"noremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>
"inoremap <F5> <ESC> :w <CR> :!pytest %<.py <CR>

noremap <F8> :w <CR> :!g++ -o %:r % && cat input.txt 2> /dev/null \| ./%:r <CR>
inoremap <F8> :w <CR> :!g++ -o %:r % && cat input.txt 2> /dev/null \| ./%:r <CR>

noremap <F10> <ESC> :w <CR> :!g++ -std=c++17 -DONPC -O2 -o %< % && ./%< < input.txt<CR>
inoremap <F10> <ESC> :w <CR>  :!g++ -std=c++17 -DONPC -O2 -o %< % && ./%< < input.txt<CR>

noremap <TAB> %
 
call plug#begin('~/.vim/plugged')
 
Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'honza/vim-snippets'
 
Plug 'tpope/vim-commentary'

"Plug 'gilligan/vim-lldb'
 
call plug#end()
":PlugInstall
 
let c_syntax_for_h=""
 
let g:netrw_keepdir = 0
 
let g:netrw_localrmdir='rm -r'
 
let mapleader = "\<Space>"
noremap <Leader>b ^
noremap <Leader>e <ESC>:e .<CR>
noremap <Leader>r <C-R>
noremap <Leader>j <C-W><C-J>
noremap <Leader>u i_<ESC>r
noremap <Leader>n :vs 
noremap <Leader>q :q<CR>
noremap <Leader>o <C-O>
noremap <Leader>i <C-I>
noremap <Leader>a ggVG
noremap <Leader>/ 0i//<ESC>
noremap <Leader>s :source ~/.vimrc <CR>
 
command! Prog :e ~/Documents/programming/
command! SP :e ~/Documents/SPBU_SP_6_term/
command! Kek source ~/.vimrc
"autocmd FocusLost * redraw!
"command! LLDB :!clang++ -fsanitize=address -std=c++17 -O0 -g -o "%<" "%" && lldb %<
command! Gdb !g++ -std=c++17 -O0 -g -o %< 


set relativenumber
set hls
set is
set cb=unnamed
set gfn=Fixedsys:h10
set ts=4
set linespace=5
set sw=4
set si 
set autoindent
set autoread
set cin
set expandtab
set guifont=Menlo\ Regular:h16
set history=1000
set hlsearch
set ignorecase
set incsearch
set mousehide
set noerrorbells
set noswapfile
set number
set pastetoggle=
set shiftwidth=4
set smarttab
set tabstop=4
set vb t_vb=
"set relativenumber
 
filetype on
filetype plugin on
autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+17\ \-Wall
autocmd FileType haskell setlocal makeprg=ghci\ %
autocmd FileType python setlocal makeprg=python3\ %
autocmd FileType sh setlocal makeprg=%
 
syntax on
 
set shellslash
filetype indent on
let g:tex_flavor='latex'
set sw=4
set iskeyword+=:

