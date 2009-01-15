" -----------------------------------------------------------------------------  
" |                            VIM Settings                                   |
" |                   (see gvimrc for gui vim settings)                       |
" -----------------------------------------------------------------------------  

" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" Backups *******************************************************************
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
elseif has ("gui_win32")
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
behave mswin
else
  set backup		" keep a backup file
endif

" General *******************************************************************
set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set number 		" number lines
let maplocalleader=','        " all my macros start with ,


" Searching *******************************************************************
set hlsearch
set incsearch		" do incremental searching, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Colors **********************************************************************
syntax on " syntax highlighting
colorscheme ir_black
set bg=dark
" Don't use Ex mode, use Q for formatting
map Q gq
" Use VB syntax for LIMSBasic .lbs files
"au BufNewFile,BufRead *.lbs so $HOME/.vim/syntax/limsbasic.vim
"au BufNewFile,BufRead *.lbs so $HOME/vimfiles/syntax/limsbasic.vim
au BufNewFile,BufRead *.lbs so $VIMRUNTIME/syntax/vb.vim

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

" Indenting/Tabs ********************************************************************
set autoindent		" always set autoindenting on
set si " smartindent  (local to buffer)
set sts=2		" use smart tab stop
set smarttab
set shiftwidth=2
set noexpandtab

endif " has("autocmd")

" Extra commands added by me
" Make it easy to update/reload vimrc and gvimrc
:nmap ,s :source $MYVIMRC
:nmap ,v :e $MYVIMRC
:nmap ,sg :source $MYGVIMRC
:nmap ,vg :e $MYGVIMRC

" Insert New Line **************************************************************
map <S-Enter> O<ESC> " awesome, inserts new line without going into insert mode
map <Enter> o<ESC>

" Easier maps for moving between splits ******************************************
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Tab complete menu ********************************************
set wildmenu

" Make Space go down half a page
noremap <space> <C-d>

" NERDtree options  ********************************************
" ,nn will toggle NERDTree on and off
"map <localleader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <localleader>d :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeShowBookmarks=1

" FuzzyFinder options  ********************************************
map <localleader>ff :FuzzyFinderFile <CR>
map <localleader>ffm :FuzzyFinderMruFile <CR>
map <localleader>ffd :FuzzyFinderDir <CR>

