"===================================================================================
"                               vim airline / gruvbox
"===================================================================================
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
colorscheme gruvbox
let g:airline_theme='gruvbox'
let g:gruvbox_contrast='soft'
let g:gruvbox_transparent_bg='0'
nmap <leader>bd :set background=dark<Enter>
nmap <leader>bl :set background=light<Enter>

"===================================================================================
"                                   fzf
"===================================================================================
"nmap <Space>fs :Files<Enter>
"nmap <Space>fh :History<Enter>

"===================================================================================
"                                   NerdTree
"===================================================================================
"autocmd VimEnter * NERDTree             " Iniciar automaticamente al abrir nvim
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeShowLineNumbers=1
nmap <Space>nt :NERDTree<CR>
nmap <Space>nf :NERDTreeFind<CR>

"===================================================================================
"                                   Vifm Vim
"===================================================================================
" Abrir en un buffer
nmap <Space>ff :Vifm<Enter>
" Abrir verticalmente
nmap <Space>fv :SplitVifm<Enter>
" Abrir horizontalmente
nmap <Space>fo :VsplitVifm<Enter>

"===================================================================================
"                                   Telescope
"===================================================================================
nnoremap <Space>fs <cmd>Telescope find_files<cr>
nnoremap <Space>fg <cmd>Telescope live_grep<cr>
nnoremap <Space>fb <cmd>Telescope buffers<cr>
nnoremap <Space>ft <cmd>Telescope help_tags<cr>
nnoremap <Space>fh :lua require'telescope.builtin'.oldfiles{}<Enter>

"===================================================================================
"                                   Close-Tag
"===================================================================================
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

"===================================================================================
"                                   Coc
"===================================================================================
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-css',
    \ 'coc-cssmodules',
    \ 'coc-emmet',
    \ 'coc-html-css-support',
    \ 'coc-java',
    \ 'coc-json',
    \ 'coc-sql',
    \ 'coc-snippets',
    \   ]
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Con-Snippets
imap <C-l> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

"===================================================================================
"                               nvim-Colorizer
"===================================================================================
" require 'colorizer'.setup()

"===================================================================================
"                               vim-floaterm
"===================================================================================
nmap <space>tt <Esc>:FloatermNew --height=0.8 --width=0.8 --wintype=float<Enter>
imap <space>tt <Esc>:FloatermNew --height=0.8 --width=0.8 --wintype=float<Enter>
vmap <space>tt <Esc>:FloatermNew --height=0.8 --width=0.8 --wintype=float<Enter>
