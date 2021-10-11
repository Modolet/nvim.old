"真彩色终端
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" 设置默认折叠方式为缩进
set foldmethod=indent
" 关闭打开时自动折叠
set foldlevelstart=99


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

"gruvbox
set background=dark
colorscheme gruvbox
let g:lightline = {
	\ 'colorscheme':'ayu_light',
	\}

"透明背景
hi Normal guibg=#ffffffff
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

"一些设置
syntax on       "代码高亮
set hlsearch 	"搜索高亮"
set showcmd     "展示指令
set wrap        "自动换行
set wildmenu    "菜单选择
set relativenumber "相对行号
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

"记忆上次编辑的位置
if has("autocmd")                                                          
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"代码折叠状态保存
"
if has("autocmd")
    au BufWinEnter * if line("'\"") > 1 && line ("'\"") <= line("$") | silent loadview | endif
endif
if has("autocmd")
    au BufWinLeave * if line("'\"") > 1 && line ("'\"") <= line("$") | silent mkview | endif
endif

" "自动创建索引
" if has("autocmd")
"     au BufEnter * if filereadable("compile_commands.json") == 0 | :call CUpdate()<CR> | endif
" endif
