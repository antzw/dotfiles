" Basic Vim Settings
set nocompatible
set encoding=utf-8
set number
set relativenumber
syntax on

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

" Plugin manager
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-sleuth'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
Plug 'neoclide/coc-json'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Theme & UI
set background=dark
colorscheme gruvbox
let g:indentLine_char = '▏'
let g:lightline = {'colorscheme': 'wombat'}

" coc.nvim keybindings
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> K :call CocActionAsync('doHover')<CR>

" NERDTree toggle
nmap <silent> <F2> :NERDTreeToggle<CR>

" Language-specific indent rules
augroup LanguageIndent
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
  autocmd FileType javascript,typescript setlocal expandtab shiftwidth=2 softtabstop=2
  autocmd FileType c,cpp,go setlocal noexpandtab shiftwidth=4 softtabstop=4
augroup END
