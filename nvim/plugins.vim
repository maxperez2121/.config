"  ____  _             _           
" |  _ \| |_   _  __ _(_)_ __  ___ 
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/             
"=================================================================================
"                           Administrador de plugins
"=================================================================================
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

filetype off
filetype plugin indent on

"=================================================================================
"                                   Plugins
"=================================================================================
call plug#begin('~/.vim/plugged')

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" Manejo de archivos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'                    " Buscar archivos y contenido dentro (requiere ripgrep)
Plug 'vifm/vifm.vim'                                    " Integracion con vifm

" Sintaxis
Plug 'sheerun/vim-polyglot'                             " Resaltado de la sintaxis en los lenguajes de preogramacion
Plug 'norcalli/nvim-colorizer.lua'                      " Colorea el texto al escribir un color
Plug 'yggdroot/indentline'                              " Remarcar el indentado

" Terminal
Plug 'tc50cal/vim-terminal'                             " Lo uso para abrir en buffers
Plug 'voldikss/vim-floaterm'                            " Terminal flotante

" IDE
Plug 'alvan/vim-closetag'                               " Cierra las etiquetas para html y react
Plug 'tpope/vim-surround'                               " Cierra los caracteres duales.
"Plug 'sirver/ultisnips'                                " Snips
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Suporte para edicion en lenguajes de preogramacion (requiere nodejs)
Plug 'scrooloose/nerdcommenter'                         " comentar

call plug#end()
