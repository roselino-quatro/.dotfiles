
" 
"    ██████╗ ██╗     ██╗   ██╗ ██████╗ ██╗███╗   ██╗███████╗
"    ██╔══██╗██║     ██║   ██║██╔════╝ ██║████╗  ██║██╔════╝
"    ██████╔╝██║     ██║   ██║██║  ███╗██║██╔██╗ ██║███████╗
"    ██╔═══╝ ██║     ██║   ██║██║   ██║██║██║╚██╗██║╚════██║
"    ██║     ███████╗╚██████╔╝╚██████╔╝██║██║ ╚████║███████║
"    ╚═╝     ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝  ╚═══╝╚══════╝
"

set nocompatible              " Necessary for Vundle, better configs at the cost of compatibility with Vi
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'w0rp/ale'
Plugin 'valloric/youcompleteme'
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"
"     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ ███████╗
"    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ ██╔════╝
"    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗███████╗
"    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║╚════██║
"    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝███████║
"     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝
"



" Some plugins configurations
let g:airline_powerline_fonts = 1

let g:rainbow_active = 1

let g:neocomplete#enable_at_startup = 1
let g:NERDSpaceDelims = 1 " Adds a space before comments



"
"    ███╗   ███╗ █████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
"    ████╗ ████║██╔══██╗██╔══██╗██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
"    ██╔████╔██║███████║██████╔╝██████╔╝██║██╔██╗ ██║██║  ███╗███████╗
"    ██║╚██╔╝██║██╔══██║██╔═══╝ ██╔═══╝ ██║██║╚██╗██║██║   ██║╚════██║
"    ██║ ╚═╝ ██║██║  ██║██║     ██║     ██║██║ ╚████║╚██████╔╝███████║
"    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝
"   

" Change leader key to ','
let mapleader = ","

" <leader> + f toggles relativenumber
map <leader>f :set relativenumber!<CR>

" Changes vsplit sizes
map <leader>a :vertical size -5
map <leader>s :vertical size +5

"leader + space clears search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Shortcut to hiding folds
nnoremap <space> za

" crtl+n  opens NerdTree
map <C-n> :NERDTreeToggle<CR>

" Arrows dont work anymore
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Saving with ;;
nnoremap ;; :w<CR>

" Changes panes with Ctrl + direction
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k




"
"     ██████╗ ██████╗ ██╗      ██████╗ ██████╗ ███████╗ ██████╗██╗  ██╗███████╗███╗   ███╗███████╗
"    ██╔════╝██╔═══██╗██║     ██╔═══██╗██╔══██╗██╔════╝██╔════╝██║  ██║██╔════╝████╗ ████║██╔════╝
"    ██║     ██║   ██║██║     ██║   ██║██████╔╝███████╗██║     ███████║█████╗  ██╔████╔██║█████╗
"    ██║     ██║   ██║██║     ██║   ██║██╔══██╗╚════██║██║     ██╔══██║██╔══╝  ██║╚██╔╝██║██╔══╝
"    ╚██████╗╚██████╔╝███████╗╚██████╔╝██║  ██║███████║╚██████╗██║  ██║███████╗██║ ╚═╝ ██║███████╗
"     ╚═════╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝
"

colorscheme Revolution
let g:airline_theme='ouo'

"
"    ██╗███╗   ██╗██████╗ ███████╗███╗   ██╗████████╗ █████╗ ████████╗██╗ ██████╗ ███╗   ██╗
"    ██║████╗  ██║██╔══██╗██╔════╝████╗  ██║╚══██╔══╝██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
"    ██║██╔██╗ ██║██║  ██║█████╗  ██╔██╗ ██║   ██║   ███████║   ██║   ██║██║   ██║██╔██╗ ██║
"    ██║██║╚██╗██║██║  ██║██╔══╝  ██║╚██╗██║   ██║   ██╔══██║   ██║   ██║██║   ██║██║╚██╗██║
"    ██║██║ ╚████║██████╔╝███████╗██║ ╚████║   ██║   ██║  ██║   ██║   ██║╚██████╔╝██║ ╚████║
"    ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
"
                                                                                       
filetype plugin indent on
set autoindent
set cindent " Indentation for C Language
set smartindent " General Indentation
set backspace=indent,eol,start
" New line when {}
let delimitMate_expand_cr=1
set shiftwidth=4 " Tab size on indentation
set tabstop=4 " 4 spaces tab


"
"     ██████╗ ███████╗███╗   ██╗███████╗██████╗  █████╗ ██╗     
"    ██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔══██╗██╔══██╗██║     
"    ██║  ███╗█████╗  ██╔██╗ ██║█████╗  ██████╔╝███████║██║     
"    ██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══██╗██╔══██║██║     
"    ╚██████╔╝███████╗██║ ╚████║███████╗██║  ██║██║  ██║███████╗
"     ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
"                                                           

syntax enable " Highlit for syntax
set relativenumber " relative number on line
set cursorline "highlight on current line
set wildmenu " Selection menu on command mode
set showmatch " Highlits matches on (), {}, [] etc
set lazyredraw " More efficient
set history=1000 " Command history size
set showcmd " Shows commands being typed
set hidden " better buffer usage
set backup " Generates backup file
set ttyfast "better performance, look at :h ttyfast
set title " Changes terminal tittle
set encoding=utf-8 " utf-8 codification
set autoread " reads de file again if it was changed outside of vim
highlight ColorColumn ctermbg=235 guibg=#2c2d27
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Extends show with no read on

" Returns to last position when opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

			
" Search
set incsearch " highlight when the search is being made
set hlsearch  " highlights when the searchs is completed


" Folds - hide lines
set foldenable " activates fold
set foldlevelstart=10 " initial fold level 
set foldnestmax=10
set foldmethod=syntax " uses syntax to hide {}


"
"    ██╗   ██╗███╗   ██╗██████╗  ██████╗
"    ██║   ██║████╗  ██║██╔══██╗██╔═══██╗
"    ██║   ██║██╔██╗ ██║██║  ██║██║   ██║
"    ██║   ██║██║╚██╗██║██║  ██║██║   ██║
"    ╚██████╔╝██║ ╚████║██████╔╝╚██████╔╝
"     ╚═════╝ ╚═╝  ╚═══╝╚═════╝  ╚═════╝
"

" Makes sure the directory where undos are saved exists
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir " directory where undos are saved
set undofile " Allows the undo history to be saved on a file
set undolevels=1000 " Max undo size
