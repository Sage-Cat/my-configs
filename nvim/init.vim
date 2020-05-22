"Plug-ins
call plug#begin('~/.config/nvim/plugged')
" Tools
    Plug 'airblade/vim-gitgutter'
    Plug 'vifm/vifm.vim'

" Syntax
    Plug 'tpope/vim-markdown'
    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS 
    Plug 'vim-scripts/fountain.vim'

" Color-schemes
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ajh17/Spacegray.vim'
    Plug 'chriskempson/base16-vim'
    Plug 'phanviet/vim-monokai-pro'

" Programming
" C&C++
    Plug 'LucHermitte/lh-vim-lib'
    Plug 'LucHermitte/lh-style'
    Plug 'LucHermitte/lh-tags'
    Plug 'LucHermitte/lh-dev'
    Plug 'LucHermitte/lh-brackets'
    Plug 'LucHermitte/searchInRuntime'
    Plug 'LucHermitte/mu-template'
    Plug 'tomtom/stakeholders_vim'
    Plug 'LucHermitte/alternate-lite'
    Plug 'LucHermitte/lh-cpp'
call plug#end() 

"lh-brackets
let g:usemarks=0
 
"lh-cpp ftplugin
let g:lh_cpp_snippets=1

"clang_complete
let g:clang_library_path='/usr/lib/llvm-3.8/lib'
let g:clang_library_path='/usr/lib64/libclang.so.3.8'

"General Settings
set encoding=UTF-8
filetype plugin indent on  "Enabling Plugin & Indent
syntax on  "Turning Syntax on
set autoread wildmode=longest,list,full
set spell spelllang=en_us
set backspace=indent,eol,start confirm
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab  
set hls is ic
set laststatus=2 cmdheight=1
au BufRead,BufNewFile *.fountain set filetype=fountain
set splitbelow splitright 
setlocal foldmethod=indent
set foldlevel=5

"Status-line
set statusline=
set statusline+=%#IncSearch#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#CursorLineNr#
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=%#Search#
set statusline+=\ %l/%L
set statusline+=\ [%c]

"Key-bindings
let mapleader=" "
map <leader><Space> :EditVifm .<CR>
map <leader>l :tabnext <CR>
map <leader>n :tabnew <CR>
map <leader>t :tabe ./
map <leader>, :vsplit ~/.config/nvim/init.vim<CR>
map <leader>t :split ./ <CR> :terminal <CR>
map <leader>s :vsplit ./
map <C-s> :source ~/.config/nvim/init.vim<CR>

nnoremap <Left> :vertical resize +1<CR>
nnoremap <Right> :vertical resize -3<CR>

tnoremap <Esc> <C-\><C-n>

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

nnoremap Q <nop>

map <F1> :colorscheme monokai_pro<CR>
map <F2> :colorscheme base16-default-dark<CR>
map <F3> :colorscheme hybrid_reverse<CR>
map <F4> :colorscheme PaperColor<CR>
map <F5> :colorscheme spacegray<CR>

"Color Settings
set termguicolors
colorscheme monokai_pro

match Question /FINISHED\|DONE\|finished\|done/
2match Type /TODO\|todo\|Todo/
3match WildMenu /--/ 

hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE 

