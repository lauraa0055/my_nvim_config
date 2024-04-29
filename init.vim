:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set nowrap
:set guicursor=n-v-c-i:block

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " airline theme plug from vim ariline repo
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'} " Terminal
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'rktjmp/lush.nvim'
Plug 'Scysta/pink-panic.nvim'
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'https://github.com/4513ECHO/vim-colors-hatsunemiku' " for vim airline miku theme
Plug 'Mofiqul/dracula.nvim' " Dracula Theme
Plug 'https://github.com/tpope/vim-fugitive' " for git on airline
" Plug 'catppuccin/nvim', { 'as': 'catppuccin' } " catpuccin themes

" for fonts
set encoding=utf8

set guifont=DroidSansMono\ Nerd\ Font\ 11

call plug#end()


nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" telescope
nmap <A-f> :Telescope find_files<CR>
nmap <A-a> :Telescope<CR>

:imap <c-s> <Esc>:w<CR>a
nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts = 1

:colorscheme pink-panic
" let g:airline_theme = 'hatsunemiku'
let g:airline_theme = 'violet'
set termguicolors
" :colorscheme sunbather
" :colorscheme dogrun
" :colorscheme dracula

" ---
" catppuccin
" ---

" set background=dark
" set termguicolors

" lua << EOF
" local catppuccin = require("catppuccin")

" catppuccin.setup({
  "integrations = {
  "  ts_rainbow = true,
  "},
  "color_overrides = {
  "  mocha = {
  "    text = "#F4CDE9",
  "    subtext1 = "#DEBAD4",
  "    subtext0 = "#C8A6BE",
  "    overlay2 = "#B293A8",
  "    overlay1 = "#9C7F92",
  "    overlay0 = "#866C7D",
  "    surface2 = "#705867",
  "    surface1 = "#5A4551",
  "    surface0 = "#44313B",

  "    base = "#352939",
  "    mantle = "#211924",
  "    crust = "#1a1016",
  "  },
  "},
"})
"EOF
":colorscheme catppuccin

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nmap <c-h> :ToggleTerm direction=horizontal<CR>
inoremap <c-h> <Esc>:ToggleTerm direction=horizontal<CR>

nmap <A-t> :ToggleTerm direction=tab<CR>
inoremap <A-t> <Esc> :ToggleTerm direction=tab<CR>

nmap <A-v> :ToggleTerm direction=vertical<CR>
inoremap <A-v> :ToggleTerm direction=vertical<CR>

lua << EOF
require("toggleterm").setup({
	open_mapping = '<C-\\>',
    start_in_insert = true,
    direction = 'float'
})

require("telescope").setup()

EOF
