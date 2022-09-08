imap jj <Esc>

set nocompatible
set number
syntax enable
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set hlsearch
set ruler
set visualbell
set cursorline
"set mouse=a
set ttyfast

noremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

" -----------------------------------------------------
" PLUGINS
" -----------------------------------------------------
call plug#begin('~/.vim/plugged')
  " Color theme
  Plug 'flazz/vim-colorschemes'

	Plug 'xiyaowong/nvim-transparent'

	" Auto completion
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }

	" Comment
	Plug 'preservim/nerdcommenter'

	" Status bar
	Plug 'itchyny/lightline.vim' 
  "Plug 'vim-airline/vim-airline'
	"Plug 'vim-airline/vim-airline-themes'

	" Directory tree
	Plug 'scrooloose/nerdtree'

	" Syntax highlighting for languages
	Plug 'sheerun/vim-polyglot'

	" Syntax highlighting for languages
	Plug 'sheerun/vim-polyglot'

	" Fuzzy finder
  "Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  "Plug 'junegunn/fzf.vim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

	" Omnisharp
	Plug 'OmniSharp/omnisharp-vim'
call plug#end()

let mapleader = " "

let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --no-ignore-vcs'

" Comment
nnoremap <leader><leader>c :call NERDComment(0, "toggle")<CR>
vnoremap <leader><leader>c :call NERDComment(0, "toggle")<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Fuzzy finder
nmap <leader><leader>f :Files<cr>
nmap <leader><leader>b :Buffer<cr>
"nnoremap <leader><leader>f <cmd>Telescope find_files<CR>
"nnoremap <leader><leader>b <cmd>Telescope buffers<CR>
nnoremap <leader><Tab> :bnext<cr>
nnoremap <leader><Tab><Tab> :bprevious<cr>

" Color theme
colorscheme PaperColor

" Enable transparent
let g:transparent_enabled = v:true

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
