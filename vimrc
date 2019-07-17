 " 自定义设
exec "nohlsearch"
map R :source $HOME/.vimrc<CR>
map J <nop>
map K <nop>
map L :nohlsearch<CR>

set laststatus=2
set nu
syntax on
set cursorline
set showcmd
set wildmenu
set hlsearch
set ignorecase
set smartcase
set relativenumber
set tabstop=4
set ai
set wrap
                            
call plug#begin('~/.vim/plugged')

" 安装vim-plugin 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 安装命令PlugInstall!
" Plug 'connorholyday/vim-snazzy'
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Taglist
" Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
" Plug 'w0rp/ale'

" Auto Complete
" Plug 'Valloric/YouCompleteMe'

" Undo Tree
" Plug 'mbbill/undotree/'

" Other visual enhancement
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'itchyny/vim-cursorword'

" Git
" Plug 'rhysd/conflict-marker.vim'
" Plug 'tpope/vim-fugitive'
" Plug 'mhinz/vim-signify'
" Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
" Plug 'elzr/vim-json'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
" Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html','javascript', 'css', 'less'] }
" Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
" Plug 'mattn/emmet-vim'

" Python
" Plug 'vim-scripts/indentpython.vim'

" Markdown
" Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
" Plug 'vimwiki/vimwiki'

" Bookmarks
" Plug 'kshenoy/vim-signature'

" Other useful utilities
" Plug 'terryma/vim-multiple-cursors'
" Plug 'junegunn/goyo.vim' " distraction free writing mode
" Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'to change 'word' to `word`
" Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
" Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '',or type i) i] i} ip

" Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'kana/vim-textobj-user'
" Plug 'fadein/vim-FIGlet'
call plug#end()

