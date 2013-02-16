""" Drop legacy support
set nocompatible
set ttyfast

""" Set the Leader
let mapleader=","

""" History
set history=1000

""" Encoding
set encoding=utf-8
set showmode
set showcmd

""" Try recognizing dos, unix, and mac line endings.
set ffs=unix,dos,mac

""" Filetypes
filetype plugin on
filetype plugin indent on

""" Syntax highlighting
syntax on

""" Line numbers
set number

""" Eyecandy
set t_Co=256
""" colorscheme zenburn

""" Incremental search
set incsearch

""" Max line length
set textwidth=79

""" Tabs and spaces
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent

""" Conserve sanity
cmap W w
cmap Q q

""" KeyBindings

""" Easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""" Disable Help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

""" Set backup directories
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

""" Remember cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

