" vim-plug (https://github.com/junegunn/vim-plug) settings {{{
" Automatically install vim-plug and run PlugInstall if vim-plug not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Basic
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'matze/vim-move'
Plug 'sickill/vim-pasta'
Plug 'justinmk/vim-sneak'

Plug 'terryma/vim-smooth-scroll'

"Theme
Plug 'carakan/new-railscasts-theme'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ryanoasis/vim-devicons'

Plug 'kien/tabman.vim'

"PHP
Plug 'shawncplus/phpcomplete.vim'
Plug 'godlygeek/tabular'
Plug 'ervandew/supertab'

Plug 'kien/ctrlp.vim'
call plug#end()


let g:move_key_modifier = 'C'

" map control + / to commentary toggle comment for one line or visual selection
nmap <C-_> gcc
vmap <C-_> gcgv
imap <C-_> <ESC>gcc

"Set theme
colorscheme new-railscasts
set background=dark

set number
set numberwidth=2

set laststatus=2

set hlsearch

map <F3> :NERDTreeTabsToggle<CR>
map <F4> :NERDTreeFind<CR>

"Tabs/windows
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

map <C-Right> <c-w>l
map <C-Left> <c-w>h
map <C-Up> <c-w>k
map <C-Down> <c-w>j
imap <C-Right> <ESC><c-w>l
imap <C-Left> <ESC><c-w>h
imap <C-Up> <ESC><c-w>k
imap <C-Down> <ESC><c-w>j


autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

set completeopt=longest,menuone
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
highlight Pmenu ctermbg=4 guibg=LightGray

let g:ctrlp_map = '<c-n>'
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
