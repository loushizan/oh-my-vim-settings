"启动打开NERD_tree
NERDTree

"NERDTree插件的快捷键
imap <silent> <F7> <esc>:NERDTreeToggle<CR>
nmap <silent> <F7> :NERDTreeToggle<CR>

"BufExplorer 快捷键 {{{
"imap <silent> <C-b> <esc>:BufExplorer<CR>
"nmap <silent> <C-b> :BufExplorer<CR>
" }}}

"Delete Hack
nmap <silent> <del> "_x
vmap <silent> <del> "_x
nmap <silent> dd V<del>
nmap <silent> dw viw<del>
vmap <silent> dw iw<del>

"设置工作目录
"function! CHANGE_CURR_DIR()
"let _dir = expand("%:p:h")
"exec "cd " . _dir
"unlet _dir
"endfunction
"autocmd BufEnter * call CHANGE_CURR_DIR()

"窗口透明度
"set transparency=10
