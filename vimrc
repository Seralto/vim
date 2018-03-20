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
map <leader>p :NERDTree ~/Projects<CR>

"Re-Open previously opened file
nnoremap <Leader><Leader> :e#<CR>

"Toggle display of the tree
nmap <leader>n :NERDTreeToggle<CR>  

"Locate the focused file in the tree
nmap <leader>j :NERDTreeFind<CR>

"Keep more info in memory to speed things up:
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

"Swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"Highlight found words
set hlsearch

"Cancel highlight found words 
nnoremap \\ :noh<return>

"Highlight parenthesis
set showmatch

"Remove whitespaces on save. 
autocmd BufWritePre * :%s/\s\+$//e

"Hit the right arrow to open a node
let NERDTreeMapActivateNode='<right>' 

"Do not display some useless files in the tree
let NERDTreeIgnore=['\~$', '\.swp'] 

"Size
let g:NERDTreeWinSize=40

"Gitgutter space always 1
set signcolumn=yes

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

