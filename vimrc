execute pathogen#infect()

"Theme
filetype on
syntax on
colorscheme onedark
" colorscheme Tomorrow-Night

set colorcolumn=120
set number

let mapleader=" "

map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

"Indentation
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"Highlight found words
set hlsearch

"Highlight parenthesis
set showmatch

"NERDtree
" autocmd vimenter * NERDTree "Always open the tree when booting Vim,
" autocmd VimEnter * wincmd p "but don’t focus it:
autocmd VimEnter * NERDTree ~/Projects

let NERDTreeMapActivateNode='<right>' "Hit the right arrow to open a node
let NERDTreeIgnore=['\~$', '\.swp'] "Do not display some useless files in the tree
let g:NERDTreeWinSize=40 "Size

nmap <leader>n :NERDTreeToggle<CR>  "Toggle display of the tree
nmap <leader>j :NERDTreeFind<CR> "Locate the focused file in the tree

"Move between tabs
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffers
nnoremap <S-w>       :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <S-Left>    :bprevious<CR>
nnoremap <S-Right>   :bnext<CR>
nnoremap <C-t>       :new<CR>

"
map <C-s> :w

"Resize NERDtree
nnoremap <leader>+ 10<C-w>>
nnoremap <leader>- 10<C-w><

" CSS sort
nmap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>


