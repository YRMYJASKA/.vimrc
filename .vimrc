" My .vimrc
" By Jyry Hjelt
" Essential
set nocompatible
set number
filetype off

" Setting up powerline statusline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Installing plugins via Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'flazz/vim-colorschemes'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/NERDtree'

Plugin 'altercation/vim-colors-solarized'

Plugin 'junegunn/vim-easy-align'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'cespare/vim-toml'

call vundle#end()
" YouCompleteMe settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" Goto definition for YCM supported files
map <F3> :YcmCompleter GoTo<CR>

" Easy align settings
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Formatting
filetype plugin indent on
syntax on

" Bleh.
set tabstop=4
set shiftwidth=8
set ignorecase
set smartcase
set showmatch
set noerrorbells
set noswapfile
set confirm
set ai
set mouse=a
set cursorline
set wildmenu

" Search configuration
set incsearch
set hlsearch 
hi Search guibg=Yellow guifg=Black ctermbg=Blue ctermfg=Black

" Shorthands
iabbrev cant can't
" For loops abbreviations for c/c++
autocmd FileType cpp iabbrev fori for(int i = 0; i < ; i++){
autocmd FileType cpp iabbrev forx for(int x = 0; x < ; x++){
autocmd FileType c iabbrev fori for(int i = 0; i < ; i++){
autocmd FileType c iabbrev forx for(int x = 0; x < ; x++){
" Indenting blocks with tab in visual mode
vmap <tab> >
" More buttons for the commandline 
nnoremap ; :

" ctrlp
let g:ctrlp_map = '<c-p>'

" Moving around panes easily
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
" Enable the use of solarized colors in vim
let g:solarized_termcolors=256
" Colorscheme
colo Tomorrow-Night-Eighties  

