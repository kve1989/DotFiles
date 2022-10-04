call plug#begin()
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Appearance
Plug 'ryanoasis/vim-devicons'

" Status line
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" color schemas
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'arcticicestudio/nord-vim'
call plug#end()

syntax on

set encoding=UTF-8
set background=dark
set number
set ruler
set laststatus=2
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set showmatch
set mouse=a
set nowritebackup
set nobackup
set noswapfile
set autoindent

highlight Whitespace ctermfg=Grey
highlight Comment cterm=italic
highlight CursorLine cterm=NONE ctermbg=Black 

" NERDTree
nnoremap <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']

if (has('termguicolors'))
  set termguicolors
endif

" colorscheme OceanicNext
" let g:material_terminal_italics = 1
" variants: default, palenight, ocean, lighter, darker, default-community,
"           palenight-community, ocean-community, lighter-community,
"           darker-community
" let g:material_theme_style = 'darker'
" colorscheme material

" colorscheme ayu
" variants: mirage, dark, dark
" let ayucolor="mirage"

" colorscheme nord
colorscheme dracula
" colorscheme gruvbox

" Airline
set statusline=2
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'