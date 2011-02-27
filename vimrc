" Needed on some linux distros.
" see http://blog.adamlowe.com/2009/12/vim-destroys-all-other-rails-editors.html
filetype off

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

set fileencodings=utf-8,cp1251,koi8-r,cp866,ucs-bom

filetype plugin indent on
autocmd FileType text setlocal textwidth=100
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif
" trim whitespaces
autocmd BufWritePre * :%s/\s\+$//e

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
if has("gui_gtk2")
  set guifont=Monospace\ 10,Andale\ Mono\ 10
elseif has("gui_win32")
  set guifont=Lucida_Console:h12
else
  set guifont=Monaco:h12 " will just be here for the future ;)
end

set tags+=~/.vim/systags

let g:EnhCommentifyPretty = 'Yes'

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

let NERDTreeIgnore=['\~$', '\.o$', '\.so$']

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-n> <C-w>n
nmap <C-u> <C-w>-

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

