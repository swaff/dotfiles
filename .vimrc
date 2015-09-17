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
call plug#end()

set t_Co=256
syntax enable
set background=dark
colorscheme solarized

set winwidth=92

map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>
map <C-l> <C-w>l
map <C-h> <C-w>h
imap kj <esc>

set complete=.,b,u,]
set wildmode=longest,list:longest
imap <Tab> <C-P>

" For git, add spell checking and set wrapping to 72 chars "
autocmd Filetype gitcommit setlocal spell textwidth=72
