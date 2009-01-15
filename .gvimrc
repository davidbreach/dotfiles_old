" -----------------------------------------------------------------------------  
" |                            VIM Settings                                   |
" |                              GUI stuff                                    |
" -----------------------------------------------------------------------------  

" OS Specific *****************************************************************
if has("gui_macvim")
  " Default size of window
  set columns=120
  set lines=50
  set background=dark
  set fuoptions=maxvert,maxhorz " fullscreen options (MacVim only), resized window when changed to fullscreen
"  set guifont=Monaco:h11
"  set guifont=Monaco:h10:cANSI
  set go-=T " remove toolbar
  hi normal guibg=black
  colorscheme macvim
  set transp=5
elseif has("gui_gtk2")
  set guifont=Monaco
"  set guioptions-=T  " remove toolbar
elseif has("x11")
  set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1
elseif has("gui_win32")
  " Default size of window
  set columns=120
  set lines=70
  set background=dark
  "colorscheme darkblue
  set go-=T " remove toolbar
  colorscheme ir_black
  set guifont=Lucida\ Console:h8
end

" General *********************************************************************
"set anti " Antialias font

set ch=2		" Make command line two lines high

set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" I like highlighting strings inside C comments
let c_comment_strings=1

" Switch on syntax highlighting if it wasn't on yet.
if !exists("syntax_on")
  syntax on
endif

" Switch on search pattern highlighting.
set hlsearch

" Set nice colors
" background for normal text is light grey
" Text below the last line is darker grey
" Cursor is green, Cyan when ":lmap" mappings are active
" Constants are not underlined but have a slightly lighter background
"highlight Normal guibg=grey90
"highlight Cursor guibg=Green guifg=NONE
"highlight lCursor guibg=Cyan guifg=NONE
"highlight NonText guibg=grey80
"highlight Constant gui=NONE guibg=grey95
"highlight Special gui=NONE guibg=grey95

