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
" Vundle for Vundle
Plugin 'VundleVim/Vundle.vim'
" Auto completion
Plugin 'Valloric/YouCompleteMe'
" More colors
Plugin 'flazz/vim-colorschemes'
" Syntax checking and a clear tree overview of a project
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/NERDtree'
" More colors :D
Plugin 'altercation/vim-colors-solarized'
" For making code more organized
Plugin 'junegunn/vim-easy-align'
" Easy file awitching
Plugin 'ctrlpvim/ctrlp.vim'
" Rust things
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'cespare/vim-toml'
" Auto pairing for ()'s []'s and {}'s and other things
Plugin 'jiangmiao/auto-pairs'
" Sorting python includes
Plugin 'fisadev/vim-isort'
" Auto-formatting because I'm lazy
Plugin 'rhysd/vim-clang-format'
" Better syntax highlighting hor c++
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()
" YouCompleteMe settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1 " Disable ycm's diagnostics ui because it is annoying
" YCM highlighting begone!
let g:ycm_allow_changing_updatetime = 0
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

" c++ compiler flags for syntastic
" let g:Syntastic_cpp_compiler = "g++"
" let g:Syntastic_cpp_compiler_options = "-stdlib=libc++ -std=c++11 -Wall -Wextra -Wpedantic"
let g:syntastic_disabled_filetypes = ['cpp']
" Set the correct syntax checker for .asm files
let g:syntastic_asm_checkers = ['nasm']
" let g:syntastic_cpp_include_dirs = ["~/Qt5.6.1/5.6/gcc_64/include/*"]
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
set binary
"set mouse=a
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

" ctrlp
let g:ctrlp_map = '<c-p>'

" Assembly syntax
au BufRead,BufNewFile *.asm set filetype=nasm

" Moving around panes easily
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
" Enable the use of solarized colors in vim
let g:solarized_termcolors=256
" Clang-format settings
autocmd FileType c,cpp nnoremap ; :<C-u>ClangFormat<CR>
let g:clang_format#auto_format = 0 " Set automatic formatting on saving 
let g:clang_format#style_options = {
						\"BasedOnStyle": "LLVM",
						\"IndentWidth": 8,
						\"AlignTrailingComments": "true",
						\"Standard": "C++11",
						\"AlwaysBreakTemplateDeclarations": "true",
						\"SortIncludes": "true", 
						\"ColumnLimit": 1000,
						\"UseTab": "Always",
						\"AccessModifierOffset": -8,
						\"IndentCaseLabels": "false"}
" Colorscheme
colo Tomorrow-Night-Eighties  
