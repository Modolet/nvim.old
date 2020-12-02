" COC extensions
let g:coc_global_extensions = ['coc-snippets','coc-marketplace','coc-vimlsp','coc-sh','coc-r-lsp','coc-pyright','coc-json','coc-java','coc-html','coc-css','coc-cmake','coc-clangd','coc-tsserver']

call plug#begin('~/.config/nvim/plugged')
	"书呆子树
	Plug 'scrooloose/nerdtree'
	"代码片段
	"Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	"自动补全
	"Plug 'ycm-core/YouCompleteMe'
	"语法检查
	"Plug 'dense-analysis/ale'
	"markdown
	Plug 'plasticboy/vim-markdown'
	Plug 'majutsushi/tagbar'
	Plug 'mbbill/undotree'
	Plug 'iamcco/markdown-preview.vim'
	Plug 'itchyny/lightline.vim'
	"括号补全
	Plug 'Raimondi/delimitMate'
	"中文文档
	Plug 'yianwillis/vimcdoc'
	"表格插件
	Plug 'dhruvasagar/vim-table-mode'
	"这里是主题
	Plug 'sainnhe/lightline_foobar.vim'
	Plug 'morhetz/gruvbox'
	Plug 'soft-aesthetic/soft-era-vim'
	Plug 'liuchengxu/space-vim-theme'
	Plug 'ayu-theme/ayu-vim'
	"html实时预览
	Plug 'turbio/bracey.vim'
	"html引擎
	Plug 'mattn/emmet-vim'
	"CSS syntax
	Plug 'hail2u/vim-css3-syntax'
	"CSS LESS support
	Plug 'groenewege/vim-less'
	"JavaScript 语法高亮
	Plug 'pangloss/vim-javascript'
	"JavaScript omnifunc
	Plug 'marijnh/tern_for_vim'
	"Qt Support
	Plug 'fedorenchik/qt-support.vim'
	"COC
	Plug 'neoclide/coc.nvim',{'branch':'release'}
	Plug 'antoinemadec/coc-fzf'
	"FZF
	Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
	Plug 'junegunn/fzf.vim' " needed for previews
	"竖线
	Plug 'nathanaelkane/vim-indent-guides'
	"Plug 'Yggdroot/indentLine'
	"git侧边栏
	Plug 'airblade/vim-gitgutter'
	"注释工具
	Plug 'scrooloose/nerdcommenter'
	"嵌套括号高亮
	Plug 'luochen1990/rainbow'
	"自动生成Python函数 / 类文档
	Plug 'kkoomen/vim-doge'
	"markdown TOC
	Plug 'mzlogin/vim-markdown-toc'
	"聊天
	Plug 'wsdjeg/vim-chat'
	"浮动终端
	Plug 'voldikss/vim-floaterm'
call plug#end()
