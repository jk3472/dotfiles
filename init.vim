call plug#begin("~/.vim/plugged")

Plug 'joshdick/onedark.vim'
Plug 'nvim-lualine/lualine.nvim'    "lualine
Plug 'kyazdani42/nvim-web-devicons' "icons for lualine
Plug 'scrooloose/NERDTree'          "nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'  "git plugin for nerdtree
Plug 'airblade/vim-gitgutter'       "shows git diff
Plug 'tpope/vim-commentary'         "comment stuff
Plug 'dense-analysis/ale'           "syntax checker
Plug 'sheerun/vim-polyglot'         "a collection of language packs
Plug 'jiangmiao/auto-pairs'         "insert closing pair automatically
Plug 'Yggdroot/indentLine'          "shows indent line
Plug 'tpope/vim-surround'           "stuff to help surround
Plug 'preservim/tagbar'             "Help to find definition
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/everforest'
Plug 'frazrepo/vim-rainbow'


call plug#end()


colorscheme onedark
"colorscheme nord
let g:rainbow_active = 1


let g:mapleader = "\<space>"


if has("syntax")
	  syntax enable
  endif


set encoding=utf-8
set ruler
set number
set cursorline 
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4       
set shiftwidth=4        " number of spaces to use for auto indent
set smartindent
set autoindent
set smarttab
set cindent
set textwidth=120


au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\ exe "norm g`\"" |
			\ endif

"lua << END
"require('lualine').setup()
"END

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>tj :TagbarOpen j<CR>


