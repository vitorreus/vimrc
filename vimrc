"
source ~/.vim/import.vim

set number

if has("gui_running")
"  colorscheme desert
"  set guioptions-=T
  set guifont=Andale\ Mono\ 11
else
"  colorscheme desert
endif
" Set terminal colors to 256
set t_Co=256

syntax enable
colorscheme monokai

"mouse support
set mouse=a "needs -X option on ssh connection?
"map <xCSI>[62~ <MouseDown> "mouse scroll mapping, but apparently its not needed, set mouse=a does the job



set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set mouse=a
set nu

:map <C-a> GVgg
:map <C-n> :enew
:map <C-o> :e . <Enter>
:map <C-s> :w <Enter>
:map <C-c> y
:map <C-v> p
:map <C-x> d
:map <C-z> u
:map <C-t> :tabnew <Enter>
:map <C-i> >>
:map <C-w> :close <Enter>
:map <C-W> :q! <Enter>
:map <C-f> /
:map <F3> n
:map <C-h> :%s/
:map <S-t> vat
:map <S-T> vit
:map <S-{> vi{
:map <S-(> vi(
:map <S-[> vi[

