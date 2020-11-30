"写完要做的事
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
"粗体
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
"划掉
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
"斜体
autocmd Filetype markdown inoremap <buffer> ,x ** <++><Esc>F*i
"单行代码
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
"多行代码
autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
"插入链接
autocmd Filetype markdown inoremap <buffer> ,a [](<++>)<Esc>F[a
"标题
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
"分隔线
autocmd Filetype markdown inoremap <buffer> ,l ---------<Enter>

autocmd Filetype html imap \\ <plug>(emmet-expand-abbr)
autocmd Filetype html imap \i <plug>(emmet-image-size)
