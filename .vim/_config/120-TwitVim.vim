UsePlugin 'twitvim'
" ========================
" 'twitvim/twitvim'
" ========================
let twitvim_show_header = 0
let twitvim_count = 150
let twitvim_timestamp_format = '%Y/%m/%d %R'
let twitvim_browser_cmd = 'google-chrome'

augroup twitvim
  autocmd FileType twitvim    setlocal wrap wrapmargin=60
augroup END
