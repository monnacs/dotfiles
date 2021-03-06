"*******************************************************************************
"" dein.vim
"*******************************************************************************

if &compatible
    set nocompatible
endif
set runtimepath+=~/.vim/bundle/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/bundle'))
    call dein#begin(expand('~/.vim/bundle'))
    call dein#add('Shougo/dein.vim')
"themes
    call dein#add('flazz/vim-colorschemes')
    call dein#add('KabbAmine/yowish.vim')
    call dein#add('ajmwagar/vim-deus')
"functions
    call dein#add('vim-scripts/restore_view.vim')
    call dein#add('jalvesaq/Nvim-R')
    call dein#add('vim-utils/vim-man')
    call dein#add('dhruvasagar/vim-table-mode')
    call dein#add('latex-box-team/latex-box')
    call dein#add('nathanaelkane/vim-indent-guides')
    call dein#add('edkolev/tmuxline.vim')
    call dein#add('godlygeek/tabular')
    call dein#add('plasticboy/vim-markdown')
    call dein#add('tmhedberg/SimpylFold')
    call dein#add('tpope/vim-unimpaired')
    call dein#add('mileszs/ack.vim')
    call dein#add('danro/rename.vim')
    call dein#add('embear/vim-localvimrc')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('Raimondi/delimitMate')
    call dein#add('gorkunov/smartpairs.vim')
    call dein#add('ctrlpvim/ctrlp.vim')
    call dein#add('bling/vim-airline')
    call dein#add('tommcdo/vim-exchange')
    call dein#add('neomake/neomake')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/neocomplete.vim')
    call dein#add('Shougo/neosnippet')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('tpope/vim-fugitive')
    call dein#add('tpope/vim-surround')
    call dein#add('tpope/vim-commentary')
    call dein#add('tpope/vim-repeat')
    call dein#add('Valloric/YouCompleteMe')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on

"*******************************************************************************
"" Sets
"*******************************************************************************

set tabstop=4                   " Number of spaces that a <Tab> in the file counts for. 
set shiftwidth=4                " Number of spaces to use for each step of (auto)indent.
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                   " Use the appropriate number of spaces to insert a <Tab>. Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on. To insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
set smarttab                    " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'. 'tabstop' is used in other places. A <BS> will delete a 'shiftwidth' worth of space at the start of the line.
set showcmd                     " Show (partial) command in status line.
set number                      " Show line numbers.
set showmatch                   " When a bracket is inserted, briefly jump to the matching one. The jump is only done if the match can be seen on  screen. The time to show the match can be set with 'matchtime'.
set hlsearch                    " When there is a previous search pattern, highlight all its matches.
set incsearch                   " While typing a search command, show immediately where the so far typed pattern matches.
set ignorecase                  " Ignore case in search patterns.
set smartcase                   " Override the 'ignorecase' option if the search pattern contains upper case characters.
set backspace=indent,eol,start  " Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode. This is a list of items, separated by commas. Each item allows a way to backspace over something.
set autoindent                  " Copy indent from current line when starting a new line (typing <CR> in Insert mode or when using the "o" or "O" command).
set copyindent                  " Copy the previous indentation on autoindenting"
set wrapmargin=0                " Number of characters for the wrap count.
set wrap                        " This enables "visual" wrapping
set lbr                         " Wrapping only in complete words
set textwidth=0                 " This turns off physical line wrapping (ie: automatic insertion of newlines)
set ruler                       " Show the line and column number of the cursor position, separated by a comma.
set background=dark             " When set to "dark", will try to use colors that look good on a dark background. When set to "light" try to use colors that look good on a light background. Any other value is illegal.
set mouse=a                     " Enable the use of the mouse.
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set wildignore=*.swp,*.bak      "Ignore this extensions to auto-complete
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep"
set nobackup                    " Oh, and man… never ever let Vim write a backup file! They did that in the 70’s. 
set noswapfile                  " Use modern ways for tracking your changes, for God’s sake.
set pastetoggle=<F2>            " Then, when in insert mode, ready to paste, press <F2>, Vim will switch to paste mode, disabling all kinds of smartness
set encoding=utf-8              " Set the codification
set fileencoding=utf-8
set fileencodings=utf-8,latin1,latin2
" set spell                       " Set the spell revision
set spelllang=pt,en,es          " Set the spell language
set nocp                        " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice. 
set cursorline                  " Set the current cursorline highlight
set switchbuf=usetab,newtab     " This should mean switching to the existing tab if the buffer is open, or creating a new one if not.
" set relativenumber              " Amazing number line conf. Provides relative number line to the possition.
set conceallevel=2              " Set de conceal (dinamic replace of _X or \alpha caracteres).
set concealcursor=c             " Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
set whichwrap+=<,>,h,l,[,]      " This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines. ( < > are the cursor keys used in normal and visual mode, and [ ] are the cursor keys in insert mode).)
set scrolloff=2                 " The number of lines before and after of the cursor possition. If is a big number, the cursor is always in the center of the screen.
set colorcolumn=81              " highlight column after 'textwidth'
set autoread                    " Make Vim automatically refresh any unchanged files.
set hidden                      " It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file

"*******************************************************************************
"" Plugins configuration files
"*******************************************************************************
"
" -------------------------------- YouCompleteMe ---------------------------------
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'"
let g:ycm_server_python_interpreter = '/usr/bin/python2'

" -------------------------------- Neocomplete ---------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" For newocomplete instalation
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Automatic close the preview window
let g:neocomplete#enable_auto_close_preview = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default']  = "\h\w*"
let g:neocomplete#keyword_patterns['markdown'] = "[À-ú[:alpha:]_'][À-ú[:alnum:]_']*"
let g:neocomplete#keyword_patterns['tex']      = "[À-ú[:alpha:]_:'][À-ú[:alnum:]_:']*"

" -------------------------------- Markdown ------------------------------------
let g:vim_markdown_math = 1

" -------------------------------- LatexBox ------------------------------------
let g:LatexBox_Folding = 1

" --------------------------------- airline ------------------------------------
" airline fonts. For the correct fonts and <> symbols, see the documentation. Is necessary add a font to the local files
let g:airline_powerline_fonts = 1
" Enable the list of buffers AKA airtab
let g:airline#extensions#tabline#enabled = 1 
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#branch#enabled = 1

" --------------------------------- ctrlp.vim ----------------------------------
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
let g:ctrlp_map = '<leader>e'

" --------------------------------- commentary ---------------------------------
autocmd FileType matlab setlocal commentstring=%\ %s
autocmd BufNewFile,BufReadPost,BufRead *.R,*.Rnw,*.Rd,*.Rmd,*.Rrst setlocal commentstring=#\ %s
autocmd FileType c,cpp,java setlocal commentstring=//\ %s
 
" --------------------------------- localvimrc ---------------------------------
let g:localvimrc_ask=0

" -------------------------------- Core options --------------------------------
" Define latex by default for any *.tex file
let g:tex_flavor = "latex"
" Set the conceal mode to: a-> accents/ligatures, b -> bold/italic, c -> delimiters, m -> math, g -> greek, s -> superscripts/subscripts. The default is admgs
let g:tex_conceal = "abdmgs"

" ---------------------------------- tmuxline ----------------------------------
let g:airline#extensions#tmuxline#enabled = 0

" ------------------------------ vim-table-mode --------------------------------
let g:table_mode_corner_corner="+"


"*******************************************************************************
"" Keymaps
"*******************************************************************************

" ------------------------------- neocomplete ----------------------------------
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Close popup by <C-c>.
inoremap <expr><C-c> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" -------------------------------- neosnippet ----------------------------------
" Expand the snippets
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-Space> <Plug>(neosnippet_expand_target)
imap <C-@> <C-Space>
smap <C-@> <C-Space>
xmap <C-@> <C-Space>

" ---------------------------------- LatexBox ----------------------------------
" LatexBox key maps. I really dont know why but if you use inoremap dont work!!!
imap <buffer> [[     \begin{
imap <buffer> ]] <Plug>LatexCloseCurEnv

" ---------------------------------- Otheres -----------------------------------
let mapleader = "\<Space>"

" It clears the search buffer when you press <leader>/
nnoremap <silent> <Leader>/ :set hlsearch!<CR> 

" Mappings to toggle foldsEdit
nnoremap <F8> zM
nnoremap <F10> zR

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Faster windows options
"
" First, the ConfirmQuit function
function! ConfirmQuit(writeFile)
    if (a:writeFile)
        if (expand('%:t')=="")
            echo "Can't save a file with no name."
            return
        endif
        :write
    endif

    if (winnr('$')==1 && tabpagenr('$')==1) " It's the last window/tab?
        if (confirm("Do you really want to quit?", "&Yes\n&No", 2)==1)  " Confirm dialog. When No answer, return 2. When cancel, return 0.
            :quit
        endif
    else " Wasn't the last. Close without problems
        :quit
    endif
endfu

" Next, the regular commands map
cnoremap <silent> q<CR>  :call ConfirmQuit(0)<CR>
cnoremap <silent> x<CR>  :call ConfirmQuit(1)<CR>

" And finaly, the speed maps
nnoremap <silent> <Leader>w :w<CR> 
nnoremap <silent> <Leader>x :call ConfirmQuit(1)<CR>
nnoremap <silent> <Leader>q :call ConfirmQuit(0)<CR>
nnoremap <silent> <Leader>o :only<CR> 

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast larger, smaler and normal fontsize - Only GUI
"
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 8
let s:maxfontsize = 24

function! AdjustFontSize(amount)
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK version of Vim to use this function."
  endif
endfunction

function! SetFontSize(fontSize)
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    if (a:fontSize >= s:minfontsize) && (a:fontSize <= s:maxfontsize)
      let newfont = fontname . a:fontSize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK version of Vim to use this function."
  endif
endfunction

function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

command! NormalSize call SetFontSize(13)
command! -nargs=1 SetFontSize call SetFontSize(<f-args>)

nnoremap <silent> <Leader>] :LargerFont <CR>
nnoremap <silent> <Leader>[ :SmallerFont <CR>
nnoremap <silent> <Leader>= :NormalSize <CR>

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set W to sudo save and silent reload the file
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Easy and fast scape shortcut
inoremap jk <ESC>

" Tab options. Tab == Ctrl + Alt
nnoremap <C-A-h> :tabprevious<CR>
nnoremap <C-A-l> :tabnext<CR>
nnoremap <silent> <C-A-j> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-A-k> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Windows options. Window == Alt
noremap <A-j> <C-W>w
noremap <A-k> <C-W>W
noremap <A-l> <C-W>l
noremap <A-h> <C-W>h

" Buffer stuff. Buffer == Ctrl
nnoremap <C-h>  :bp<CR>
nnoremap <C-l> :bn<CR>
" Close the current buffer but not the window. Put inside the window the next buffer
nnoremap <silent> <Leader>bd :bp <BAR> bd #<CR>

" GVim GUI hide-show options
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
nnoremap <C-F4> :if &go=~#'L'<Bar>set go-=L<Bar>else<Bar>set go+=L<Bar>endif<CR>

" cut, copy, paste from standar sytem buffer in visual mode and paste in insertion
vnoremap <C-y> "+y
nnoremap <C-y> "+y
vnoremap <C-p> "+gp
nnoremap <C-p> "+gp
inoremap <C-p> <C-r><C-p>+

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Spell togle
:map <F7> :setlocal spell! <CR>

"*******************************************************************************
"" aCofig stuff
"*******************************************************************************

syntax on                       " Set the sintax for all files

" Set pwd to current directory on starup
autocmd BufEnter * silent! lcd %:p:h

" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake

" Force all *.md files to be markdown
autocmd BufNewFile,BufReadPost,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md set filetype=markdown
autocmd BufNewFile,BufReadPost,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md silent !TableModeEnable

" Force all *.cir files to be spice netlist files
autocmd BufNewFile,BufReadPost,BufRead *.cir set filetype=spice

" Folding
" Indent languages
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<
" Syntax languages
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl setlocal foldmethod=syntax
" Starup status
autocmd BufRead * normal zR

" ------------------------- Look and feel options ------------------------------
" Remove all bars in GVim
set go-=m
set go-=T
set go-=L
set go-=r

" Set the full colors to the shell for full theme suport
set t_Co=256

" Vim airline always
set laststatus=2

set guifont=Fantasque\ Sans\ Mono\ Regular\ 13
" set guifont=Inconsolata\ for\ Powerline\ 13
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11

if has("gui_running")  
  " Others Very, very good are: jellybeans, railscasts, mustang, molokai, tango2, wombat, bensday, desertEx, busybee, grb256, base16-atelierforest, base16-atelierdune, Spink, flattown, mopkai, gruvbox, Monokai, mod8, hybrid
  colorscheme flattown
  set lines=999 columns=999 " Maximize Gvim at startup
else 
  " Others Very, very good are: jellybeans, railscasts, mustang, molokai, busybee, neverland, mopkai, Monokai, gruvbox, hybrid
  colorscheme flattown
endif 

" Link the Conceal highlight configuration to the Normal configuration. It's a full clone of ALL in the class
highlight! link Conceal Normal 

