syntax enable                                                             "语法高亮
colorscheme badwolf                                                       "颜色主题 配置文件在.vim/colors中
set nocompatible                                                          "Vi兼容be iMproved, required
filetype off                                                              "required
let mapleader=","                                                         "设置leader key           
set incsearch                                                             "立即显示搜索内容
set hlsearchi                                                             "高亮搜索结果
set foldenable                                                            "开启缩进
set foldmethod=indent                                                     "使用缩进标示代码块
"******************************************************************************************************
"Vundle Plugin Setting
"******************************************************************************************************
"******************************************************************************************************
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'sjl/gundo.vim'
 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.

 " All of your Plugins must be added before the following line
 call vundle#end() " required
 filetype plugin indent on " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList - lists configured plugins
 " :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line
"******************************************************************************************************

"******************************************************************************************************
"Key Map
"******************************************************************************************************
"******************************************************************************************************
 nnoremap gV `[v`]                                                        "选择上次插入模式插入的内容
 inoremap jk <esc>                                                        "jk 代替 esc
 nnoremap <leader>u :GundoToggle<cr>                                      "打开GundoToggle
 nnoremap <leader><space> :set nohlsearch<cr>                             "切换是否高亮搜索结果
 nnoremap j gj                                                            "可视向下移动
 nnoremap k gk                                                            "可视向上移动
 nnoremap B ^                                                             "行首
 nnoremap E $                                                             "行末
 nnoremap $ <nop>
 nnoremap ^ <nop>
 nnoremap <leader>ev :vsp $MYVIMRC<CR>                                    " edit vimrc
 nnoremap <leader>sv :source $MYVIMRC<CR>                                 "source vimrc
 nnoremap <leader>l :call ToggleNumber()<CR>                              "切换绝对/相对行号
 nnoremap <leader>[ <c-w><                                                "分屏时调整左右分屏大小
 nnoremap <leader>] <c-w>>                                                "分屏时调整左右分屏大小

"******************************************************************************************************
"******************************************************************************************************
"Function
"******************************************************************************************************
"******************************************************************************************************
 function! ToggleNumber()
     if(&relativenumber == 1)
         set norelativenumber
         set number
     else
         set relativenumber
     endif
 endfunc
 if has('python3')
    let g:gundo_prefer_python3 = 1          " anything else breaks on Ubuntu 16.04+
 endif

"******************************************************************************************************
