scriptencoding utf-8
set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" general code completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'sheerun/vim-polyglot'
" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
" nerdtree
Plugin 'scrooloose/nerdtree'
" ctrlp
Plugin 'ctrlp.vim'
" fzf
Plugin 'junegunn/fzf.vim'
" Track the engine
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<c-q>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"camelCase support
Plugin 'bkad/CamelCaseMotion'
"syntastic
Plugin 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_loc_list_height= 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_javascript_checkers=['eslint']
"fugitive git wrapper
Plugin 'tpope/vim-fugitive'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"Line nums hybrid by default
set relativenumber
set number
hi CursorLineNr   term=bold ctermfg=Green gui=bold guifg=Green
hi LineNr         ctermfg=DarkMagenta guifg=#2b506e guibg=#000000 
" Spaces for tabs
set tabstop=2
set shiftwidth=2
set expandtab
" Better indenting
set autoindent
set smartindent
" Show extra whitespace
set list listchars=tab:>·,trail:·,extends:>,precedes:<  
" <Shift-V>ds to remove trailing whitespace on line
map ds :s/\s*$//g<cr>:noh<cr>
map gtt gT
" toggle spellcheck
nn <F7> :setlocal spell! spell?<CR>
" turn spellcheck on for gitcommits
autocmd FileType gitcommit setlocal spell
" unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
" replace current selection with buffer
vmap r "_dP

"" Search highlight color
hi Search cterm=NONE ctermfg=black ctermbg=yellow

" Paste mode toggle with F10
set pastetoggle=<F10>

" reload changed filed
set autoread
" Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"set python autocomplete w/ YCM
let g:ycm_python_binary_path = 'python'

"Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"enable ag search
nnoremap <silent> <Leader>ag :Ag<CR>
"ag search cursor word
nnoremap <silent> <C-F> :Ag <C-R><C-W><CR>

"jump to def
map <C-J> :YcmCompleter GoTo<CR>

" save as root
cmap w!! w !sudo tee % >/dev/null

set clipboard=unnamedplus

"toggle nerdtree
map <F2> :NERDTreeToggle<CR>
"reload nerdtree
map <leader>r :NERDTreeFind<cr>

"toggle syntastic
nnoremap <F3> :SyntasticToggleMode<CR>

"display buffers
map <F4> :buffers<CR>

"Yank (copy) contents of current file (buffer) - also to X11 clipboard
map <F5> :%y+<CR>

"toggle tagbar
nmap <F8> :TagbarToggle<CR>

"Close current buffer
map <F12> :bd!<CR>

"set leader key to \
let g:mapleader='\'

noremap % v%

"remap split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
