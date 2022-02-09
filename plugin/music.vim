lua music = require("music")

nnoremap <Leader>o :lua music.open_moc()<CR>
tnoremap <Leader>c <C-\><C-n>:lua music.close_moc()<CR>
