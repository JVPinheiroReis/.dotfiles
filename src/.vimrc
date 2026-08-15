set autochdir
set autoindent
set expandtab
set history=1000
set ignorecase
set incsearch
set nobackup
set nocompatible
set noswapfile
set nowb
set number
set ruler
set scrolloff=10
set shiftwidth=4
set smartcase
set smarttab
set showcmd
set showmatch
set showmode
set tabstop=4
set textwidth=80
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

nnoremap Q gq

if !has('gui_running')
  let &t_SI = "\<Esc>[6 q"
  let &t_EI = "\<Esc>[2 q"
endif
