"------------------------------------
"" NeoBundole setting
"------------------------------------
set nocompatible               " be iMproved
filetype plugin indent off     " required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif

" let NeoBundle manage NeoBundle
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'

" My Bundles here:
NeoBundle 'Shougo/clang_complete'
NeoBundle 'Shougo/echodoc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/vinarise'

filetype plugin indent on     " required!

"------------------------------------
"" unite.vim setting
"------------------------------------
"" 入力モードで開始する
"let g:unite_enable_start_insert=0
" バッファ一覧
"noremap <C-U><C-B> :Unite buffer<CR>
" " ファイル一覧
"noremap <C-U><C-F> :UniteWithBufferDir -buffer-name=files file<CR>
" " 最近使ったファイルの一覧
"noremap <C-U><C-R> :Unite file_mru<CR>
" " レジスタ一覧
"noremap <C-U><C-Y> :Unite -buffer-name=register register<CR>
" " ファイルとバッファ
"noremap <C-U><C-U> :Unite buffer file_mru<CR>
" " 全部
"noremap <C-U><C-A> :Unite UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
" " ESCキーを2回押すと終了する
"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"------------------------------------
"" base setting
"------------------------------------
"colorscheme default 
"colorscheme blue
"colorscheme darkblue
"colorscheme delek
"colorscheme desert
"colorscheme elflord
"colorscheme evening
"colorscheme koehler
"colorscheme morning
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme ron
"colorscheme shine
"colorscheme slate
colorscheme torte
"colorscheme zellner

set autoindent
set ts=4 sw=4 et
syntax on
set number
set showmatch
set smartindent
set wrapscan
set ruler

" status line
set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \ 
set statusline+=\ \ \ [%{&ff}/%Y] 
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\ 
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
    let curdir = substitute(getcwd(), $HOME, "~", "")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return '[PASTE]'
    else
        return ''
    endif
endfunction

"------------------------------------
"" indent-guides.vim
"------------------------------------
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_color_change_percent = 30
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1

filetype plugin indent on     " required!


