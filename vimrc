" 自定义设
exec "nohlsearch"
map R :source $HOME/.vimrc<CR>
map J <nop>
map K <nop>
map L :nohlsearch<CR>

" 状态栏显示方式
set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [TYPE=%2*%Y%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]\
" 显示行号
set nu
" 启动语法高亮
syntax on
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
" 显示相对行号
set relativenumber
" 设置tab键等于4个空格
set tabstop=4
" 开启自动缩进
set ai
" 设置过长行自动折行
set wrap
" 设置折叠根据句法
setlocal foldmethod=syntax
" 设置leader键为,
:let mapleader = ','

call plug#begin('~/.vim/plugged')

" 安装vim-plugin 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 安装命令PlugInstall!
" Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html','javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }

" Python
Plug 'vim-scripts/indentpython.vim'


Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

call plug#end()

" NERDTree相关设置
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" NERDTree-git-plugin相关设置
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1

" ale
let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']

" undoTree
nnoremap <F5> :UndotreeToggle<cr>

" indent-vim
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
nnoremap <F6> :IndentGuidesToggle<cr>

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END


