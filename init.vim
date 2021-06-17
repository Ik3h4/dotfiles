" --------------------------------------------------------------
" dein
" --------------------------------------------------------------
if &compatible
  set nocompatible " Be iMproved
endif

" Required:
" Add the dein installation directory into runtimepath
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$HOME/.cache/dein')

" Let dein manage dein
call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('neoclide/coc.nvim', { 'merged': 0 })
call dein#add('preservim/nerdtree')
call dein#add('cohama/lexima.vim')
" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
   call dein#install()
endif


" --------------------------------------------------------------
" coc.dein
" --------------------------------------------------------------
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" --------------------------------------------------------------
" NERDTree
" --------------------------------------------------------------
nnoremap <silent><C-e> :NERDTreeToggle<CR>




" --------------------------------------------------------------
" setting
" --------------------------------------------------------------
"文字コードをUFT-8に設定
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" show mode
set showmode
" 入力中のコマンドをステータスに表示する
set showcmd
" clipboard
set clipboard+=unnamed,unnamedplus
" font
set guifont=Myrica\ M:h13
" backspace
set backspace=indent,eol,start
" カレントディレクトリを自動で移動
set autochdir

" mouse
if has('mouse')
    set mouse=a
endif

" --------------------------------------------------------------
" 見た目系
" --------------------------------------------------------------
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=longest,full
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
"プログラミング言語に合わせて適切にインデントを自動挿入(切り替え)
set smartindent
"eコマンド等でTabキーを押すとパスを保管する(文字列のリスト) : この場合まず最長一致文字列まで補完し、2回目以降は一つづつ試す
set wildmode=longest,full


" --------------------------------------------------------------
" Tab系
" --------------------------------------------------------------
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4
" タブキー押下時に挿入される文字幅を指定
set softtabstop=4

" --------------------------------------------------------------
" 検索系
" --------------------------------------------------------------
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" search central
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz


" --------------------------------------------------------------
" nmap
" --------------------------------------------------------------
" python3 F5 execution
nmap <F5> :!python3 %
" increment
nmap + <c-a>
" decrement
nmap - <c-x>
" VIMRC
nmap <Space>. :<c-u>tabedit $MYVIMRC<CR>
" window separate
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l
" Esc
inoremap jj <Esc>
inoremap <silent> <Esc> <Esc>:call system('fcitx-remote -c')<CR>


