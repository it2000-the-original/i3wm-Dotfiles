set mouse=a
syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
set cursorline
set clipboard+=unnamedplus
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors

call plug#begin()
Plug 'navarasu/onedark.nvim'
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-lualine/lualine.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'akinsho/bufferline.nvim'
call plug#end()

lua require("lualine").setup()
lua require("nvim-tree").setup()
lua require("nvim-autopairs").setup()
lua require("bufferline").setup()

tnoremap <Esc> <C-\><C-n>
nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <C-n> :NvimTreeFocus<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>

let g:onedark_config = {
    \ 'style': 'graphite',
\}
colorscheme onedark
"set showtabline=2
