set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plugin 'easymotion/vim-easymotion'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
Plugin 'benmills/vimux'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'leafgarland/typescript-vim'
Plugin 'w0rp/ale'
Plugin 'ap/vim-css-color'
Plugin 'ekalinin/dockerfile.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader=" "

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

set laststatus=2
let g:airline_powerline_fonts = 1

map <silent> <C-n> :NERDTreeToggle<CR>

" let g:gitgutter_sign_column_always = 1
set signcolumn=yes

set updatetime=250

set backspace=indent,eol,start
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set number
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set spell spelllang=en_us
set mouse=a

let g:indent_guides_auto_colors=0
hi IndentGuidesEven ctermbg=235
hi IndentGuidesOdd ctermbg=234
let g:indent_guides_enable_on_vim_startup=1

map <Leader>vo :call VimuxOpenRunner()<CR>
map <Leader>vc :call VimuxCloseRunner()<CR>

if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

let g:airline#extensions#ale#enabled = 1
