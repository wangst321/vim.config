syntax enable
" show line numbers
set number
" tabs to have 4 spaces
set tabstop=4
" indent when moving to next line 
set autoindent
" when using >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" expand tab into spaces
set expandtab
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1
" hight light search
set hls

set modeline

" required for vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" too complicated...
" Bundle 'Valloric/YouCompleteMe'

Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'

Plugin 'altercation/vim-colors-solarized'
" Plugin 'jnurmine/Zenburn'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ============ solarized ==============
colorscheme solarized
let g:solarized_termcolors=256

if has('gui_running')
    set background=dark
else
    let g:solarized_termtrans=1
    set background=dark
endif
" ============ end solarized ============

" ====== Powerline ======
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 0
let g:Powerline_theme="skwp"
let g:Powerline_colorscheme="skwp"
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color

set termencoding=utf-8
" Vim in OS X does not support GUI
" if has("gui_running")
"    let s:uname = system("uname")
"    if s:uname == "Darwin\n"
"        set guifont=Sauce\ Code\ Powerline
"    endif
" endif
" ====== end Powerline ======


" NerdTree 
map <F2> :NERDTreeToggle<CR>

" ============= python ===================
" PEP8 indentation
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=100
" ============== end python==================

" =========== web =====================
au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set softtabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set shiftwidth=2
" ============ end web =================

set splitright
set splitbelow

" split navigation 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" copy, paste to/from another program outside vim
" set clipboard=unnamed

set backspace=indent,eol,start  " more powerful backspacing

" Allow saving of files as sudo when I forgot to start vim using sudo.
" cmap w!! w !sudo tee > /dev/null %
" cnoremap w!! w !sudo tee > /dev/null %
" no working
