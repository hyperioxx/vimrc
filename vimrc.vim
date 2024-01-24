call plug#begin('~/.vim/plugged')

" Plugins
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot' " For better syntax highlighting

call plug#end()

" Basic Settings
set number
syntax enable
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set ruler
set wrap
set cursorline

" Theme
colorscheme gruvbox
set background=dark

" NERDTree
map <C-b> :NERDTreeToggle<CR>

" vim-airline settings
let g:airline_theme='dark' " or any other theme that closely resembles VSCode
let g:airline#extensions#tabline#enabled = 1 
let g:airline#extensions#tabline#left_sep = ' ' 
let g:airline#extensions#tabline#left_alt_sep = '|' 

" CoC Settings
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-python'] " Add other extensions as needed


" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for documentation in hover
nmap <silent> K  <Plug>(coc-hover)

" Make <TAB> and <S-TAB> work for autocompletions:
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Confirm selection with <Enter>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"


" Note: To make it even more similar, consider searching for a vim colorscheme 
" that closely matches the default VSCode theme.

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
