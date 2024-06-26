"                           --- SexyVim ---


" --- Vundle settings ---

set nocompatible    " Be iMproved, required
filetype off        " Required

" Set the runtime path to include Vundle and initialize
set rtp+=/home/$USER/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'                 " Let Vundle manage Vundle, required

" Code/project navigation 
Plugin 'scrooloose/nerdtree'               " A tree explorer plugin for vim
Plugin 'Shougo/unite.vim'                  " Navigation between buffers and files
Plugin 'majutsushi/tagbar'                 " Class/module browser
Plugin 'tmhedberg/SimpylFold'              " Code Folding

" Other 
Plugin 'vim-airline/vim-airline'           " Lean & mean status/tabline 
Plugin 'vim-airline/vim-airline-themes'    " Themes for vim-airline
Plugin 'tpope/vim-surround'                " Parentheses, brackets, quotes, XML tags, and more
Plugin 'Yggdroot/indentLine'               " Display vertical lines
Plugin 'matze/vim-move'                    " Moving text

" Snippets support 
Plugin 'garbas/vim-snipmate'               " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'      " Dependencies #1
Plugin 'tomtom/tlib_vim'                   " Dependencies #2
Plugin 'honza/vim-snippets'                " Snippets repo

" Languages support 
Plugin 'scrooloose/syntastic'              " Syntax checking plugin for Vim
Plugin 'tpope/vim-commentary'              " Comment stuff out
Plugin 'mitsuhiko/vim-sparkup'             " Sparkup (XML/jinja/htlm-django/etc.) support
Plugin 'elzr/vim-json'                     " Better JSON for VIM

" CSS 
Plugin 'JulesWang/css.vim'                 " CSS syntax file
Plugin 'groenewege/vim-less'               " Vim syntax for LESS (dynamic CSS)

" JavaScript 
Plugin 'pangloss/vim-javascript'           " Vastly improved JS indentation and syntax support 
Plugin 'maksimr/vim-jsbeautify'            " Formated javascript files by js-beautify

" TypeScript 
Plugin 'leafgarland/typescript-vim'        " Typescript Syntax

" HTML 
Plugin 'othree/html5.vim'                  " HTML5 omnicomplete and sytnax
Plugin 'idanarye/breeze.vim'               " Html DOM navigation

" Python 
Plugin 'davidhalter/jedi-vim'              " Awesome Python autocompletion with VIM
Plugin 'klen/python-mode'                  " Vim python-mode. PyLint, Rope, Pydoc
Plugin 'mitsuhiko/vim-jinja'               " Jinja support for vim
Plugin 'jmcantrell/vim-virtualenv'         " Virtualenv support in VIM
Plugin 'tshirtman/vim-cython'              " Cython support   

" Docker 
Plugin 'ekalinin/Dockerfile.vim'           " Syntax for Dockerfile
Plugin 'kkvh/vim-docker-tools'             " Docker-tools

call vundle#end()    " Required
filetype on
filetype plugin on
filetype plugin indent on


" --- Plagin settings ---

" NERDTree 
map <F1> :NERDTreeToggle<CR>    " Browse the list of files in the current directory
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\. txt$', '\.o$']
let NERDTreeShowHidden=1

" TagBar 
map  <F2> :TagbarToggle<CR>
let g:tagbar_autofocus=0

" Unite 
nnoremap <F3> :Unite buffer<CR>    " Browse a list of the currently opened buffers

" Aligning indents 
noremap <F4> gg=G <C-o><C-o>

" Syntastic 
nnoremap <F5> :SyntasticCheck<CR>
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1

" Python code check on PEP8
autocmd FileType python nnoremap <buffer> <leader> <F8> :PymodeLint<CR>

" Vim-Move 
let g:move_key_modifier='C'
vmap <C-Down> <Plug>MoveBlockDown
vmap <C-Up> <Plug>MoveBlockUp
nmap <C-Down> <Plug>MoveLineDown
nmap <C-Up> <Plug>MoveLineUp

" SnipMate 
let g:snippets_dir='~/.vim/bundle/vim-snippets/snippets'
let g:snipMate={'snippet_version' : 1}

" Jedi-vim 
let g:jedi#show_call_signatures=1    " Show call signatures
let g:jedi#popup_on_dot=1            " Enable autocomplete on dot
let g:jedi#popup_select_first=0      " Disable first select from auto-complete

" Better :sign interface symbols 
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'

" Vim-Airline 
let g:airline_theme='powerlineish'

" Yggdroot/indentLine
let g:indentLine_char='¦'    " ['|', '¦', '┆', '┊'] 
let g:indentLine_color_term=239
let g:indentLine_color_tty_dark=1


" --- General settings ---

set backspace=indent,eol,start

" Auto save 
set updatetime=300000    " Autosaving with a 5-min interval.

" Autosaving the file upon cursor inactivity (CursorHold)
" or in insert mode inactivity (CursorHoldI)
autocmd CursorHold, CursorHoldI * update

" Increase story size
set history=200

" Swaps and backups                   
set noswapfile
" if has("win32") || has("win64")
"     set dir=$TMP
"     set backupdir=$TMP
" else
"     set dir=~/.vim/sessions
"     set backupdir=~/.vim/sessions
" endif

" This must happen before the syntax system is enabled
aunmenu Help.
aunmenu Window.
let no_buffers_menu=1

" Mouse support
" set mouse=a
set mousemodel=popup
set mousehide    " Hide mouse cursor when typing 

" Activate a permanent ruler and add line highlightng as well as numbers.
" Also disable the sucking pydoc preview window for the omni completion
" and highlight current line and disable the blinking cursor.
set ruler
set completeopt-=preview
set gcr=a:blinkon0
if has("gui_running")
    set cursorline
endif
set ttyfast

" Use system clipboard
set clipboard=unnamedplus

" Customize the wildmenu
set wildmenu
set wildignore+=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*/*.dSYM/*,*.dylib

set wildmode=list:full

" Don't bell and blink
set visualbell t_vb=    " Turn off error beep/flash
set noerrorbells        " Turn off sound bell
set novisualbell        " Turn off visual bell
set enc=utf-8           " Utf-8 default encoding
set ls=2                " Always show status bar
set incsearch           " Incremental search
set hlsearch            " Highlighted search results
set nu                  " Show line numbers
set scrolloff=5         " Keep some more lines for scope
set showmatch           " Show matching brackets/parenthesis
set matchtime=0         " Don't blink when matching

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1    " Preview docstring in fold text  
let g:SimpylFold_fold_import=1          " Fold imports

" Hide some panels
set guioptions-=m    " Remove menu bar
set guioptions-=T    " Remove toolbar
set guioptions-=r    " Remove right-hand scroll bar
set guioptions-=L    " Remove left-hand scroll bar

" Highlight characters past column 80
augroup vimrc_autocmds
    autocmd FileType python,c,cpp set colorcolumn=80
    autocmd FileType python,c,cpp highlight ColorColumn ctermbg=238
    autocmd FileType python,c,cpp highlight Excess ctermbg=DarkGrey guibg=#c12a0f
    autocmd FileType python,c,cpp match Excess /\%80v.*/
    autocmd FileType python,c,cpp set nowrap
augroup END


" --- Color Settings ---

" Comments
hi Comment ctermfg=585 

" Autocomplete
hi Pmenu ctermbg=none ctermfg=255
hi PmenuSel ctermbg=238 ctermfg=255

" Brackets
hi MatchParen cterm=none ctermbg=238 ctermfg=none

" CursorLine
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
hi Visual  ctermbg=238 guibg=Grey40 gui=none


" --- Python-mode settings ---

let g:pymode_rope=0

" Documentation
let g:pymode_doc=0
let g:pymode_doc_key='K'

" Linting
let g:pymode_lint=1
let g:pymode_lint_checkers=['pylint', 'pep8']
let g:pymode_lint_cwindow=1
let g:pymode_lint_ignore="E501,W601,C0110,C0111"
let g:pymode_lint_write=0

" Support virtualenv
let g:pymode_virtualenv=1
let g:virtualenv_directory='~/.virtualenvs'
let g:virtualenv_stl_format='[Py3]'

" Enable breakpoints plugin
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" Syntax highlighting
let g:pymode_syntax=1
let g:pymode_syntax_all=1
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding=0

" Get possibility to run Python code
let g:pymode_run=0

" Other options
let g:pymode_options_colorcolumn=0
if has('gui_running')
    let g:airline_powerline_fonts=1
else
    let g:airline_powerline_fonts=0
endif

let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0
let python_slow_sync=1
let g:syntastic_python_checkers=['flake8', 'python']
let g:syntastic_python_flake8_args='--ignore=E121,E128,E711,E301,E261,E241,E124,E126,E721
    \ --max-line-length=80'

autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
    \ formatoptions+=croq smartindent
    \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 
    \ smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with


" --- Languages support ---

" C/C++/C# 
autocmd FileType c setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType cpp setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType objc setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType cs setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType c setlocal commentstring=/*\ %s\ */
autocmd FileType cpp,cs,objc setlocal commentstring=//\ %s
let c_no_curly_error=1
let g:syntastic_cpp_include_dirs=['include', '../include']
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_c_include_dirs=['include', '../include']
let g:syntastic_c_compiler='clang'

" JavaScript 
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.json setlocal ft=javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal commentstring=//\ %s
autocmd FileType javascript let b:javascript_fold = 0
let javascript_enable_domhtmlcss=1
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_args='--config ~/.vim/extern-cfg/jshint.json'

" TypeScript 
let g:syntastic_typescript_checkers=[]
autocmd BufNewFile,BufRead *.ts setlocal ft=typescript
autocmd FileType typescript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" JSON 
autocmd FileType json setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" HTML 
let html_no_rendering=1
let g:syntastic_html_checkers=[]
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal commentstring=<!--\ %s\ -->

" Jinja 
autocmd Filetype htmljinja setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype htmldjango setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd Filetype jinja setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" CSS 
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal commentstring=/*\ %s\ */
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" SASS
autocmd FileType sass setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" YAML 
autocmd BufNewFile,BufRead *.sls setlocal ft=yaml
autocmd FileType yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" TXT 
autocmd BufRead,BufNewFile *.txt set filetype=txt
autocmd FileType txt setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" MD 
autocmd BufRead,BufNewFile *.md set filetype=md
autocmd FileType md setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Unix.conf 
autocmd BufRead,BufNewFile *.conf set filetype=conf
autocmd FileType conf setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Vim
autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4


" --- User hotkeys ---

" CTRL-Z is Undo
noremap <C-z> u
inoremap <C-z> <C-O>u

" CTRL-R is Redo
noremap <C-y> <C-R> 
inoremap <C-y> <C-O><C-R>

" CTRL-A is Select all
noremap <C-a> gggH<C-O>G
inoremap <C-a> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-a> <C-C>gggH<C-O>G
onoremap <C-a> <C-C>gggH<C-O>G
snoremap <C-a> <C-C>gggH<C-O>G
xnoremap <C-a> <C-C>ggVG

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Activate autocomplete at Ctrl-Space 
inoremap <C-space> <C-x><C-o>

" Settings for buffers
nnoremap <S-q> :bd!<CR>       " Close current buffer, Shift-q
nnoremap <S-Right> :bn<CR>    " Move to next buffer, Shift-Right
nnoremap <S-Left> :bp<CR>     " Move to previous buffer, Shift-Left
