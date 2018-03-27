execute pathogen#infect()

"Basic setup
set colorcolumn=120
set number
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
filetype on
syntax on
colorscheme onedark
"colorscheme Tomorrow-Night

let mapleader=" "

map <leader>s :source ~/.vimrc<CR>

"----------NERDTree----------
"Open NERDTree in ~/Projects
map <leader>p :NERDTree ~/Projects<CR>

"Open NERDTree in current directory
map <leader>pp :NERDTreeCWD<CR>

"Re-Open previously opened file
nnoremap <Leader><Leader> :e#<CR>

"Toggle display of the tree
nmap <leader>n :NERDTreeToggle<CR>

"Locate the focused file in the tree
nmap <leader>j :NERDTreeFind<CR>

"Hit the right arrow to open a node
let NERDTreeMapActivateNode='<right>'

"Size
let g:NERDTreeWinSize=40

"Resize NERDtree
nnoremap <leader>+ 10<C-w>>
nnoremap <leader>- 10<C-w><

"----------CtrlP----------
"Ignore stuff
let g:ctrlp_custom_ignore = 'node_modules|git'

"Only current folder
let g:ctrlp_working_path_mode = 'ra'

"----------Autoformat----------
noremap <F3> :Autoformat<CR>
au BufWrite * :Autoformat

"----------Genaral config----------
"Keep more info in memory to speed things up:
set hidden
set history=100

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

"Gitgutter space always 1
set signcolumn=yes

"Move between tabs
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"Move lines
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>

"Buffers
nnoremap <S-w>       :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <S-Left>    :bprevious<CR>
nnoremap <S-Right>   :bnext<CR>
nnoremap <C-t>       :new<CR>

"Save
map <C-s> :w<CR>

"CSS sort
nmap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>

"Copy all to clipboard
nmap <C-y> ggyG

"Change cursor on Nomal/Insert mode
:autocmd InsertEnter,InsertLeave * set cul!

"IndentLine
nnoremap <leader>/ :IndentLinesToggle<CR>

"CtrlP ag
nnoremap <c-f> :CtrlPag<cr>
vnoremap <c-f> :CtrlPagVisual<cr>
nnoremap <leader>ca :CtrlPagLocate
nnoremap <leader>cp :CtrlPagPrevious<cr>
let g:ctrlp_ag_ignores = '--ignore .git
    \ --ignore "deps/*"
    \ --ignore "_build/*"
    \ --ignore "node_modules/*"'
