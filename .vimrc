set backspace=indent,eol,start
set showmatch
set nocompatible
set number
"set tabstop=4
"set expandtab
"set shiftwidth=4
"set softtabstop=0

filetype off

if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/unite.vim.git'

filetype plugin indent on

NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Flake8-vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'git://github.com/kevinw/pyflakes-vim.git'

call neobundle#end()

NeoBundleCheck

let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'mccbe,pyflakes'
let g:PyFlakeDefaultComplexity=10

let g:syntacstic_python_checkers = ['pyflakes', 'flake8']
let g:loaded_syntastic_python_pylint_checker = 0
let g:syntastic_mode_map = {
	\ 'mode': 'acive',
	\ 'active_filetypes': ['php', 'coffeescript', 'sh', 'vim'],
	\ 'passive_filetypes': ['html', 'haskell', 'python']
    \}
