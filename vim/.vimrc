let $v = expand('~/.vim')

filetype plugin indent on  
syntax on

set nocompatible
" indent settings
set autoindent
set cinoptions    =l1,p0,)50,*50,t0
set expandtab
set smarttab
set softtabstop   =4
set shiftwidth    =4
set shiftround
" backup/swap/info/undo settings
set nobackup
set nowritebackup
set undofile
set swapfile
set backupdir   =$v/files/backup
set directory   =$v/files/swap//
set undodir     =$v/files/undo
set viewdir     =$v/files/view
set viminfo     ='100,n$v/files/viminfo'
" better navigation
set cursorline
set foldmethod    =marker
set foldopen     -=hor
set foldopen     +=jump
set foldtext      =mhi#foldy()
set hlsearch
set incsearch
set mouse         =a
set scrolloff     =4
set sidescroll    =5
set ignorecase
set smartcase
set tagcase       =match
" misc settings
set autoread
set backspace     =indent,eol,start
set clipboard     =unnamed
set complete     -=i
set completeopt  +=noselect
set diffopt      +=vertical,foldcolumn:0,indent-heuristic,algorithm:patience
set fileformats   =unix,dos,mac
set hidden
set history       =1000
set lazyredraw
set more
set mousemodel    =popup
set noautowrite
set noautowriteall
set noequalalways
set noerrorbells
set nofsync
set nojoinspaces
set wrapscan
set nrformats     =hex
set pastetoggle   =<F5>
set norelativenumber
set report        =0
set sessionoptions-=options
set sessionoptions+=localoptions
set showfulltag
set showtabline   =1
set splitbelow
set splitright
set switchbuf     =
set synmaxcol     =200
set tags         ^=./.git/tags;
set timeout
set timeoutlen    =1000
set titlestring   =VIM:\ %f
set ttimeout
set ttimeoutlen   =10
set ttyfast
set virtualedit   =onemore,block
set whichwrap     =h,l
" display settings
set display      +=lastline
set laststatus    =2
set list
set modeline
set modelines     =1
set nostartofline
set numberwidth   =1
set ruler
set shortmess     =aoOTI
set showcmd
set showmatch
set showmode
set background=dark

if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align', {'on': '<plug>(LiveEasyAlign)'}
Plug 'junegunn/vim-plug'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'rhysd/vim-clang-format'
Plug 'python-mode/python-mode'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-crates'
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-lookup'
Plug 'mhinz/vim-sayonara', {'on': 'Sayonara'}
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox          

let mapleader = ';'
nnoremap \ ;

inoremap jj <Esc>
nnoremap <silent> <C-p> :bp<CR>
nnoremap <silent> <C-n> :bn<CR>

nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>

nnoremap }   }zz
nnoremap {   {zz
nnoremap ]]  ]]zz
nnoremap [[  [[zz
nnoremap []  []zz
nnoremap ][  ][zz

nnoremap g; g;zvzz
nnoremap g, g,zvzz

nnoremap <c-left>   <C-w>>
nnoremap <c-right>  <C-w><
nnoremap <c-up>     <C-w>-
nnoremap <c-down>   <C-w>+

xnoremap < <gv
xnoremap > >gv

onoremap gv  :<c-u>normal! gv<cr>

nnoremap Q gqap

nnoremap <leader>w :update<CR>
nnoremap <leader>x :xit<CR>

nnoremap <leader>c :noh<bar>diffupdate<bar>call clearmatches()<bar>syntax sync fromstart<CR><c-l>

nnoremap <leader>f :FZF<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>t :NERDTree<CR>
nnoremap <leader>st :Startify<CR>
xnoremap <CR> <plug>(LiveEasyAlign)

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

let g:startify_change_to_dir       = 0
let g:startify_enable_special      = 0
let g:startify_fortune_use_unicode = 1
let g:startify_update_oldfiles     = 1
let g:startify_use_env             = 1

let g:NERDTreeWinSize = 30
let g:NERDTreeIgnore = ['\.pyc$', '\.git$', '__pycache__']

let g:fzf_layout = {'down': '40%'}

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_theme = 'gruvbox'

let g:rainbow_active = 1

