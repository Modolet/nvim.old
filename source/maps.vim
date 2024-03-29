"更改键位
"设置leader键为空格
let mapleader="\<space>"
"下面是一些快捷键
"
"插入模式下移动到当前行尾
inoremap <c-a> <Esc>A
""插入模式下移动到当前行首
"inoremap <c-i> <Esc>I
"取消s的原功能
map s <nop>
"保存
map S :w<CR>
"退出
map Q :q!<CR>
"保存退出
map X :wq!<CR>
"重新读取配置文件
map R :source $MYVIMRC<CR>
"取消搜索高亮
map <LEADER><CR> :nohlsearch<CR>
"开启关闭NERDTree插件（文件列表
"开启浮动终端
nmap tc :FloatermNew --height=0.9 --width=0.9 --wintype=float --name=terminal --autoclose=1<CR>
"在四个位置分屏
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
"打开tagbar插件（函数列表
" map tf :TagbarToggle<CR>
"新建标签页
map tu :tabe<CR>
"切换标签页
map tn :-tabnext<CR>
map ti :+tabnext<CR>
"关闭标签页
map tq :tabc<CR>
"切换分屏
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
"移动分屏
map <C-l> <C-w>L
map <C-j> <C-w>J
map <C-k> <C-w>K
map <C-h> <C-w>H
"调整分屏大小
map <up> :res +3<CR>
map <down> :res -3<CR>
map <left> :vertical resize -3<CR>
map <right> :vertical resize +3<CR>
"r键功能，调用下面的compilerun函数
nnoremap r :call CompileRun()<CR>
"LEADER u 用于刷新补全文件
map <LEADER>u :call CUpdate()<CR> 
"R键功能，刷新
map R :call F5()<CR>
inoremap --- -------------------------
"这里没啥用
"inoremap ,o <Esc>o
"inoremap ,O <Esc>O
