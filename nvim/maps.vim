"                                  _
"  _ __ ___   __ _ _ __  _____   _(_)_ __ ___
" | '_ ` _ \ / _` | '_ \/ __\ \ / / | '_ ` _ \
" | | | | | | (_| | |_) \__ \\ V /| | | | | | |
" |_| |_| |_|\__,_| .__/|___(_)_/ |_|_| |_| |_|
"                 |_|

" Asignar la tecla leader
let mapleader = ","

" General
nmap <Space>w :w<Enter>
nmap <Space>W :w!<Enter>
nmap <Space>q :q<Enter>
nmap <Space>Q :q!<Enter>
" nmap <Space>tt :terminal<Enter>
nmap <space>tv <Esc>:rightbelow sfind term://zsh<Enter>
nmap <space>th <Esc>:vertical rightbelow sfind term://zsh<Enter>

" Acceso rapido a teclas
imap ii <Esc>
vmap ii <Esc>
cmap ii <Esc>
" imap <Leader>- <
" imap <Leader>+ >

" Ejecutar un comando escrito como texto
map <Leader>cmd !!$SHELL<Enter>

" Corrector de escritura
nnoremap <leader><F3> :setlocal spell! spelllang=es<Enter>
nnoremap <leader><F4> :setlocal spell! spelllang=en<Enter>

" Navegar con guias
inoremap ;gui <++>
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
nnoremap <leader><leader> <Esc>/<++><Enter>"_c4l

" Mueve bloques de codigo en modo visual o V-Line
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Buffers
nmap <Space>h :bprev<Enter>
nmap <Space>l :bnext<Enter>
nmap <Space>bn :new<Enter>
nmap <Space>bd :bd<Enter>
nnoremap <Space>- 10<C-w><
nnoremap <Space>+ 10<C-w>>

" Pestañas (Tabs)
nmap <Space>tp :tabprevious<Enter>
nmap <Space>tn :tabNext<Enter>
nmap <Space>tc :tabClose<Enter>
