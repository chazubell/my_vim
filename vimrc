"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Amir Salihefendic
"       http://amix.dk - amix@amix.dk
"
" Version: 
"       5.0 - 29/05/12 15:43:36
"
" Blog_post: 
"       http://amix.dk/blog/post/19691#The-ultimate-Vim-configuration-on-Github
"
" Awesome_version:
"       Get this config, nice color schemes and lots of plugins!
"
"       Install the awesome version from:
"
"           https://github.com/amix/vimrc
"
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
"
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let s:Perl_Perl                 = system("/usr/bin/which perl")
let s:Perl_Perl                 = substitute(s:Perl_Perl, '\n$', '', '')
set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="skittles_berry"
execute pathogen#infect()

hi SpecialKey     ctermfg=235 guifg=#262626
hi NonText        ctermfg=250 guifg=#bcbcbc
hi Directory      ctermfg=149 gui=bold guifg=#afd75f
hi ErrorMsg       term=standout ctermfg=117 gui=bold guifg=#87d7ff
hi IncSearch      term=reverse ctermfg=186 ctermbg=0 guifg=#d7d787 guibg=#000000
hi Search         term=reverse ctermfg=15 ctermbg=66 guifg=#ffffff guibg=#455354
hi MoreMsg        ctermfg=228 guifg=#ffff87
hi ModeMsg        ctermfg=228 guifg=#ffff87
hi LineNr         ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
hi Question       term=standout ctermfg=81 guifg=#5fd7ff
hi StatusLine     term=reverse ctermfg=66 guifg=#5f8787
hi StatusLineNC   term=reverse ctermfg=8 ctermbg=232 guifg=#7f7f7f guibg=#080808
hi VertSplit      term=reverse ctermfg=8 ctermbg=232 gui=bold guifg=#7f7f7f guibg=#080808
hi Title          ctermfg=209 guifg=#ff875f
hi Visual         term=reverse ctermfg=255 ctermbg=95 guifg=#eeeeee guibg=#875f5f
hi VisualNOS      ctermfg=255 ctermbg=95 guifg=#eeeeee guibg=#875f5f
hi WarningMsg     term=standout ctermfg=15 ctermbg=236 gui=bold guifg=#ffffff guibg=#303030
hi WildMenu       term=standout ctermfg=81 ctermbg=233 guifg=#5fd7ff guibg=#121212
hi Folded         term=standout ctermfg=66 ctermbg=0 guifg=#465457 guibg=#000000
hi FoldColumn     term=standout ctermfg=66 ctermbg=0 guifg=#465457 guibg=#000000
hi DiffAdd        ctermfg=230 ctermbg=24 guifg=#f8f8f2 guibg=#13354a
hi DiffChange     ctermfg=95 ctermbg=95 guifg=#89807d guibg=#4c4745
hi DiffDelete     ctermfg=125 ctermbg=125 guifg=#960050 guibg=#1e0010
hi DiffText       term=reverse ctermfg=141 ctermbg=64 gui=bold guifg=#ad81ff guibg=#4a7800
hi SignColumn     term=standout ctermfg=149 ctermbg=74 guifg=#a6e22e guibg=#232526
hi Conceal        ctermfg=7 ctermbg=242 guifg=#e5e5e5 guibg=#080808
hi SpellBad       term=reverse ctermfg=255 ctermbg=9 guifg=#eeeeee guisp=#ff0000
hi SpellCap       term=reverse ctermfg=255 ctermbg=12 guifg=#eeeeee guisp=#0000ff
hi SpellRare      term=reverse ctermfg=255 ctermbg=13 guifg=#eeeeee guisp=#ff00ff
hi SpellLocal     ctermfg=255 ctermbg=14 guifg=#eeeeee guisp=#00ffff
hi Pmenu          ctermfg=81 ctermbg=0 guifg=#5fd7ff guibg=#000000
hi PmenuSel       ctermfg=81 ctermbg=8 guifg=#5fd7ff guibg=#7f7f7f
hi PmenuSbar      ctermfg=81 ctermbg=232 guifg=#5fd7ff guibg=#080808
hi PmenuThumb     ctermfg=81 guifg=#5fd7ff
hi TabLine        ctermfg=255 ctermbg=242 guifg=#eeeeee guibg=#080808
hi TabLineSel     ctermfg=255 guifg=#eeeeee
hi TabLineFill    term=reverse ctermfg=255 guifg=#eeeeee
hi CursorColumn   term=reverse ctermfg=255 ctermbg=233 guifg=#eeeeee guibg=#121212
hi CursorLine     cterm=none term=none ctermbg=235 guibg=#262626
hi clear ColorColumn
hi link ColorColumn CursorLine
hi MatchParen     term=reverse ctermfg=0 ctermbg=208 gui=bold guifg=#000000 guibg=#ff8700
hi Comment        ctermfg=66 guifg=#5f8787
hi Constant       ctermfg=91 gui=bold guifg=#8700af
hi Special        ctermfg=81 guifg=#5fd7ff
hi Statement      ctermfg=202 ctermbg=233 guifg=#ff5f00 guibg=#121212
hi PreProc        ctermfg=149 guifg=#afd75f
hi Type           ctermfg=81 guifg=#5fd7ff
hi Underlined     ctermfg=8 gui=underline guifg=#7f7f7f
hi Ignore         ctermfg=8 guifg=#7f7f7f
hi Error          term=reverse gui=reverse ctermfg=125 ctermbg=7 guifg=#af005f guibg=#e5e5e5
hi Todo           term=standout ctermfg=0 ctermbg=11 gui=bold guifg=#000000 guibg=#ffff00
hi String         ctermfg=112 guifg=#87d700
hi Character      ctermfg=228 guifg=#ffff87
hi Number         ctermfg=129 guifg=#af00ff
hi Boolean        ctermfg=93 guifg=#8700af
hi Float          ctermfg=141 guifg=#af87ff
hi Function       ctermfg=25 guifg=#005faf
hi Conditional    ctermfg=124 gui=bold guifg=#af0000
hi Repeat         ctermfg=124 gui=bold guifg=#af0000
hi Label          ctermfg=228 guifg=#ffff87
hi Operator       ctermfg=214 guifg=#ffaf00
hi Keyword        ctermfg=117 gui=bold guifg=#87d700
hi Exception      ctermfg=106 gui=bold guifg=#87af00
hi Include        ctermfg=255 guifg=#eeeeee
hi Define         ctermfg=124 gui=bold guifg=#af0000
hi Macro          ctermfg=186 guifg=#d7d787
hi PreCondit      ctermfg=149 gui=bold guifg=#afd75f
hi StorageClass   ctermfg=208 guifg=#ff8700
hi Structure      ctermfg=81 guifg=#5fd7ff
hi Typedef        ctermfg=81 guifg=#5fd7ff
hi Tag            ctermfg=117 guifg=#87d7ff
hi SpecialChar    ctermfg=208 gui=bold guifg=#ff8700
hi Delimiter      ctermfg=245 guifg=#8a8a8a
hi SpecialComment ctermfg=66 gui=bold guifg=#5f8787
hi Debug          ctermfg=138 gui=bold guifg=#af8787
hi Normal         ctermfg=230 ctermbg=233 guifg=#ffffd7 guibg=#121212
hi Identifier     cterm=none term=none ctermfg=228 guifg=#ffff87
hi clear Cursor
hi Cursor         ctermbg=26 ctermfg=7 guifg=#e5e5e5 guibg=#005fd7

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
syn keyword   myTodo   contained   TODO: FIXME:

colorscheme darkblue
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
map <C-`> :noh
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction
