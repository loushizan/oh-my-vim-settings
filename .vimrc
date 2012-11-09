"设置缩进
set shiftwidth=2
set tabstop=2
set expandtab

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
	autocmd FileType python setlocal et sta sw=4 sts=4
endif

"vim-pathogen
call pathogen#infect()

"载入文件类型插件
filetype plugin on 

"为特定文件类型载入相关缩进文件
filetype indent on 

"主题
colorscheme railscasts
"colorscheme ir_black
"colorscheme blackboard
"colorscheme night
"colorscheme twilight

"语法样式开启
syntax on

"help
set helplang=cn

"设置字体大小
"set guifont=Monaco:h12
set gfn=Panic\ Sans:h18

"当使用了图形界面，并且环境变量 LANG 中不含“.”（即没有规定编码）时，把 Vim 的内部编码设为 UTF-8
set encoding=utf-8

"history文件中需要记录的行数
set history=100 

"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,- 

"高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt 

"不需要保持和 vi 非常兼容
"set nocompatible

"执行 Vim 缺省提供的 .vimrc 文件的示例，包含了打开语法加亮显示等最常用的功能
"source $VIMRUNTIME/vimrc_example.vim

"使backspace正常处理indent, eol, start等
set backspace=indent,eol,start whichwrap+=<,>,[,]

"允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l 

"在输入命令时列出匹配项目
set wildmenu

"打开自动缩,继承前一行的缩进注释 进
set autoindent

"默认情况下手动折叠
set foldmethod=manual

"显示行号（否：nonumber）
set number

"显示光标的坐标
set ruler

"不自动换行(否：wrap)
set wrap

"缺省不产生备份文件
set nobackup

"不要生成swap文件
set noswapfile

"set bufhidden=hide
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
"set showmatch

"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1

"搜索时不区分大小写
"set ignorecase

"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

"搜索高亮
"set hlsearch

"不要闪烁
set novisualbell 

"正确地处理中文字符的折行和拼接
set formatoptions+=mM

"文件 UTF-8 编码
set fileencodings=utf-8

"设置文件格式为unix
set fileformat=unix

"开启命令显示
set showcmd

"设置窗口大小
"set lines=35
"set columns=120

"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI 

"导出 html 设置
let html_use_css=1
let html_number_lines=0
let use_xhtml=1

"隐藏底部滚动条
set guioptions-=b

"隐藏右边滚动条
"set guioptions-=R
"set guioptions-=r

"隐藏左边滚动条
set guioptions-=l
set guioptions-=L

"隐藏菜单栏
set guioptions-=m

"隐藏工具栏
set guioptions-=T

"总是显示状态行
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [LEN=%L]\ [POS=%04l,%04v][%p%%]

"遇到.liquid的文件vim会自动应用html的语法
au BufNewFile,BufRead *.liquid set filetype=html

"自动加载作者信息
"let g:vimrc_author='LeoLou' 
"let g:vimrc_email='loushizan@gmail.com' 
"let g:vimrc_homepage='http://' 

" JsBeautify
"map <c-f> :call JsBeautify()<cr>
