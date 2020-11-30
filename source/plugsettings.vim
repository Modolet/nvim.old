 "Nerdtree
"打开目录时打开Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"如果未指定文件，在vim启动时自动打开NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif
"let NERDTreeMapOpenSplit='h'
"let NERDTreeMapToggleHidden='H'

"markdownpreview
let g:mkdp_path_to_chrome = 'google-chrome-stable'

"youcompleteme
"配置文件路径
"let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"关闭ycm的syntax check
"let g:ycm_show_diagnostics_ui = 0
"自动收起powerview
"let g:ycm_autoclose_preview_window_after_completion=0
"let g:ycm_autoclose_preview_window_after_insertion=1
"python补全
"let g:ycm_server_python_interpreter='/usr/bin/python3'
"语法关键字补全
"let g:ycm_seed_identifiers_with_syntax = 1
"开启ycm基于标签引擎
"let g:ycm_collect_identifiers_from_tags_files = 1
"从第二个键入字符就开始罗列匹配项
"let g:ycm_min_num_of_chars_for_completion = 2
"在注释中也能补全
"let g:ycm_complete_in_comments = 1
"在字符串中也能补全
"let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
"let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']

"高亮写在JavaScript中的CSS和HTML
let javascript_enable_domhtmlcss = 1
"设置ycm的css自动补全
"let g:ycm_semantic_triggers = {
"	\'css':['re!^\s{4}','re!:\s+'],
"	\'html':['</'],
"   \}

"tagbar
let g:tagbar_map_showproto='fs'

"ale
let g:ale_linters = {
\	'python':['pylint3'],
\	'javascript':['eslint'],
\	'html':['tidy'],
\	'css':['stylelint']
\}
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning ='--'
"let g:ale_c_clang_options="-I/usr/include/qt/"
"let g:ale_cpp_clang_options="-I/usr/include/qt/"

"markdown
"禁用代码折叠
let g:vim_markdown_folding_disabled=1

"代码片段
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>""
"Enable emmet in different mode
let g:user_emmet_mode='a'

"indentLine
"let g:indentLine_setColors = 0
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

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
nmap <leader>rn <Plug>(coc-rename)
" Formatting selected code.代码格式化
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Applying codeAction to the selected region.就像vs-code的右键
" Example: `<leader>aap` for current paragraph
" 做了一些修改 from TheCW
"xmap <leader>a  <Plug>(coc-codeaction-selected)
"nmap <leader>a  <Plug>(coc-codeaction-selected)
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
" Translate
nnoremap <leader>tr :CocCommand translator.popup<CR>
