"================================
"表示設定
"================================
set stal=0                                                          "tabバーを常に非表示する

if has('unix')
  set shell=zsh                                                       "標準のshellをbashにする
elseif has('win64')
  set shell=cmd
endif

set fileformats=unix,dos
set title                                                           "編集中のファイル名の表示
set showcmd                                                         "入力中のコマンドをステータスに表示する
set number                                                          "行番号を表示
set cursorline                                                      "現在の行を強調表示
set showmatch                                                       "括弧入力時に対応する括弧を表示
set display=lastline                                                "テキスト表示の方法を変える(長いテキストを省略せず最後まで表示する)
set laststatus=1                                                    "ステータスラインを常に表示
set ruler                                                           "ルーラーを表示する
set laststatus=2                                                    "ステータスバーを常に表示する
set list                                                            "タブ、空白、改行を可視化にする
set listchars=tab:\|\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%    "タブ、空白、改行を可視化の文字を設定

set ambiwidth=double                                                "全角文字をvimで正しく認識させる設定
syntax enable                                                       "構文ハイライトを有効にする

"補完の表示色を変更する
highlight Pmenu ctermfg=white ctermbg=black
highlight PmenuSel ctermfg=white ctermbg=gray
set t_Co=256

"insertmodeだと
set iminsert=0
set imsearch=-1

"================================
"検索設定
"================================
set hlsearch                                                        "検索時の強調表示をやめる
set smartcase                                                       "検索文字に大文字が含まれる場合は区別して検索する
set wrapscan                                                        "検索時に最後まで移動したら最初に戻る
set incsearch                                                       "インクリメンタルサーチを有効にする
set matchtime=1                                                     "カーソルが飛ぶ時間を変更
"================================
"インデント
"================================
set breakindent                                                     "折り返すときにインデントも考慮する
set showbreak=>\                                                    "折返したときに表示する
set noexpandtab                                                     "タブ文字をスペースにする
set tabstop=4                                                       "タブ幅を4文字にする
set smarttab                                                        "コンテキストに応じたタブの処理を行う
set wildmenu                                                        "コマンドモードの補完
set wildmode=list:longest,full                                      "コマンドラインの補完方法を設定する
set matchpairs& matchpairs+=<:>                                     "対応括弧に<と>のペアを追加
set shiftround                                                      "インデントをshiftwidthの倍数に丸める
set shiftwidth=4                                                    "自動で挿入されるタブ幅
set softtabstop=0                                                   "タブ幅をtabstopの値に任せる
set ai                                                              "自動字下げ
set si                                                              "改行入力行の末尾にあわせてインデントを増減する
"================================
"補完
"================================
set pumheight=10                                                    "補完の幅を10にする
set infercase                                                       "補完の際の大文字小文字の区別しない
"================================
"文字移動
"================================
set backspace=indent,eol,start                                      "Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,<,>,[,]                                             "行頭行末の左右移動で行をまたぐ
set scrolloff=30                                                     "上下8行の視界を確保
set sidescrolloff=16                                                "左右スクロール時の視界を確保
set sidescroll=1                                                    "左右スクロールは一文字づつ行う

set virtualedit=block
" set virtualedit=all                                                 "文字がない場所にもカーソルを移動できるようにする
"================================
"ファイル処理関連の設定
"================================
set confirm                                                         "保存されていないファイルがあるときは終了前に保存確認
set hidden                                                          "保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread                                                        "外部でファイルに変更がされた場合は読みなおす
set nobackup                                                        "ファイル保存時にバックアップファイルを作らない
set noswapfile                                                      "ファイル編集中にスワップファイルを作らない
set splitbelow                                                      "新しいウィンドウを下に開く
set splitright                                                      "新しいウィンドウを右に開く
set undolevels=1000"                                                "1000回undo出来るようにする

"mouse
set mouse=a                                                         "mouseを使えるようにする
set ttymouse=xterm2

"================================
"その他
"================================
set helplang=ja,en                                                   "ヘルプファイルを日本語優先にする
set lazyredraw                                                       "マクロやコマンドを実行する間、画面を再描画しない(スクロールが重くなる対策)
set ttyfast                                                          "高速ターミナル接続を行う(スクロールが重くなる対策)
set timeout timeoutlen=1000 ttimeoutlen=50                           "キー操作高速化
set shortmess+=I                                                     "shortメッセージを無効化
set nofoldenable                                                     "foldingを無効化
set history=1000                                                      "履歴を保存
set noerrorbells                                                     "音無効化
set novisualbell                                                     "音無効化
set t_vb=                                                            "音無効化
set tm=500                                                           "音無効化

if has('unix')
  set clipboard&
  set clipboard^=unnamedplus
endif

if has('win32') && has('win64')
  set clipboard+=unnamed"                                              "コピーしたときにどうするか
endif

set cmdheight=2                                                      "コマンド行の高さ


"File Type

augroup vimrc
  filetype on
  filetype plugin on
  filetype indent on

  autocmd!
  autocmd BufNewFile,BufRead *.c setfiletype c syntax=c
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
  autocmd BufNewFile,BufRead *.txt setlocal filetype=markdown
  autocmd BufNewFile,BufRead *.fish setlocal filetype=fish
  autocmd FileType markdown   setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  autocmd FileType apache     setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  autocmd FileType css        setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  autocmd FileType diff       setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
  autocmd FileType xml        setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
  autocmd FileType java       setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  autocmd FileType sql        setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType ruby       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType eruby      setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType yaml       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType coffee     setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType tex        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType html       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType sql        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType sh         setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType vim        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType bash       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType zsh        setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
  autocmd FileType fish       setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
augroup END

