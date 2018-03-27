execute pathogen#infect()

"----------Basic setup--------------------
"colorscheme Tomorrow-Night
colorscheme onedark

filetype indent on
filetype on
set autoindent
set colorcolumn=120
set expandtab
set hlsearch
set mouse=a
set noswapfile
set nowrap
set number
set shiftwidth=2
set showmatch
set signcolumn=yes
set smartindent
set tabstop=2
syntax on

"----------Genaral config----------
"Remap leader key
let mapleader=" "

"Swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"Reload .vimrc file
map <leader>s :source ~/.vimrc<CR>

"Cancel highlight found words
nnoremap \\ :noh<return>

"Remove whitespaces on save.
autocmd BufWritePre * :%s/\s\+$//e

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

"Change current directory
map <F4> :cd %:h<CR>

"**********Plugins**********

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

