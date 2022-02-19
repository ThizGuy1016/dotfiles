" Window management
let g:neovide_transparency=0.8
let g:neovide_refresh_rate=144

" Cursor effects
let g:neovide_cursor_animation_lencth=0.13
let g:neovide_cursor_trail_lenght=0.8
let g:neovide_cursor_antialiasing=v:true
let g:neovide_cursor_vfx_mode = "torpedo"

" Nvim styling
:set number
:set relativenumber

:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=aaa

" Plugins
call plug#begin()

Plug 'folke/tokyonight.nvim', {'branch': 'main' } " TokyoNight Theme

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/tpope/vim-commentary' " Commenting gcc and gc
Plug 'https://github.com/preservim/nerdtree' " Nerd Tree
Plug 'https://github.com/ap/vim-css-color' "CSS color preveiw
Plug 'https://github.com/ryanoasis/vim-devicons' " Dev Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for more cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation

Plug 'neoclide/coc.nvim', {'branch': 'release'} " For the linting ans autocompletion

call plug#end()

" Set theme
colorscheme tokyonight

" Nerd Tree Config
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" coc config
let g:coc_global_extensions = [
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-eslint',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-json',
	\ ]

" if hidden is not set, TextEdit might fail
set hidden

" Custom mappings
vnoremap <C-c> "+y
map <C-v> "+p
vnoremap <C-c> "*y :let @+=@*<CR>

map <C-p> :!cd %:p:h && 
