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

"添加类
function! Class(ClassName)
	if &filetype == 'cpp'
		"editing header file
		let header = a:ClassName.".h"
		:vsp %:h/.h
		call append(0, "#ifndef ".toupper(a:ClassName)."_H")
		call append(1, "#define ".toupper(a:ClassName)."_H")
		call append(2, " ")
		call append(3, "class ".a:ClassName)
		call append(4, "{")
		call append(5, "    public:")
		call append(6, "        ".a:ClassName."();")
		call append(7, "        virtual ~".a:ClassName."();")
		call append(8, "    protected:")
		call append(9, "    private:")
		call append(10, "};")
		call append(11, " ")
		call append(12, "#endif")
		:execute 'write' header
		"editing source file
		let src = a:ClassName.".cpp"
		:vsp %:h/.cpp
		call append(0, '#include "'.a:ClassName.'.h"')
		call append(1, " ")
		call append(2, a:ClassName."::".a:ClassName."()")
		call append(3, "{")
		call append(4, "//ctor ")
		call append(5, "}")
		call append(6, " ")
		call append(7, a:ClassName."::~".a:ClassName."()")
		call append(8, "{")
		call append(9, "//dtor ")
		call append(10, "}")
		execute 'write' src
	endif
endfunction

"r键功能
func! CompileRun()
	exec "w"
	if &filetype == 'c'
		exec "!gcc % -o %<"
		exec "FloatermNew time ./%<"
	elseif &filetype == 'cpp'
		if strlen(glob("*.pro")) > 0
			exec "!qmake"
			exec "!time make"
			exec printf("!./%s",trim(glob("*.pro"),".pro"))
		else
			exec "!g++ % -o %<"
			exec "FloatermNew time ./%<"
		endif
	elseif &filetype == "python"
		silent! exec "!clear"
		exec "FloatermNew time python3 %"
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
