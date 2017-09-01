" Vundle Setup
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
call vundle#end()
"General Setup
syntax on
filetype plugin indent on
set t_Co=256
set number
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set ai
set si
set wrap
set laststatus=2
set cursorline
set wildmenu
set lazyredraw
hi CursorLine cterm=bold
hi CursorLineNr term=bold ctermfg=Yellow
hi Pmenu ctermfg=Black ctermbg=Grey
hi PmenuSel cterm=bold ctermfg=Black ctermbg=White
nnoremap <C-Up> <C-W><C-J>
nnoremap <C-Down> <C-W><C-L>
nnoremap <C-Right> <C-W><C-K>
nnoremap <C-Left> <C-W><C-H>
"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting=0
"Airline settings
set noshowmode
let g:airline_powerline_fonts = 1
"NERDTree settings
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd l
