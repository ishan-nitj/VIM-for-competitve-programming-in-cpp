"Efforts by Ishan Bansal

"Type vim .vimrc on terminal
"Copy this code and save
"After copying ,you will have the following commands:
"Ctrl+r=>Compile and run your code
"Ctrl+Shift+t=>Indent your code
"cm=>comment a section of lines
"uc=>uncomment a section of lines
"No need to save your code.It has enabled autosave feature
"Open open your cpp file and enjoy

filetype on
filetype indent on
syntax enable
autocmd BufNewFile *.cpp :0r ~/.vim/cpp 
autocmd BufNewFile *.cpp :w!
map <C-r> :!g++ --std=c++0x -g  % && ./a.out <CR>
nnoremap <buffer> <C-p> :exec '!python' shellescape(@%, 1)<cr>
map <C-S-t> gg=G <CR>
set number
set lines=50     
set columns=200  
set clipboard=unnamedplus
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
noremap <silent> cm :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> uc :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
autocmd TextChanged,TextChangedI <buffer> silent write

set nocompatible
set autoindent
set smartindent
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set textwidth=120

