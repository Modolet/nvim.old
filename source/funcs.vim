"自动添加文件头
autocmd BufNewFile *.vim, exec ":call SetTitle()"
let $author_name = "Modolet"

function SetTitle()
endfunction

"F5功能
func! F5()
	exec "w"
	if &filetype == "html"
		exec "BraceyEval"
	endif
endfunc

"r键功能
func! CompileRun()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		if strlen(glob("*.pro")) > 0
			exec "!qmake"
			exec "!time make"
			exec printf("!./%s",trim(glob("*.pro"),".pro"))
		else
			exec "!g++ % -o %<"
			exec "!time ./%<"
		endif
	elseif &filetype == "python"
		silent! exec "!clear"
		exec "!time python3 %"
	elseif &filetype == "markdown"
		exec "MarkdownPreview"
	elseif &filetype == "md"
		exec "MarkdownPreview"
	elseif &filetype == "html"
		exec "Bracey"
	elseif &filetype == "htm"
		exec "Bracey"
	endif
endfunc
