lua << EOF
vim.g.background_transparency = true
EOF
" rainbow pairs
 let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
 	let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}


"注释插件
map <C-p> <space>c<space>
imap <C-p> <esc><space>c<space>i
"创建默认映射，
let g:NERDCreateDefaultMappings=1

" vim-translator
let g:translator_default_engines=['bing','haici']
" Echo translation in the cmdline
nmap <silent> <Leader>wt <Plug>Translate
vmap <silent> <Leader>wt <Plug>TranslateV
" Display translation in a window
nmap <silent> <Leader>ww <Plug>TranslateW
vmap <silent> <Leader>ww <Plug>TranslateWV
" Replace the text with translation
nmap <silent> <Leader>wr <Plug>TranslateR
vmap <silent> <Leader>wr <Plug>TranslateRV


"bracey
let g:bracey_browser_command='chrome'

"indentLine
let g:indentLine_conceallevel = 2
"在默认情况下添加注释分隔后的空间
let g:NERDSpaceDelims=1

"对紧凑的多行注释使用紧凑语法，
let g:NERDCompactSexyComs=1

"将行注释注释定界符向左对齐
let g:NERDDefaultAlign='left'

"将语言设置为默认使用其替代定界符
let g:NERDAltDelims_java=1

"加入自己的自定义格式或覆盖默认
let g:NERDCustomDelimiters={'c':{'left':'//'}}

"允许注释和倒空行（在注释区域时很有用），
let g:NERDCommentEmptyLines=1

"取消注释时启用尾随空格的修剪，
let g:NERDTrimTrailingWhitespace=1

"启用NERDCommenterToggle检查所有选择的线被注释或不
let g:NERDToggleCheckAllLines=1
"Nerdtree
"打开目录时打开Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'CocCommand explorer' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"如果未指定文件，在vim启动时自动打开NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
"let NERDTreeMapOpenSplit='h'
"let NERDTreeMapToggleHidden='H'

"markdownpreview
let g:mkdp_path_to_chrome = 'google-chrome-stable'

"vimspector
"按键映射
let g:vimspector_enable_mappings='HUMAN'
"高亮写在JavaScript中的CSS和HTML
let javascript_enable_domhtmlcss = 1
"tagbar
let g:tagbar_map_showproto='fs'

"markdown
"禁用代码折叠
let g:vim_markdown_folding_disabled=1

"代码片段
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>""
" let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
"Enable emmet in different mode
let g:user_emmet_mode='a'

"vim-doge
let g:doge_doc_standard_python = 'reST'

"indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size=1

"Coc
"statusline
set statusline=%{coc#status()}
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100
" Don't pass messages to |ins-completion-menu|.
"set shortmess+=c
"Some servers have issues with backup files
set nobackup
set nowritebackup
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
"if has("patch-8.1.1564")
" Recently vim can merge signcolumn and number column into one.合并左侧数字
"  set signcolumn=number
"else
"  set signcolumn=yes
"endif
" Use tab for trigger completion with characters ahead and navigate.设置tab补全
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-o> to trigger completion.<c-o>打开补全
if has('nvim')
  inoremap <silent><expr> <c-o> coc#refresh()
else
  inoremap <silent><expr> <c-o> coc#refresh()
endif
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at
" currposition.Coc only does snippet and additional edit on confirm.<cr> could
" be remapped by other vim plugin,try `:verbose imap <CR>`.to.设置回车补全
if exists('*complete_info')
	inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" Use `<leader>[` and `<leader>]` to navigate diagnostics.跳转到上/下一个错误
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>[ <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>] <Plug>(coc-diagnostic-next)
" GoTo code navigation.跳到定义
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use <leader>hl to show documentation in preview window.查看文档
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction
nnoremap <silent> <leader>hl :call <SID>show_documentation()<CR>
"Highlight the symbol and its references when holding the cursor.高亮同一符号
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming.重命名变量
nmap <leader>r <Plug>(coc-rename)
" Formatting selected code.代码格式化
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
" Applying codeAction to the selected region.就像vs-code的右键
" 做了一些修改 from TheCW
xmap <leader>p  <Plug>(coc-codeaction-selected)
nmap <leader>p  <Plug>(coc-codeaction-selected)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" coc-explorer 配置
:nmap tt <Cmd>CocCommand explorer<CR>

" Defx 配置
" call defx#custom#option('_', {
"       \ 'winwidth': 30,
"       \ 'split': 'vertical',
"       \ 'direction': 'topleft',
"       \ 'show_ignored_files': 0,
"       \ 'buffer_name': '',
"       \ 'toggle': 1,
"       \ 'resume': 1
"       \ })

let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.config/nvim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

" Use preset argument to open it
noremap gfd <Cmd>CocCommand explorer --preset .vim<CR>
noremap ft <Cmd>CocCommand explorer --preset floating<CR>
noremap gfc <Cmd>CocCommand explorer --preset cocConfig<CR>
noremap gfb <Cmd>CocCommand explorer --preset buffer<CR>

" List all presets
nmap fl <Cmd>CocList explPresets<CR>

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

" set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:lightline = {
    \'colorscheme': 'catppuccin',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'ctags'
let g:vista_executive_for = {
			\ 'cpp': 'coc',
			\ 'php': 'coc',
			\ }
let g:vista_ctags_cmd = {
			\ 'haskell': 'hasktags -x -o - -c',
			\ }
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
			\   "function": "\uf794",
			\   "variable": "\uf71b",
			\  }

nnoremap <silent><nowait> tf :<C-u>Vista!!<cr>

" 输入法设置
let g:ZFVimIM_pinyin_gitUserEmail='Modolet@163.com'
let g:ZFVimIM_pinyin_gitUserName='Modolet'
let g:ZFVimIM_pinyin_gitUserToken='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'
