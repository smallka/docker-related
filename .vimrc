set tabstop=8
set shiftwidth=8
set noexpandtab

set nocompatible

set cindent
set autoindent
set cursorline
set fileencodings=utf-8,cp936
set hlsearch
set incsearch
colo desert

syntax on
filetype on

if $VIM_HATE_SPACE_ERRORS != '0'
    let c_space_errors=1
endif

set laststatus=2
if has("statusline")
    set statusline=%<%f\ %h%m%r%=[%Y]\ [%{&ff}]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l/%L:%c%)\ %P
endif
