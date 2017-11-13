if filereadable($HOME . "/.vundle")
    source ~/.vundle
endif

" File Encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" Keyboard Shortcut Leader
let mapleader = " "

set backspace=2             " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler                   " show the cursor position all the time
set showcmd                 " display incomplete commands
set incsearch               " do incremental searching
set laststatus=2            " Always display the status line
set autowrite               " Automatically :write before running commands
set autoindent

filetype plugin indent on   " Automatically detect file types.
syntax on                   " Syntax highlighting

" Softtabs, 4 spaces
set cindent
set modeline
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Display extra whitespace
set list
"set listchars=tab:»·,trail:·,nbsp:·
"set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:·
set listchars=tab:▸\ ,trail:·,nbsp:·

" Fold {{{
" set foldmarker={,}
set foldlevel=0
set foldmethod=marker
"}}}

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

" Always use vertical diffs
set diffopt+=vertical

if &compatible
    set nocompatible
end

set pastetoggle=<F12>
map <leader>p "*p

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags -R .<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

augroup vimrcEx
    autocmd!
    " When editing a file, always jump to the last known ckrsor position.
    " Don't do it for commit messages, when the position is invalid, or when
    " inside an event handler (happens when dropping a file on gvim).
    autocmd BufReadPost *
                \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif

    " Automatically wrap at 72 characters and spell check git commit messages
    autocmd FileType gitcommit setlocal textwidth=72
    autocmd FileType gitcommit setlocal spell
augroup END

" set mapleader
let mapleader=","
" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

" vim-go settings
let g:go_fmt_command = "goimports"

" YCM settings
let g:ycm_key_list_select_completion = ['<Down>', '<c-j>']
let g:ycm_key_list_previous_completion = ['<Up>', '<c-k>']
let g:ycm_key_invoke_completion = '<tab>'


" UltiSnips setting
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<S-c-j>'
let g:UltiSnipsJumpBackwardTrigger='<S-c-k>'
let g:UltiSnipsEditSplit="vertical"

" nerdcommenter setting
map <F4> <leader>ci <CR>

" makrdown setting
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_folding_level = 6

""""""""""""""""""""""
"Quickly Run
""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python3 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        "        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

" python setting
