set ruler
set number
set tabstop=4 shiftwidth=4 expandtab
set scrolloff=4 " Keep at least 4 lines below cursor
set incsearch " do incremental searching
set ignorecase " case sensitive matching
set smartcase " use case sensitive mathcing if the term has capitals
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set cursorline "Highlight the line the cursor is on"
set relativenumber

runtime macros/matchit.vim

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-cucumber'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'elixir-lang/vim-elixir'
Plug 'digitaltoad/vim-pug'
Plug 'vim-scripts/ReplaceWithRegister'
call plug#end()

set t_Co=256
syntax enable
set background=dark
colorscheme solarized

set winwidth=92

map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap kj <esc>:write<CR>

set complete=.,b,u,]
set wildmode=longest,list:longest

" CtrlP settings
let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" For git, add spell checking and set wrapping to 72 chars "
autocmd Filetype gitcommit setlocal spell textwidth=72
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown


let mapleader = "\<Space>"

map <Leader>b :CtrlPBuffer<CR>
map <Leader>c :CtrlPClearCache<CR>
map <Leader>json :% ! python -m json.tool<CR>
