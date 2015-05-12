"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
"         Basic Settings                                        "
"                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent
set scrolloff=5
set encoding=utf8
set fileencodings=utf8,cp936,gb18030,big5,gbk
set tabstop=4
set expandtab       "加了这一句set tabstop才会展开成空格
set hlsearch        "高亮匹配
set ic              "查找时忽略大小写
set incsearch
set foldmethod=syntax
set foldnestmax=1        "我喜欢这样折叠, 一般只折叠function, 不折叠block
set splitright
set shiftround          ">和<时自动round shift indent
set wrap                "长句折叠
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.tar,*.bin


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
"         Syntax and Color                                      "
"                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on
" colorscheme default
" colorscheme wombat
colorscheme koehler
" colorscheme molokai


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
"         ShortCuts / Maps                                      "
"                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\\"
" 快捷给当前word加上双引号
nnoremap <leader>"              viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>'              viw<esc>a'<esc>hbi'<esc>lel
" Travel in insert mode
inoremap <c-j>                  <c-o>j
inoremap <c-k>                  <c-o>k
inoremap <c-h>                  <c-o>h
inoremap <c-l>                  <c-o>l
" Disable cursor keys
inoremap <Left>                 <nop>
inoremap <Right>                <nop>
inoremap <Up>                   <nop>
inoremap <Down>                 <nop>
nnoremap <Left>                 <nop>
nnoremap <Right>                <nop>
nnoremap <Up>                   <nop>
nnoremap <Down>                 <nop>
onoremap p                      i(
" Tab switcher
" nnoremap L                      :tabNext<return>              gt instead
" nnoremap H                      :tabprevious<return>          gT instead


" FileType-specific
augroup filetype_python 
    autocmd!
    autocmd FileType python nnoremap <leader>assert oassert(False)<esc>
    autocmd FileType python nnoremap <leader>= I# <esc>
augroup END



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
"         TagBar / Tags                                         "
"                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sorted according to their order in the source file
let g:tagbar_sort = 0       


" Gotags auto update {
  function! UpdateGoTags()
    let f = expand("%:p")
    let cwd = getcwd()
    let tagfilename = cwd . "/tags"
    let cmd = 'gotags -R=true -silent=true -f ' . tagfilename . ' ./'
    let resp = system(cmd)
  endfunction

  autocmd BufWritePost *.go call UpdateGoTags()
" }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
"         CtrlP                                                 "
"                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set this to 1 to set searching by filename (as opposed to full path)
let g:ctrlp_by_filename = 1
" Where to put the new tab page when opening one, `ac` means `after the
" current tab page
let g:ctrlp_tabpage_position = 'al'
" the newly created file is to be opened when in a new tab.
let g:ctrlp_open_new_file = 't'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
"         Vimerl                                                "
"                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let erlang_folding = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                               "
"         Bundle Configuration                                  "
"                                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'vividchalk.vim'
Bundle 'Wombat'
Bundle 'molokai'
Bundle 'fatih/vim-go'
Bundle 'tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'onlychoice/vimerl'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-erlang/vim-erlang-tags'

filetype plugin indent on     " required! 

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" NOTE: comments after Bundle command are not allowed..
