setlocal textwidth=100

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
setlocal iskeyword+=:
setlocal iskeyword+=_

" enable spellcheck
setlocal spell spelllang=ru,en

" easy type no-break space in Russian keyboard layout
imap <buffer> Ё ~

" easy type some keywords in Russian keyboard layout
abbr <buffer> шеуь item
abbr <buffer> утгь enum
abbr <buffer> уйгфешщт equation
