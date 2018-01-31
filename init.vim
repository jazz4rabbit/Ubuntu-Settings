set guicursor=
"let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
" editor
set nu
set ts=4 "tabstop
set sts=4 "softtabstop
set sw=4 "shiftwidth
set expandtab
set autoindent
set smartindent
set cindent
set wrap

set encoding=utf-8
if !exists("g:syntax_on")
    syntax enable
endif

" NERDTree
nmap <F3> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
"let g:molokai_original = 1
" colorscheme and airline
"syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'hybrid'
"let g:airline_powerline_fonts = 1
"
"set laststatus=2
"let g:Powerline_symbols = 'fancy'


set splitbelow
"neovim
if has('nvim')
    :tnoremap <C-h> <C-\><C-n><C-w>h
    :tnoremap <C-j> <C-\><C-n><C-w>j
    :tnoremap <C-k> <C-\><C-n><C-w>k
    :tnoremap <C-l> <C-\><C-n><C-w>l
endif


"nmap <F4> :bel sp 50<CR> :resize 10<CR> :term<CR>
"nmap <F4> :new<CR>:wincmd j<CR>:resize 5<CR>:terminal<CR>

"deoplate enviroment
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header ='/usr/lib/llvm-3.8/include/'

let g:deoplete#enable_smart_case = 1
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"

inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/jazz4rabbit/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/jazz4rabbit/.local/share/dein')
  call dein#begin('/home/jazz4rabbit/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/jazz4rabbit/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  " deoplete
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-clang')
  " tender color scheme
  "call dein#add('jacoborus/tender.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-fugitive')
  "call dein#disable(['vim-airline-themes'])
  call dein#add('scrooloose/nerdtree')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('vimlab/split-term.vim')

  "latex
  call dein#add('donRaphaco/neotex', {'on_ft' : 'tex'})

  " You can specify revision/branch/tag.
  ""call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })
  call deoplete#enable()

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
filetype plugin on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

