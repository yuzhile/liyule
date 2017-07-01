let mapleader=";"
set number
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
"windown operation
nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j
nnoremap <Leader>u <C-U>
nnoremap <Leader>d <C-D>

" vundle configure
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on

" color configure
"set background=dark
"colorscheme molokai
"colorscheme solarized

" auto indent
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"flod code
set foldmethod=syntax
"set foldmethod=indent
set foldmethod=syntax
set nofoldenable

" >>
" YCM 补全

" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1

" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0

" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=0
"" 引入 C++ 标准库 tags
"set tags+=/data/misc/software/app/vim/stdcpp.tags
"set tags+=/data/misc/software/app/vim/sys.tags

" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>

" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview

" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1

" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1


