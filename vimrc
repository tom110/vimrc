" 自定义设
exec "nohlsearch"
map R :source $HOME/.vimrc<CR>
map J <nop>
map K <nop>
map L :nohlsearch<CR>
map s <nop>
map S :w<CR>
map Q :q<CR>
map ta :tabe<CR>
map tl :+tabnext<CR>
map th :-tabnext<CR>

" 状态栏显示方式
set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [TYPE=%2*%Y%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]\
" 启动语法高亮
syntax on
" 显示行号
set nu
" 显示行下划线
set cursorline
" 右下角显示指令输入
set showcmd
" 命令自动补全（tab键）
set wildmenu
" 搜索高亮
set hlsearch
" 设置查找大小写不敏感
set ignorecase
" 设置tab键等于2个空格
set ts=2
set sw=2
" 开启自动缩进
set ai
" 设置过长行自动折行
set wrap
" 设置折叠根据句法
setlocal foldmethod=syntax
" 设置leader键为,
:let mapleader = ','
" 设置折叠样式
function! NeatFoldText()
	let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
	let lines_count = v:foldend - v:foldstart + 1
	let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
	let foldchar = matchstr(&fillchars, 'fold:\zs.')
	let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
	let foldtextend = lines_count_text . repeat(foldchar, 8)
	let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
	return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

set foldtext=NeatFoldText()
