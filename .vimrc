set ruler
set number
set tabstop=4 shiftwidth=4 expandtab
set scrolloff=4 " Keep at least 4 lines below cursor
set incsearch " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
syntax enable


call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-cucumber'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>
map <C-l> <C-w>l
map <C-h> <C-w>h
imap kj <esc>

" For git, add spell checking and set wrapping to 72 chars "
autocmd Filetype gitcommit setlocal spell textwidth=72
