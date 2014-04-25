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
