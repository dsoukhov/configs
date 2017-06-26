set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" js specific
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'
" general code completion 
Plugin 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" ctrlp
Plugin 'ctrlp.vim'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<c-q>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"solarized theme
Plugin 'dsoukhov/vim-colors-solarized'
"syntastic
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs=0
"fugitive git wrapper
Plugin 'tpope/vim-fugitive'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"Line nums hybrid by default
set relativenumber
set number
"hi CursorLineNr   term=bold ctermfg=Green gui=bold guifg=Green
"hi LineNr         ctermfg=DarkMagenta guifg=#2b506e guibg=#000000 
" Spaces for tabs
set tabstop=4
set shiftwidth=4
set expandtab
" Better indenting
set autoindent
set smartindent
"toggle nerdtreetab
map <F2> :NERDTreeTabsToggle<CR>
" Show extra whitespace
set list listchars=tab:>·,trail:·,extends:>,precedes:<
" <Shift-V>Gds to remove trailing whitespace
map ds :s/\s*$//g<cr>:noh<cr>
map gtt gT
" toggle spellcheck
nn <F7> :setlocal spell! spell?<CR>
" turn spellcheck on for gitcommits
autocmd FileType gitcommit setlocal spell
" unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
" vmap - mapping for visual mode
" _d - yank current selection into 'black hole register'
" P - paste
" http://stackoverflow.com/questions/54255/in-vim-is-there-a-way-to-delete-without-putting-text-in-the-register
" an easy mapping which lets you replace the current selection with buffer
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

"enable solarized
syntax enable
set background=dark
colorscheme solarized
hi CursorLineNr   term=bold ctermfg=Green gui=bold guifg=Green
hi LineNr         ctermfg=DarkMagenta guifg=#2b506e guibg=#000000
let g:solarized_termcolors=256

"set python autocomplete w/ YCM
let g:ycm_python_binary_path = 'python'

" save as root
cmap w!! w !sudo tee % >/dev/null

set clipboard=unnamedplus
"toggle syntastic
nnoremap <F3> :SyntasticToggleMode<CR>

 "Buttons for going to previous/next file (buffer)
"Show a list of files (buffers) that are open
map <F4> :buffers<CR>
"Yank (copy) contents of current file (buffer) - also to X11 clipboard
map <F5> :%y+<CR>
"Close current buffer
map <F12> :bd!<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
noremap % v%

"remap split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

