" not trying to be vi compatible
set nocompatible
filetype on
filetype plugin on
filetype indent on

" autocomplete
noremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
"inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == '\"' ? "\<Right>" : "\"\"\<Left>"

" syntax highlighting
syntax on
set number
set visualbell
set ruler
set hlsearch

" pasting
set pastetoggle=<F4>

" finding files
set path+=**
set wildmenu

" file browsing
let g:netrw_banner=0 " disable banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" colors 
colorscheme koehler " peachpuff er også et godt tema
highlight Comment ctermfg=green

"set wrap
set textwidth=79
set formatoptions=tcqrn1
set shiftwidth=2
set noshiftround

" tab
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ai

" cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" rendering
set ttyfast

" compile and run (python, c)
map <F5> :w <CR> :!py % <CR>
autocmd filetype c nnoremap <F6> :w! <bar> exec '!gcc '.shellescape('%') ' -o ' shellescape('%<') '&& .\'.shellescape('%:r') <CR>
" autocmd filetype c nnoremap <F6> :w! <bar> exec '!cl '.shellescape('%') ' && .\'.shellescape('%:r') <CR>
