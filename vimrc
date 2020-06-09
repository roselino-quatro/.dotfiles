"                         ╔══════════════════════════╗
"                         ║                          ║
"                         ║ "Configuraçãoes de VIM"  ║
"                         ║"Autor: Marcelo de Moraes"║
"                         ║                          ║
"                         ╚══════════════════════════╝

"Essas configurações foram feitas objetivando um melhor uso do editor VIM.
"Tudo foi bem comentado para melhor compreenção do que está acontecendo.
"Para mais detalhes sobre as configurações usar :h nomeDaConfig
"ex da opcao 'title' -> :h title

"Espero que goste :)





"   ◤                        ◥   "
"    Gerenciador de Plugins      "
"            Vim Plug            "
"   ◣                        ◢   "



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
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
Plugin 'xdg/vim-darkluma'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




"   ◤                        ◥   "
"    INÍCIO DAS CONFIGURAÇÕES    "
"   ◣                        ◢   "

" Configurações de plugins
let g:airline_powerline_fonts = 1

let g:rainbow_active = 1
" Muda o leader de / para ,
let mapleader = ","
let g:neocomplete#enable_at_startup = 1
let g:NERDSpaceDelims = 1 "add um espaco no comando de comentar



"   ◤        ◥   "
"      MAPS      "
"   ◣        ◢   "
"leader + f altera entre numero absoluto e relativo
map <leader>f :set relativenumber!<CR>

" Y age como D e C, copia ate o final da linha, ao inves de agir como yy
map Y y$


"leader + espaço remove o highlight da pesquisa
nnoremap <leader><space> :nohlsearch<CR>

" Shortcut de esconder/mostrar o fold com espaco
nnoremap <space> za

" crtl+n abre a nerdtree
map <C-n> :NERDTreeToggle<CR>

"Setas nao funcionam mais(apenas h, j , k, l)
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Salva o arquivo com ;;
nnoremap ;; :w<CR>



"   ◤       ◥   "
"     CORES     "
"   ◣       ◢   "
colorscheme darkluma 

let g:airline_theme='ouo'
set noshowmode "desabilita informacoes inferiores i.e. -- INSERT -- , reduntante



"   ◤          ◥   "
"    Indentação    "
"   ◣          ◢   "
filetype plugin indent on
set autoindent "indentacao automatica
set cindent "indentacao para linguagem C
set smartindent "identacao geral
set backspace=indent,eol,start
"nova linha quando eh criado um {}
let delimitMate_expand_cr=1
set shiftwidth=4 "tamanho do tab na indentacao
set tabstop=4 "tab 4 espacos



"   ◤         ◥   "
"      Geral      "
"   ◣         ◢   "
syntax enable "ative highlight de sintaxe
set number "numero da linha
set cursorline "highlight na linha atual
set wildmenu "menu de selecao de sugestoes no modo comando
set showmatch "mostra match de paratensis, chaves, colchetes...
set lazyredraw "melhoria de desempenho
set history=1000 "historico de comandos
set showcmd "mostra comandos sendo digitados na barra inferior
set hidden "melhor uso de buffers na mesma janela
set backup "gera arquivo de backup
set ttyfast "melhoria de desempenho, ver :h ttyfast
set title "muda o titulo do terminal
set encoding=utf-8 "codificacao utf-8
set autoread
highlight ColorColumn ctermbg=235 guibg=#2c2d27
set listchars=tab:•\ ,trail:•,extends:»,precedes:« "Extends aparecem com a funcao nowrap ativada

" Retorna a posicao que estava quando o arquivo foi fechado
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

			

"   ◤        ◥   "
"      Undo      "
"   ◣        ◢   "
"Garante que a a pasta que armazena os Undo exista
if !isdirectory($HOME."/.vim")
  call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
  call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir "pasta que armazena undos
set undofile "permite que o historico de undos seja salvo em um arquivo
set undolevels=1000 "tamanho do historico de undos


" Pesquisa
set incsearch "highlight na pesquisa equanto eh realizada
set hlsearch "highlight apos a pesquisa ser feita


" Folds - esconde linhas
set foldenable "habilita poder usar o fold
set foldlevelstart=10 "nivel inicial de folding, pra nao dobrar tudo no inicio, quanto mais {{, maior o nivel
set foldnestmax=10
set foldmethod=syntax "usa sintaxe para esconder: {} em C