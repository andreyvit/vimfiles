" Andrey Tarantsov's vim config auu
"
" Normal mode:
"
" Space => Search, with very magic by default ("Normal" regex mode, more info)
" ,Space => Clear search highlight
" ,v => Splits to a new vertical split and switch to it
" Control + [h,j,k,l] => move between splits
" Tab => Next buffer
" Shift + Tab => Previous buffer
" ,q => Save and close all (:wqa!)
" ,w => Save (:w!)
" ,Esc => Quit without saving (:q!)
" F4 => Toggle Numberlock mode (Numbers mapped to !"·$%&/()...)
" Shift + r => Execute current buffer as ruby
" ,d => Delete current buffer (bd)
" ,D => Delete all buffers
"
" Visual mode
"
" ,g => git blame
" ,h => get a link in the clipboard referencing the selected lines in Github
"
" Insert mode
" jj => back to normal mode
"
" Plugins related
"
",a => Ack search
",a| => Align Cucumber Tables
",a= => Align lines with =
",a: => Align lines with :
"Control + [n,p] => Rotate Ack results
",co => Comment lines
",b => Fuzzy buffer explorer
",l => Tag list
",o => PeepOpen
",p => Nerd tree
",R => RbREPL


" System options

set nocompatible
set encoding=utf-8
set ttyfast
set modeline        " Enable vim modeline processing with default of 3 lines
set history=1000    " Remember this number of last commands and search patterns
set nobackup        " No stupid backup files
set writebackup     " Safe saving
set swapfile        " Use swap file in case we crash
set updatetime=500  " Save to swap every 500ms
set autoread        " Reread files changed externally (when unchanged in Vim)
set autowrite       " Write file on :next et al
set hidden          " Allow to hide buffers (esp. unsaved ones)

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Wrap long lines
set wrap
set textwidth=80
set colorcolumn=0
let &showbreak='+++     '
set linebreak       " Break lines on word boundaries

" Text editing options

set autoindent
set smartindent
set backspace=indent,eol,start

"  c - autoformat comments
"  r - continue comment on Enter
"  o - continue comment on o/O
"  q - allow formatting of comments with gq
"  a - reformat paragraphs as you type
"  n - recognize numbered lists
"  l - don't autoformat lines that were already long when editing started
set formatoptions=croqnl
" Recognize numbered and bulleted (-) lists
let &formatlistpat='^\s*\(\d\+\|[-]\)[\]:.)}\t ]\s*'

set showmatch       " Show matching parens for 0.5 sec
set matchtime=5


set nrformats=hex,alpha

" Presentation options

set title
set scrolloff=3
set showmode
set noshowcmd
set wildmenu
set wildmode=list:longest
set visualbell
set nocursorline
set ruler           " Display cursor line/col
set laststatus=2
set number          " Display line numbers
" set relativenumber
" set undofile  Enable 7.3 undo in saved files

noremap <Leader>C :<C-U>set ve=all<CR>020li"<ESC>:set ve=<CR>a  <C-H>
map <Leader>M 0xxd$j,C<ESC>pkdd$

set statusline=%F%m%r%h%w[%L]%y[%p%%][%04v] "[%{fugitive#statusline()}]
"              | | | | |  |   |      |  |     |    |
"              | | | | |  |   |      |  |     |    + current
"              | | | | |  |   |      |  |     |       column
"              | | | | |  |   |      |  |     +-- current line
"              | | | | |  |   |      |  +-- current % into file
"              | | | | |  |   |      +-- current syntax in
"              | | | | |  |   |          square brackets
"              | | | | |  |   +-- current fileformat
"              | | | | |  +-- number of lines
"              | | | | +-- preview flag in square brackets
"              | | | +-- help flag in square brackets
"              | | +-- readonly flag in square brackets
"              | +-- rodified flag in square brackets
"              +-- full path to file in the rbuffer
"}

" Set the tag file search order
set tags=./tags,./../tags,./../../tags,./../../../tags,./*/tags,~/.tags
let tlist_objc_settings = 'ObjectiveC;P:protocols;i:interfaces;m:methods;f:functions;s:structs;e:enums;v:global vars;M:macros'
" let Tlist_WinWidth = 60
" " Use only current file to autocomplete from tags
set complete=.,t
set complete=.,w,b,u,t,i
set completeopt=longest,menuone

set previewheight=3 " Smaller tag preview window

" DO NOT Use _ as a word-separator
" set iskeyword-=_

" <leader> key
let mapleader = ","

" Searching / moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
" nnoremap <tab> %
" vnoremap <tab> %

:nmap <Space> /

" Show invisible characters
set list
set listchars=tab:▸\ ,trail:¬

" Move around lines
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Eclipse-style bindings
map <C-CR> o
map <S-CR> O
imap <C-CR> <C-O>o
imap <S-CR> <C-O>O

" paragraph movement
map <C-Up> {
map <C-Down> }

" word/WORD movement
map <C-Left> b
map <C-Right> w
map <C-S-Left> B
map <C-S-Right> W

" speed movement
map <S-Up> 10k
map <S-Down> 10j
map <S-Left> 10h
map <S-Right> 10l

" previous movement bindings for insert mode
imap <C-Up> <C-O><C-Up>
imap <C-Down> <C-O><C-Down>
imap <C-Left> <C-O><C-Left>
imap <C-Right> <C-O><C-Right>
imap <C-S-Left> <C-O><C-S-Left>
imap <C-S-Right> <C-O><C-S-Right>
imap <S-Up> <C-O><S-Up>
imap <S-Down> <C-O><S-Down>
imap <S-Left> <C-O><S-Left>
imap <S-Right> <C-O><S-Right>

" Paste previous
map ,p "0p
map ,P "0P


" inoremap <Esc> <nop>

" nnoremap j gj
" nnoremap k gk

" Map ESC
imap jj <ESC>
nnoremap ; :

" ACK
" Use Ack instead of grep
set grepprg=ack

" ,a to Ack
nnoremap <leader>a :Ack

" Rotating among results in an ack search
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" TComment
map <Leader>co :TComment<CR>

" Reselect text that was just pasted to perform further commands on it
" nnoremap <leader>v V`]

" Splits  ,v to open a new vertical split and switch to it
nnoremap <leader>v <C-w>v<C-w>l
" Move between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>d :bd<CR>
nmap <leader>D :bufdo bd<CR>

" Saving and buffer stuff
" :wqa! Quit saving
nmap <leader>q :wqa!<CR>
nmap <leader>w :w!<CR>
nmap <leader><Esc> :q!<CR>

" vimrc editing
exec "command! ReloadVimrc source " . expand("<sfile>")
exec "command! EditVimrc edit " . expand("<sfile>")

hi Statement gui=NONE,underline
hi Type gui=NONE,underline

" EXTERNAL COPY / PASTE "
set pastetoggle=<F2>
"    paste:   "+gP
"    copy:    "+y

" PLUGINS "

" Load all bundles in .vim/bundles
call pathogen#runtime_append_all_bundles()

" NERDTree
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 50
map <leader>p :NERDTreeToggle<cr>

" CommandT
map <leader>o :CommandT<CR>
map <leader>b :CommandTBuffer<CR>
map <leader>l :<C-U>FufLine<CR>
map <leader>t :<C-U>TlistToggle<CR>
:set wildignore+=*.o,*.obj,.git,tmp,*.png,*.jpg,*.svg,*.ttf,*.doc,*.pdf,*.gif,*.gz,*.xls,*.rbc

augroup file_switching
    au!
    au BufEnter *.* let b:fswitchlocs='./'
    au BufEnter *.h let b:fswitchdst='cpp,c,m'
    au BufEnter *.m let b:fswitchdst='h'
    au BufEnter *.c let b:fswitchdst='h'
augroup END

nmap <leader>; :<C-U>FSHere<CR>

" AutoClose
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

" Execute current buffer as ruby
map <S-r> :w !ruby<CR>

let my_home = expand("$HOME/")

set t_Co=256
" colorscheme af
" colorscheme oceanblack
" colorscheme skittles_dark
" colorscheme twilight
" colorscheme mustang
" colorscheme clouds_midnight
" colorscheme molokai
colorscheme koehler

" GUI "
if has("gui_running")
  " a - copy visual mode selection into the system pasteboard
  " A - same as a for modeless selection
  " c - use console dialogs for simple choices
  " i - use Vim icon
  " e - add tab pages
  set guioptions=aAcie
  set mouse=v
  set guifont=Monaco:h12 "<- Maybe a good idea when using mac
endif
set guifont=Monaco:h12

syntax on

" Syntax customizations
hi StatusLine   cterm=none ctermfg=black ctermbg=green
hi StatusLineNC cterm=none ctermfg=black ctermbg=white

" BLAAAME
vmap <Leader>gb :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p<CR>

" Tabularize
if exists(":Tab")
  nmap <leader>a\| :Tab /\|<CR>
  vmap <leader>a\| :Tab /\|<CR>
  nmap <leader>a= :Tab /=<CR>
  vmap <leader>a= :Tab /=<CR>
  nmap <leader>a: :Tab /:\zs<CR>
  vmap <leader>a: :Tab /:\zs<CR>
endif

" Press F5 to toggle GUndo tree
nnoremap <F5> :GundoToggle<CR>

" Essentials
filetype off
filetype plugin indent on

" Finally, load custom configs
if filereadable(my_home . '.vimrc.local')
  source ~/.vimrc.local
endif

" Autocompile Coffeescript files on save
"autocmd BufWritePost,FileWritePost *.coffee :silent !coffee -c <afile>

" Autodelte trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
"
" While editing a Markdown document in Vim, preview it in the
" default browser.
"
" Author: Nate Silva
"
" To install: Place markdown.vim in ~/.vim/ftplugin or
" %USERPROFILE%\vimfiles\ftplugin.
"
" To use: While editing a Markdown file, press ',p' (comma p)
"
" Tested on Windows and Mac OS X. Should work on Linux if you set
" BROWSER_COMMAND properly.
"
" Requires the `markdown` command to be on the system path. If you
" do not have the `markdown` command, install one of the following:
"
" http://www.pell.portland.or.us/~orc/Code/discount/
" http://www.freewisdom.org/projects/python-markdown/
"
function!PreviewMarkdown()
    " **************************************************************
    " Configurable settings

    let MARKDOWN_COMMAND = 'markdown'

    if has('win32')
        " note important extra pair of double-quotes
        let BROWSER_COMMAND = 'cmd.exe /c start ""'
    else
        let BROWSER_COMMAND = 'open'
    endif

    " End of configurable settings
    " **************************************************************

    silent update
    let output_name = tempname() . '.html'

    " Some Markdown implementations, especially the Python one,
    " work best with UTF-8. If our buffer is not in UTF-8, convert
    " it before running Markdown, then convert it back.
    let original_encoding = &fileencoding
    let original_bomb = &bomb
    if original_encoding != 'utf-8' || original_bomb == 1
        set nobomb
        set fileencoding=utf-8
        silent update
    endif

    " Write the HTML header. Do a CSS reset, followed by setting up
    " some basic styles from YUI, so the output looks nice.
    let file_header = ['<html>', '<head>',
        \ '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">',
        \ '<title>Markdown Preview</title>',
        \ '<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssreset/reset-min.css">',
        \ '<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssbase/base-min.css">',
        \ '<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssfonts/fonts-min.css">',
        \ '<style>body{padding:20px;}div#container{background-color:#F2F2F2;padding:0 20px;margin:0px;border:solid #D0D0D0 1px;}</style>',
        \ '</head>', '<body>', '<div id="container">']
    call writefile(file_header, output_name)

    let md_command = '!' . MARKDOWN_COMMAND . ' "' . expand('%:p') . '" >> "' .
        \ output_name . '"'
    silent exec md_command

    if has('win32')
        let footer_name = tempname()
        call writefile(['</div></body></html>'], footer_name)
        silent exec '!type "' . footer_name . '" >> "' . output_name . '"'
        exec delete(footer_name)
    else
        silent exec '!echo "</div></body></html>" >> "' .
            \ output_name . '"'
    endif

    " If we changed the encoding, change it back.
    if original_encoding != 'utf-8' || original_bomb == 1
        if original_bomb == 1
            set bomb
        endif
        silent exec 'set fileencoding=' . original_encoding
        silent update
    endif

    silent exec '!' . BROWSER_COMMAND . ' "' . output_name . '"'

    exec input('Press ENTER to continue...')
    echo
    exec delete(output_name)
endfunction

" Map this feature to the key sequence ',p' (comma lowercase-p)
map <F8> :call PreviewMarkdown()<CR>

" Settings for VimClojure
let vimclojure#HighlightBuiltins = 1 " Highlight Clojure's builtins
let vimclojure#ParenRainbow = 1      " Rainbow parentheses'!

" RUNNING TESTS (from Gary Bernhardt's vimfiles)

function! RunTests(filename)
    " Write the file and run tests for the given filename
    :w
    :silent !echo;echo;echo;echo;echo
    if filereadable("script/test")
        exec ":!script/test " . a:filename
    else
        exec ":!/usr/local/rvm/rubies/ruby-1.9.2-p290/bin/ruby " . a:filename
    end
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_spec_file = match(expand("%"), '_spec.rb$') != -1
    if in_spec_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number)
endfunction


au FileType objc set
noremap <leader>m :<C-U>make!<CR> :cwindow<CR>
set errorformat=%f:%l:%c:\ %m,%f:%l:%c:{%*\\d:%*\\d-%*\\d:%*\\d}:\ %m
noremap <leader>[ :<C-U>cp<CR>
noremap <leader>] :<C-U>cn<CR>


" map <leader>t :call RunTestFile()<cr>
" map <leader>T :call RunNearestTest()<cr>
" map <leader>a :call RunTests('spec')<cr>
" map <leader>c :w\\|:!bundle exec cucumber<cr>
" cucumber<cr>
" map <leader>C :w\\|:!bundle exec cucumber --tags=@wip<cr>

" GRB: Put useful info in status line
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
:hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" Remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
" function! InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\\k'
"         return "\\<tab>"
"     else
"         return "\\<c-p>"
"     endif
" endfunction
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <s-tab> <c-n>

nnoremap <leader><leader> <c-^>

