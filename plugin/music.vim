if exists("g:loaded_music") | finish | endif

if !has("nvim-0.5")
    echohl Error
    echomsg "music.nvim is only available for Neovim versions 0.5 and above"
    echohl clear
    finish
endif

let s:save_cpo = &cpo
set cpo&vim

lua music = require("music")

nnoremap <Leader>o :lua music.open_fw()<CR>
tnoremap <Leader>c <C-\><C-n>:lua music.close_fw()<CR>

let g:loaded_music = 1

let &cpo = s:save_cpo
unlet s:save_cpo
