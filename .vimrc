set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'
    Plugin 'wesleyche/SrcExpl'
    Plugin 'scrooloose/nerdtree'
    Plugin 'taglist.vim'
call vundle#end()            " required
filetype plugin indent on    " required
set t_Co=256
set et
set shiftwidth=4
set shiftround
set noexpandtab
set softtabstop=4
set tabstop=4
set autoindent
set cindent
set hlsearch
set incsearch
set nobackup
set foldmarker={{{,}}}
set foldmethod=marker
set nu
au BufNewFile,BufRead *.cu set ft=cpp
highlight Comment ctermfg=DarkCyan
colorscheme kolor

"cscope
set csprg=/usr/bin/cscope
set csto=0
set cst
set csverb
"taglist
filetype on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_IncWinwidth=0
let Tlist_Exit_OnlyWindow=0

let Tlist_Auto_Open=0
let Tlist_Use_Right_Window=1

"Source Explorer
nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:SrcExpl_winHeight=8
let g:SrcExpl_refreshTime=100
let g:SrcExpl_jumpKey= "<ENTER>"
let g:SrcExpl_gobackKey= "<SPACE>"
let g:SrcExpl_isUpdateTags=0

set colorcolumn=80
highlight SpaceError ctermbg=57
match SpaceError /[ \t]\+$/
"2match SpaceError /[^\t]\zs\t\+/

"Nerd tree
let NERDTreeWinPos="left"
nmap <F9> :NERDTreeToggle<CR>

