"素の状態のkeybindを記載
"plugin毎のkeybindは、.vim/advance/setting-plugins.vimに書いてる
"===========================================================
"settings
"===========================================================
nnoremap q <Nop>
nnoremap qq <Nop>
nnoremap s <Nop>
nnoremap S <Nop>
nnoremap <C-z> <Nop>
let mapleader = "\<Space>"				"Leaderをspaceに変更
"===========================================================
"移動
"===========================================================
nnoremap k   gk
nnoremap j   gj
vnoremap k   gk
vnoremap j   gj
nnoremap gk  k
nnoremap gj  j
vnoremap gk  k
vnoremap gj  j
nnoremap sh ^
nnoremap sl $
vnoremap v $h
"===========================================================
"入力
"===========================================================
nnoremap / /\v
vnoremap / /\v
nnoremap <ESC><ESC> :noh<CR>
nnoremap <Leader>o  :<C-u>for i in range(v:count1) \| call append(line('.'), '') \| endfor<CR>
nnoremap <Leader>O  :<C-u>for i in range(v:count1) \| call append(line('.')-1, '') \| endfor<CR>
vmap # <c-V>0I#<Esc>
vmap " <c-V>0I"<Esc>
vmap // <C-V>0I//<Esc>
nnoremap sg  :<C-u>%s///g<Left><Left><Left>
vnoremap sg  :s///g<Left><Left><Left>

"二度押しでコマンドモードへ
inoremap <silent> jj <Esc>
inoremap <silent> っj <ESc>
vnoremap <silent>ff <ESC>
vnoremap <silent>っｆ <Esc>
nnoremap bo  :%!xxd<cr>
"===========================================================
"ウィンドウ
"===========================================================
nnoremap <Leader>u gt
nnoremap <Leader>y gT
nnoremap <Leader>n :tabnew<CR>
nnoremap <Leader>s :<C-u>sp<CR>
nnoremap <Leader>v :<C-u>vs<CR>
nnoremap <Leader>x :q<CR>
nnoremap <leader>w  :<c-u>wa<cr>
nnoremap <leader>q  :<c-u>qa<cr>

"ウィンドウ間を移動
nnoremap <Leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k  <C-w>k
nnoremap <Leader>l <C-w>l

"===========================================================
"バッファ
"===========================================================
nnoremap <silent> sy :bprev<CR>
nnoremap <silent> su :bnext<CR>

"===========================================================
"その他
"===========================================================
"検索結果を画面中央に
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz

"インデント整形
nnoremap <Tab> v>
nnoremap <S-Tab> v<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap > >gv
vnoremap < <gv
nnoremap == gg=G

"日付入力
inoremap <Leader>date <C-R>=strftime('%Y.%m.%d')<CR>

"safety lock japanese IME
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap え e
nnoremap お o
nnoremap っd dd
nnoremap っy yy
nnoremap し” ci"
nnoremap し’ ci'
nnoremap せ ce
nnoremap で de
inoremap <silent> っｊ <ESC>
nnoremap っz zz
nnoremap ・ /
