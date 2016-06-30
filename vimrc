filetype on
filetype indent on
syntax enable
autocmd BufNewFile *.cpp :0r ~/.vim/cpp 
autocmd BufNewFile *.cpp :w!
map <C-r> :!g++ -g  % && ./a.out <CR>
map <C-S-t> gg=G <CR>
set number
set lines=50     
set columns=200  
set clipboard=unnamedplus
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
noremap <silent> cm :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> uc :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
autocmd TextChanged,TextChangedI <buffer> silent write

