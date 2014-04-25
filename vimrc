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




"add the following lines to .bashrc : to prevent ctr+s from freezing terminal:

"# turn off Ctrl + s XOFF (XON is Ctrl + q)
"stty ixany
"stty ixoff -ixon
"stty stop undef
"stty start undef


map <C-a> GVgg
map <C-n> :enew
map <C-o> :e . <Enter>
map <C-s> :w <Enter>
imap <C-s> <ESC>:w<cr>a

map <C-c> y
imap <C-c> <ESC> :y <Enter>

map <C-v> p
imap <C-v> <ESC> :p <Enter>

map <C-x> d
imap <C-x> <ESC> :d <Enter>

map <C-z> u
imap <C-z> <ESC> :u <Enter>


map <C-t> :tabnew <Enter>
map <C-i> >>

map <C-w> :close <Enter>
imap <C-w> <ESC>:close<cr>

map <C-q> :q<cr>
imap <C-q> <ESC>:q<cr>

"map <C-W> :q! <Enter>
map <C-f> /
map <F3> n
map <C-h> :%s/
map <S-t> vat
map <S-T> vit
map <S-{> vi{
map <S-(> vi(
map <S-[> vi[






