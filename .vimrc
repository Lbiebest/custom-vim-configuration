" 基本设置 
set nocompatible          " 关闭兼容模式，启用 Vim 的增强功能
set encoding=utf-8        " 内部字符编码设置为 UTF-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030 " 文件编码尝试顺序
set termencoding=utf-8    " 终端编码
set number                " 显示行号
" set relativenumber        " 相对行号，便于跳转

" 缩进设置
set expandtab             " 使用空格替代 Tab
set tabstop=4             " Tab 显示为 4 个空格
set shiftwidth=4          " 自动缩进为 4 个空格
set softtabstop=4         " 编辑时每个 Tab 键等于 4 个空格
set autoindent            " 自动缩进当前行
set smartindent           " 智能缩进

" 搜索优化
set hlsearch              " 搜索结果高亮
set incsearch             " 实时搜索
set ignorecase            " 搜索时忽略大小写
set smartcase             " 搜索时如果有大写字母，区分大小写

" 外观设置
syntax enable             " 开启语法高亮
set cursorline            " 高亮当前行
set cursorcolumn          " 高亮当前列
autocmd ColorScheme * highlight CursorLine ctermbg=236 guibg=#2E2E2E  " 自动适应不同背景
set mouse=a               " 启用鼠标支持
set background=dark       " 设置背景颜色为暗色，适用于深色主题

" 文件和备份设置
set backup                " 启用备份
set backupdir=D:/Documents/.vim/backup/  " 备份文件存放路径
set undofile              " 启用撤销文件
set undodir=D:/Documents/.vim/undo/  " 撤销文件存放路径
set swapfile              " 启用交换文件
set directory=D:/Documents/.vim/swap/  " 交换文件存放路径

" 界面优化
set wrap                  " 自动换行
set linebreak             " 换行时不断词
set scrolloff=5           " 上下滚动时保持 5 行间距
set sidescrolloff=5       " 左右滚动时保持 5 列间距

" 其他设置
set wildmenu              " 命令补全增强
set showcmd               " 显示输入的命令
set ruler                 " 显示状态栏标尺
set splitbelow            " 新窗口在下方打开
set splitright            " 新窗口在右侧打开
set clipboard=unnamedplus " 使用系统剪贴板
set timeoutlen=500        " 映射超时时间为 500 毫秒

" 自定义快捷键 - 以 Space 作为主键
nnoremap <Space>w :w<CR>       " Space+w 保存文件
nnoremap <Space>q :q<CR>       " Space+q 退出文件
vnoremap <Space>c "+y          " Space+c 复制到系统剪贴板
nnoremap <Space>v "+gP         " Space+v 粘贴剪贴板内容
inoremap <Space>v <C-r>+       " 插入模式下 Space+v 粘贴
vnoremap <Space>/ :s/^/"/<CR>  " Space+/ 注释选中文本
nnoremap <Space>/ :s/^/"/<CR>  " Space+/ 注释当前行

" 高效括号补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" 自动保存功能
"autocmd InsertLeave * silent! w
"autocmd BufLeave * silent! w

" 文件保存提醒
autocmd BufLeave * if &modified | echo "文件未保存，请检查！" | endif

" 拼写检查
nnoremap <F7> :setlocal spell! spelllang=en_us<CR>



