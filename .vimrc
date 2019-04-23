" Display settings
set number 			" show line number
set title			" set terminal title 
set cursorline			" Add a background color to the cursoe line
"set cursorcolumn		" Add a background color to the cursor column
set showmatch  			" highlight the corresponding parenthesis
set matchtime=5			" Show corresponding parentheses quickly
set ruler			" Show ruler

" Search Settings
set hlsearch			" Highlight search string
set incsearch			" Enable incremental search
set ignorecase			" search case insensitive
set smartcase			" Distinguish only when mixing upper and lowercase letters

" Other settings
set backspace=indent,eol,start  " specify what can be deleted with backspace key
set nocompatible		" Diable vim compatible behavior
set autoread			" If the file has been changed externally, read it again
set mouse=a			" Accept mouse input
set history=10000		" Save command line history
set visualbell t_vb=		" Disable beep
set noerrorbells		" Disable beep on error occasion
set hidden			" Move the buffer even if there are unsaved changes
"set spell			" Enable vim's spelling checker
"set spelllang=en,cjk		" Exclude errors in JP, with spelling checker in English

"set tabstop=4
"set expandtab
"set shiftwidth=4
"set softtabstop=0

filetype off

if &compatible
 set nocompatible
 endif
 " Add the dein installation directory into runtimepath
 set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')


   " プラグインリストを収めたTOMLファイル
  let g:dein_dir = expand('~/.cache/dein')
  let s:toml = g:dein_dir . '/dein.toml'
  let s:lazy_toml = g:dein_dir . '/dein_lazy.toml'

  " TOMLファイルにpluginを記述
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  call dein#add('~/.cache/dein')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('deoplete-plugins/deoplete-jedi')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  "call dein#add('powerline/powerline', {'rtp': 'powerline/bindings/vim/'})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

" for deocomplete
imap <Nul> <C-Space>

if !has('gui_running')
  augroup term_vim_c_space
    autocmd!
    autocmd VimEnter * map <Nul> <C-Space>
    autocmd VimEnter * map! <Nul> <C-Space>
  augroup END
endif

" for indentline
let g:indentLine_char = '|'

" for easy align
vmap <Enter> <Plug>(EasyAlign)

" for vimfiler
let g:vimfiler_as_default_explorer = 1

" for flashy
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

" for vim-powerline
set laststatus=2	" Always display the statusline in all windows
set showtabline=2	" Always display the tabline, even if there is only one tab
set noshowmode		" Hide the default mode text(e.g. -- INSERT -- below the statusline)
let g:powerline_pycmd="python3"

" for Syntastic
let g:syntacstic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args="--max-line-length=120"

let g:loaded_syntastic_python_pylint_checker = 0
let g:syntastic_mode_map = {
	\ 'mode': 'acive',
	\ 'active_filetypes': ['php', 'coffeescript', 'sh', 'vim'],
	\ 'passive_filetypes': ['html', 'haskell', 'python']
    \}

" for neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
	set conceallevel=2 concealcursor=niv
endif

"set snippet file dir
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets/,~/.vim/snippets'

" key bindings
" split window horizontally
nnoremap ss :split<cr>
" split window vertically
nnoremap sv :vsplit<cr>

" move to left window
nnoremap sh <C-w>h
" move to lower window
nnoremap sj <C-w>j
" move to upper window
nnoremap sk <C-w>k
" move to right window
nnoremap sl <C-w>l
" move next
nnoremap sw <C-w>w

" move window left 
nnoremap sH <C-w>H
" move to lower window
nnoremap sJ <C-w>J
" move to upper window
nnoremap sK <C-w>K
" move to right  window
nnoremap sL <C-w>L
" rotate window
nnoremap sr <C-w>r

" maximize window size 
nnoremap so <C-w>_<C-w>|
" equalize window size
nnoremap s= <C-w>=
" increase window width
nnoremap s> <C-w>>
" decrease window sidth
nnoremap s< <C-w><
" increase window height
nnoremap s+ <C-w>+
" decrease window height
nnoremap s- <C-w>-

" quite current window 
nnoremap sq :q<cr>
" quite current buffer
nnoremap sQ :bd<cr>
" save current window
nnoremap sw :w<cr>
" quite current window after save
nnoremap wq :wq<cr>
" generate new tab
nnoremap st :tabnew<cr>
" move next tab
nnoremap sn gt
" move previous tab
nnoremap sp gT

" for Unite
" show tab
nnoremap ut :Unite tab<cr>
" show file
nnoremap uf :Unite file<cr>
" show file recursivelly
nnoremap uF :Unite file_rec<cr>
" show buffer
nnoremap ub :Unite buffer<cr>
" add bookmark
nnoremap uM :UniteBookmarkAdd<cr>
" open bookmark
nnoremap um :Unite bookmark<cr>
