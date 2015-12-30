" Needed on some linux distros.
" see http://blog.adamlowe.com/2009/12/vim-destroys-all-other-rails-editors.html
filetype off
let $VIMHOME=$HOME.'/.vim'

if has("win32") || has("win64")
  language messages en
  set langmenu=none
  set directory=.,$TEMP
  let $VIMHOME=$HOME.'/vimfiles'
endif

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible
set backspace=indent,eol,start
set history=5000		" keep 5000 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set mouse=a
syntax on
set hlsearch
set encoding=utf-8

set fileencodings=utf-8,cp1251,koi8-r,cp866,ucs-bom

filetype plugin indent on
autocmd FileType text setlocal textwidth=100
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif
" trim whitespaces
"autocmd BufWritePre * :%s/\s\+$//e

colorscheme vividchalk
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set number
set nowrap
set winminheight=0
set foldmethod=indent
set foldlevelstart=99 " all folds are opened
set guioptions-=T
if has("gui_gtk2") || has("gui_gtk3")
  set guifont=Monospace\ 14,Andale\ Mono\ 14
elseif has("gui_win32")
  set guifont=Lucida_Console:h13
else
  set guifont=Monaco:h14
end

set tags+=~/.vim/systags

set undofile              " Save undo's after file closes
let &undodir=$VIMHOME.'/undo' " where to save undo histories
set undolevels=1000       " How many undos
set undoreload=10000      " number of lines to save for undo

let NERDTreeIgnore=['\~$', '\.o$', '\.so$']

let g:NERDCustomDelimiters = { 'ledger': { 'left': ';' } }

cabbr <expr> %% expand('%:h')

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-n> <C-w>n
nmap <C-u> <C-w>-

" Avoid pasting when scrolling in normal mode
nmap <MiddleMouse> <Nop>

nmap <C-s> :syn sync fromstart<CR>

vmap <C-Insert> "+y
nmap <S-Insert> "+p
imap <S-Insert> <C-o><S-Insert>

nmap <Home> ^
imap <Home> <Esc>^i

" Jump to next row in editor, not next line
nnoremap j gj
nnoremap k gk

" disable beeping and flashing
autocmd VimEnter * set vb t_vb=

" no italic in comments
highlight Comment gui=NONE

" select last pasted (or edited) text: http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

command! TODO execute 'vimgrep /TODO\c\|FIXME/g '.expand('%') | copen
command! Tododo execute 'vimgrep /todo/g '.expand('%') | copen

map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >

