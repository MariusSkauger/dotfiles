syntax enable
syntax on
set exrc
set guicursor=
set relativenumber
set nu
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set incsearch
set scrolloff=8
set signcolumn=yes

" Keybinds
let mapleader = " "
nnoremap <leader>fb :Telescope file_browser<CR>
nnoremap <leader>sf :Telescope find_files cwd=~/repos<CR>
nnoremap <leader>sg :Telescope git_files<CR>

call plug#begin('~/.vim/plugged')
" Telescope, plenary dependency for telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
" Treesitter, for syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
" Autocomplete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'glepnir/lspsaga.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" Gruvbox, Theme/colorscheme
Plug 'morhetz/gruvbox'
call plug#end()

" Gruvbox setup
if (has("termguicolors"))
    set termguicolors
endif
set background=dark
colorscheme gruvbox

" Lua
lua require('telescope').setup()
"lua require("telescope").load_extension "file_browser"
lua require('marius.lsp')
lua require 'nvim-treesitter.configs'.setup { highlight = { enable = true } }
lua require('marius.cmp')
lua require('marius.telescope')
lua require('telescope').load_extension('file_browser')
