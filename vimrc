set nocompatible

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" number line show
set nu

set noswapfile
"in order to switch between buffers with unsaved change
set hidden

" hightlight column and line
set cursorline
"set cursorcolumn
filetype plugin indent on
syntax on

" support css word with -
autocmd FileType css,scss,slim,html,eruby,coffee,javascript setlocal iskeyword+=-
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4

" vim 7.4 backspace fix
set backspace=indent,eol,start
set t_Co=256
" colorscheme, read here: http://vim.wikia.com/wiki/Change_the_color_scheme
autocmd BufWritePre * :%s/\s\+$//e

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'


let mapleader= ","
" EasyMotion_leader_key .
" Plugin Plugin here for Ruby on Rails
" git
Plugin 'tpope/vim-fugitive'
" ruby command for rvm
Plugin 'tpope/vim-rvm'
" quickly move cursor, try ,,w
Plugin 'easymotion/vim-easymotion'
" quickly write HTML, just like zencoding but simple engough
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"let g:sparkupNextMapping= "<c-m>"
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
let g:user_emmet_mode='iv'
autocmd FileType html,css,eruby EmmetInstall
" power vim plugin for rails
Plugin 'tpope/vim-rails.git'
" vim rails syntax complete, try ctrl+x ctrl+u
set completefunc=syntaxcomplete#Complete
" quickly comment your code, try ,cc on selected line
Plugin 'scrooloose/nerdcommenter'
" indent guides
let g:indent_guides_guide_size = 1
Plugin 'nathanaelkane/vim-indent-guides'
" indent guides shortcut
map <silent><F7>  <leader>ig

" markdown support
let g:indent_guides_guide_size = 1
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" file tree like something called IDE
Plugin 'scrooloose/nerdtree'
map <silent><F8> :NERDTree<CR>
map <leader>r :NERDTreeFind<cr>
map <leader>e :NERDTreeToggle<cr>
map <leader>y "+y<cr>
map <leader>p "+p<cr>
" coffeescript
Plugin 'kchmck/vim-coffee-script'
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
" basic dependence
Plugin 'L9'
" slim template support
Plugin 'slim-template/vim-slim.git'
" hack filetype for slim
autocmd BufNewFile,BufRead *.slim set filetype=slim
autocmd BufNewFile,BufRead *.es6 set filetype=javascript
" quickly search file(s), use ctrl+p, F5 refresh
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/]\.(DS_Store|git|hg|svn)|(optimized|compiled|node_modules|bower_compenents)$'
map <c-o> :CtrlPBuffer<CR>

" sass highlight
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'isRuslan/vim-es6'

Plugin 'tomasr/molokai'
Plugin 'jpo/vim-railscasts-theme'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

call vundle#end()

colorscheme railscasts

if has("gui_running")
  "colorscheme desert
  set bs=2
  set ruler
  set gfn=Menlo:h16
  set shell=/bin/bash
endif
