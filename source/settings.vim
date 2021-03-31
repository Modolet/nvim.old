"真彩色终端
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif


" set background=dark " for the dark version
"set background=light " for the light version
"colorscheme one
"let g:lightline = {
"			\'colorscheme':'one',
"			\}

"主题
"ayu
"let ayucolor="light"
"colorscheme ayu
"set background=dark
"let g:lightline = {
"	\ 'colorscheme':'ayu_light',
"	\}
"colorscheme ayu_light


"space_vim_theme light
"colorscheme space_vim_theme
"set background=light
"let g:lightline = {
"	\ 'colorscheme':'ayu_light',
"	\}
""configure tags
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/sdl
"set tags+=~/.vim/tags/qt

"gruvbox
"set background=light
"colorscheme gruvbox
"let g:lightline = {
"	\ 'colorscheme':'ayu_light',
"	\}

"不区分大小写
set ic

"启用鼠标
set mouse=a

"设置缩进
set ts=4 sw=4 et

"其他设置
set scrolloff=5
set cursorline
"set exrc
"set secure
"set cursorcolumn
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"自动识别文件编码
set encoding=utf-8 fileencodings=utf-8,usc-bom,cp936,gbk,gb2312,utf-16le

"记忆上次编辑的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <=line("$")|exe("norm '\"")|else|exe "norm$"|endif|endif
"一些设置
syntax on       "代码高亮
set hlsearch 	"搜索高亮"
set showcmd     "展示指令
set wrap        "自动换行
set wildmenu    "菜单选择
set number	"行号
let &t_ut = ' '

"调试
packadd termdebug
"插件设置
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"状态栏设置
set laststatus=2
if !has('gui_running')
	set t_Co=256
endif
