"  _       _ _         _
" (_)_ __ (_) |___   _(_)_ __ ___
" | | '_ \| | __\ \ / / | '_ ` _ \
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|

set nocompatible		" Desactivar la compatibilidad con vi
set number				" Muestra el numero de la linea en que estamos
set relativenumber		" Cuenta y muestra el numero de lineas desde la line actual hacia los exteriores
set cursorline			" Resalte la línea de texto del cursor (existe otra opcion cursorlineopt=number,screenline)
set cursorcolumn		" Resalte la columna de pantalla del cursor.
"set cursorbind			" Cuando el cursor en la ventana actual se mueve, otras ventanas mueven sus cursores de forma correspondiente.
set showcmd				" Muestra el comando (parcial) en la última línea de la pantalla.
set showmode			" Si está en el modo Insertar, Reemplazar o Visual, coloque un mensaje en la última línea.

syntax on               " Activar el resaltado(Coloreado xd) del archivo
set termguicolors       " Habilita colores RGB de 24 bits (para los themas)
set encoding=UTF-8      " Todos los archivos se guardaran con utf-8 en ves de ascii
set textwidth=143		" Ancho máximo del texto insertado, si es mas larga será roto después del espacio en blanco.
set wrap				" Corta el texto y le muestra debajo cuando el texto rebasa la pantalla
"set swapfile           " Crear un archivo .swap por cada archivo que es editado, sirve como copia de seguridad ante imprevistos.
"set backup             " Crea un backup del archivo que se ba a editar
set undofile            " Permite guardar el historial de cambios al cerrar nvim, y poder regresar cambios anteriores
set undodir=~/.vim/undodir  " Carpeta donde se guardara el historial de modificaciones pasadas de lso archivos.

set mouse=a				" La linea de edicion se movera donde se haga click
set scrolloff=5			" Mover n lineas arriba/abajo del cursor con el scroll del mouse.
set ttyfast				" Acelera el desplazamiento en vim

" Tabuladores
set tabstop=4			" Número de espacios que cuenta un <Tab> en el archivo.
set softtabstop=4		" Espacios que cuenta un <Tab> mientras se realizan operaciones de edición, como insertar una <Tab> o usar <BS>
set shiftwidth=4		" Número de espacios a utilizar para cada paso de sangría (automática)
set expandtab			" En modo Insertar: use el número apropiado de espacios para insertar un <Tab>
set autoindent			" Copie la sangría de la línea actual al comenzar una nueva línea
set backspace=indent,eol,start	" Soluciona los problemas de borrado

" Busqueda
set hlsearch            " Cuando haya un patrón de búsqueda anterior, resalte todas sus coincidencias
set incsearch           " Mientras escribe un comando de búsqueda, muestre dónde coincide el patrón.
set ignorecase          " Ignorar mayúsculas y minúsculas en los patrones de búsqueda
set smartcase           " Anule la opción 'ignorar mayúsculas' si el patrón de búsqueda contiene caracteres en mayúsculas

set matchpairs			" Nos permite navegar entre el inicio y el final de teclas parentesis con la tecla %
set modelines=0			" No se comprueban el numero de lineas para establecer comandos

" Remarca (rojo) los caracteres especiales
if &t_Co > 2
    highlight ExtraWhitespace ctermbg=1
    match ExtraWhitespace /\s\+$/
else
    set listchars=trail:~
    set list
endif

" Sincronizar el portapapeles de vim con el general(solo gvim probado)
set clipboard=unnamedplus
" Portapapeles(clipboard) con buffers de tmux (Copiado)
let g:clipboard = {
    \   'name': 'myClipboard',
    \     'copy': {
    \         '+': ['tmux', 'load-buffer', '-'],
    \         '*': ['tmux', 'load-buffer', '-'],
    \     },
    \     'paste':{
    \         '+': ['tmux', 'save-buffer', '-'],
    \         '*': ['tmux', 'save-buffer', '-'],
    \     },
    \     'cache_enabled': 1,
    \ }

" Incluir mis otros archivos de configuracion
so ~/.config/nvim/maps.vim
so ~/.config/nvim/plugins.vim
so ~/.config/nvim/plugin-config.vim
