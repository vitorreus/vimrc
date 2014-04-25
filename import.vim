set nocompatible

set autoindent

" - shift key (and >>) adds 4 spaces, except for LaTeX, where it adds only 2
" - softtabstop makes VIM see n spaces as a tabstop, which is useful when
" typing Backspace and Delete
set softtabstop=4
set shiftwidth=4
autocmd FileType tex setlocal shiftwidth=2 
autocmd FileType tex setlocal softtabstop=2 

" insert spaces instead of \t when Tab is pressed
set expandtab

" fix backspace (don't know why it stopped working)
set backspace=indent,eol,start

"when typing <TAB> at bginning of line, use 'shiftwidth' rather than 'tabstop'
set smarttab

" show line and column number on status bar
set ruler
set rulerformat=%l,%v

set formatoptions+=l
set lbr
set nolist

" Search for tags in ancestor directories
set tags=./tags;/

" tagbar plugin (http://www.vim.org/scripts/script.php?script_id=3465)
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 " when tagbar window is toggled, focus into it
let g:tagbar_sort = 0 " sort tags (functions, variables, ..) by name
let g:tagbar_compact = 1 " remove help message and empty lines
let g:tagbar_autoclose = 1 " close tagbar window when jumping to tag with Enter
let g:tagbar_foldlevel = 0 " folds up to this level will be displayed folded initially

" Shows command while it's typed
set showcmd

" Set colorscheme and remove gui toolbar
if has("gui_running")
  colorscheme desert
  set guioptions-=T
  set guifont=Andale\ Mono\ 9
else
  colorscheme desert
endif

" Set terminal colors to 256
set t_Co=256

" make a.vim plugin (alternate between header and code) look in src and
" include folders
let g:alternateSearchPath = 'reg:|src|include|,reg:|include|src|'

" display line numbers
set number

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" make PDF as default compilation target of vim-latex
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='evince'
" do not move to line of first error after compiling latex file
let g:Tex_GotoError=0
" compile multiple times and run bibtex when ref's or cite's change, etc
" CAVEAT: bibtex is always run
let g:Tex_MultipleCompileFormats='pdf'
" shortcut to save and compile latex when in insert mode
imap <C-k> <Esc> :w <CR> \ll <CR>
map <C-k> <Esc> :w <CR> \ll <CR>

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" place all backups and swaps in a central place
let my_backup_dir = $HOME . "/tmp/vim_backup"
if !isdirectory(my_backup_dir)
    call mkdir(my_backup_dir, "p")
endif
set backup
let &backupdir=my_backup_dir
let my_tmp_dir = $HOME . "/tmp/vim_tmp"
if !isdirectory(my_tmp_dir)
    call mkdir(my_tmp_dir, "p")
endif
let &directory=my_tmp_dir

" always keep PWD equal to directory of current buffer
"set autochdir

syntax on

" Syntastic plugin for syntax checking
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_checkers = ['gcc']

"-----------------------------------------
" Vundle plugin
" ----------------------------------------
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki forFAQ
" NOTE: comments after Bundle command are not allowed..
"
" ------------------------------------------
"  Vundle plugin end
"  -----------------------------------------
