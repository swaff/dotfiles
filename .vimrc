set ruler
set cursorline
set number
set tabstop=4 shiftwidth=4 expandtab

call pathogen#infect()
syntax on

filetype plugin indent on

syntax enable

" Solarized stuff
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized

map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>
imap kj <esc>
" For git, add spell checking and set wrapping to 72 chars "
autocmd Filetype gitcommit setlocal spell textwidth=72
