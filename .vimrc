" ---- highlight spaces ----
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$|\t \+\t\|^ \+\t/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\|\t \+\t\|^ \+\t/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t \+\t\|^ \+\t/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\|\t \+\t\|^ \+\t/
autocmd BufWinLeave * call clearmatches()

" ---- make it more like vi ----
syntax off
set nohlsearch
:let loaded_matchparen = 1

" ---- make folder specific options ----
if (expand('%:p') =~ "/kernel/")
elseif (expand('%:p') =~ "/cm-11.0/")
    set expandtab
    set sw=4
endif
