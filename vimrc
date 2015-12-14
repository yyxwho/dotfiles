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

" Folder
set foldmarker={,}
set foldlevel=0
set foldmethod=marker


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
