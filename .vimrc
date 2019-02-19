"set nu
syntax on
syntax sync fromstart

"set t_Co=256           " use 256 colors
"set termguicolors       " use 24 bit color

"older schemes
"colorscheme delek
"colorscheme ingretu

set background=dark
"colorscheme palenight
colorscheme vividchalk

"override horrible non-black background jfc how can people live with that shit?
highlight Normal guibg=black guifg=white 



set nocompatible        " Use Vim defaults (much better!)
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
                        " than 50 lines of registers
set history=50          " keep 50 lines of command line history
set bs=indent,eol,start " allow backspacing over everything in insert mode

set autoindent          " always set autoindenting on
set preserveindent
set nosmartindent         " set smart indentation off - it fucks up Python
set smarttab
set expandtab
set textwidth=79
set cursorline

set ruler               " show the cursor position all the time
set expandtab           " expand tabs to spaces
set shiftwidth=4        " default width of the smart tab
set tabstop=4           " default existing tabs' width
set softtabstop=4
set modeline            " enable modeline support
set modelines=5         " look for modelines up to the 5h line
set showmatch           " show the matching paren/bracket
set matchtime=2         " but faster
"set spell               " check grammar


set formatoptions=croqn2
set lbr
set nojoinspaces

function! PasteAwareStatusline()
    let default = "%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P"
    if &paste
        return "%#ErrorMsg#" . default . "%*"
    endif
    return default
endfunction
set statusline=%!PasteAwareStatusline()

"let g:lightline = { 'colorscheme': 'palenight' }
"let g:palenight_terminal_italics=1

" paste/nopaste toggle
nmap <Leader>p :set paste!<CR>


" Ruby and related
autocmd BufNewFile,BufRead Gemfile,Vagrantfile setlocal filetype=ruby
autocmd BufNewFile,BufRead *.tt,*.citrus setlocal filetype=treetop
" Don't use foldmethod=syntax as it is DOG SLOW on nontrivial files :(
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.json set filetype=json
autocmd BufNewFile,BufRead *.jsonp set filetype=json

" Markdown
autocmd BufNewFile,BufRead *.txt setlocal filetype=markdown
autocmd FileType markdown setlocal ai comments=n:> spell

" ReST
autocmd BufNewFile,BufRead *.rst,*.rest setlocal filetype=rst
autocmd FileType rst setlocal ai comments=n:> spell

" YAML
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2

" No more need to drop modelines into common Apache files
" (both Debian and RedHat style Apache conf dirs)
autocmd BufNewFile,BufRead /etc/apache2/*,/etc/httpd/* setlocal filetype=apache

" Same for nginx
autocmd BufNewFile,BufRead */etc/nginx/* setlocal ft=nginx

" JSON
autocmd BufNewFile,BufRead *.json setlocal ft=javascript

" Zsh
autocmd BufNewFile,BufRead ~/.zsh* setlocal filetype=zsh

" Io
autocmd BufNewFile,BufRead *.io setlocal ft=io

" Racket/Scheme
autocmd BufNewFile,BufRead *.rkt setlocal tabstop=2 softtabstop=2 shiftwidth=2 ft=scheme

" pretty print json 
map <leader>jt <Esc>:%!json_xs -f json -t json-pretty<CR>
