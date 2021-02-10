""""""""""""""""""""""""""""""""""""""""""""""""""
"                 Custom VIM-RC                  "
"                  09-Feb-2021                   "
"   Creator:                                     "
"           Turky Abdulaziz A. Saderaldin        "
"                                                "
"   Repository:                                  "
"           https://github.com/tag2000sa         "
"                                                "
"   Version:                                     "
"           1.1                                  "
"                                                "
"   Content:                             line    "
"           - General ------------------ 19      "
"           - Interface ---------------- 51      "
"           - Control ------------------ 159     "
""""""""""""""""""""""""""""""""""""""""""""""""""

""" ###     General      ### """
"=============================="
set nocompatible "set compatibility to Vim only.
set ai "auto indenting.
set si "smart indenting.
set autoindent "always set autoindenting on.
set encoding=utf8 "set standard encoding as utf8.
let $LANG = 'en' "set standard language as en_US.
set langmenu=en "set menu language.
set history=500 "set how many history lines.
filetype off "helps force plug-ins to load correctly when it is turned back on below.
filetype plugin on "enable plugins
syntax on " Turn on syntax highlighting.
set ruler "always show current position.
set showmode "always show current mode.
set showcmd "show partial command at bottom.
filetype plugin indent on "for plug-ins to load correctly.
set modelines=0 "turn off modelines.
set backspace=indent,eol,start "fixes common backspace problems.
set whichwrap+=<,>,h,l
set ttyfast "speed up scrolling in Vim.
set encoding=utf-8 "encoding.
set hlsearch "highlight matching search patterns.
set incsearch "enable incremental search.
set ignorecase "include matching uppercase words with lowercase search term.
set smartcase "include only uppercase words with uppercase search term.
" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set lazyredraw "do not redraw while executing macros for performance.
set magic "for regular expression (regex).
set viminfo='100,<9999,s100
set path+=** "add (**) to default path which enable search down into subfolder
"=============================="


""" ###    Interface     ### """
"=============================="
set background=dark "select background light/dark regardless of the color scheme.
set guifont=DejaVu\ Sans\ Mono\ 14 "set default font.
" available color schemes
" DarkSchemes:  default  blue  desert  evening  koehler  murphy   peachpuff
" torte  darkblue  delek  elflord  industry  pablo  ron  slate  zellner
" LightSchemes: shine  morning
colorscheme torte "set color scheme.
set wrap "automatically wrap text that extends beyond the screen length.
" set textwidth=79 "set the max textwidth.
set formatoptions=tcqrn1 "see :help fo-table.
set tabstop=4 "set tab to 4 spaces.
set shiftwidth=4 "set autoindenting to 4 spaces.
set softtabstop=4 "set backspace to 4 spaces.
"set noexpandtab "set default to NOT expand tabs.
set expandtab "set default to expand tabs as spaces.
"set noshiftround "indent once with Shift+< or Shift+>
set shiftround "indent multiple with Shift+< or Shift+>
set list "enable different types of white spaces.
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. "display different types of white spaces.
set foldcolumn=1 "add extra left margin.
set number "show line numbers.
set relativenumber "show relative line numbers.
:highlight LineNr ctermfg=red "set line numbers colors.
set showtabline=2 "show buffer tabs
set cursorline "highlight cursor position.
"set highlight colors of cursor.
highlight Cursor cterm=none ctermfg=Red ctermbg=White "gui=none guifg=Red guibg=White
"set highlight colors of line numbers column.
highlight LineNR cterm=bold ctermfg=White ctermbg=DarkCyan "gui=bold guifg=White guibg=DarkCyan
"set highlight colors of cursor line.
highlight CursorLine cterm=bold ctermfg=none ctermbg=DarkGray "gui=bold guifg=none guibg=DarkGray
"set highlight colors of cursor line number.
highlight CursorLineNR cterm=bold ctermfg=White ctermbg=red "gui=bold guifg=White guibg=Red
set laststatus=2 "enable Status bar.
" create custom color highlight
" available colors
" Hex   			NR-16   NR-8    COLOR NAME ~
" #000000			0       0       Black
" #7dc1cf			1       4       DarkBlue
" #b8d68c			2       2       DarkGreen
" #6d878d			3       6       DarkCyan
" #e84f4f			4       1       DarkRed
" #9b64fb			5       5       DarkMagenta
" #e1aa5d			6       3       Brown, DarkYellow
" #dddddd			7       7       LightGray, LightGrey, Gray, Grey
" #dddddd			8       0*      DarkGray, DarkGrey
" #4e9fb1			9       4*      Blue, LightBlue
" #a0cf5d			10      2*      Green, LightGreen
" #42717b			11      6*      Cyan, LightCyan
" #d23d3d			12      1*      Red, LightRed
" #8542ff			13      5*      Magenta, LightMagenta
" #f39d21			14      3*      Yellow, LightYellow
" #FFFFFF			15      7*      White
""highlight   MyCustomColor     ctermfg=white       ctermbg=Black         guifg=#ffffff     guibg=#000000
highlight   DefaultColor      ctermfg=White       ctermbg=Black         guifg=#ffffff     guibg=#000000
highlight   CurrentMode       ctermfg=White       ctermbg=DarkMagenta   guifg=#dddddd     guibg=#9b64fb
highlight   FileModified      ctermfg=Black       ctermbg=Yellow        guifg=#000000     guibg=#e1aa5d
highlight   FileName          ctermfg=LightGreen  ctermbg=DarkBlue      guifg=#a0cf5d     guibg=#7dc1cf
highlight   ReadOnlyFile      ctermfg=Yellow      ctermbg=DarkRed       guifg=#e1aa5d     guibg=#e84f4f
highlight   HELP              ctermfg=White       ctermbg=DarkCyan      guifg=#ffffff     guibg=#6d878d
highlight   Preview           ctermfg=DarkGray    ctermbg=White         guifg=#dddddd     guibg=#ffffff
highlight   FileType          ctermfg=DarkGray    ctermbg=LightGreen    guifg=#dddddd     guibg=#7dc1cf
highlight   EncodingFormat    ctermfg=LightGreen  ctermbg=DarkGray      guifg=#7dc1cf     guibg=#dddddd
highlight   CursorPosition    ctermfg=Black       ctermbg=White         guifg=#000000     guibg=#ffffff
"show current mode.
let g:currentmode={
     \ 'n'  : 'Normal ',
     \ 'v'  : 'Visual ',
     \ 'V'  : 'V·Line ',
     \ '' : 'V·Block ',
     \ 'i'  : 'Insert ',
     \ 'R'  : 'R ',
     \ 'Rv' : 'V·Replace ',
     \ 'c'  : 'Command ',
     \}
set statusline= "format statusline
set statusline+=%#CurrentMode# ""**change color**
set statusline+=\ %{toupper(g:currentmode[mode()])}%* "show current mode
set statusline+=%#FileModified# ""**change color**
set statusline+=%{&modified?'[+]':''}%* "show [+] sign if file modified
set statusline+=%#FileName# ""**change color**
"set statusline+=%</ "cut at start
"set statusline+=\ %F\ %* "show full file path
set statusline+=\ %f\ %* "show relative file path
set statusline+=%#FileModified# ""**change color**
set statusline+=%m%* "modified flag [+]=modified or [-]=modifiable is off
set statusline+=%#ReadOnlyFile# ""**change color**
set statusline+=%r%* "read only flag  [RO]
set statusline+=%#HELP# ""**change color**
set statusline+=%h%* "help flag [help]
set statusline+=%#Preview# ""**change color**
set statusline+=%w%* "preview flag [Preview]
set statusline+=%#DefaultColor#  ""** change color**
set statusline+=%= "switching to right side
set statusline+=%* "restore default highlight
set statusline+=%#FileType# ""**change color**
set statusline+=\ %Y\ %* "show file type
set statusline+=%#EncodingFormat# ""**change color**
set statusline+=\ [%{&fileencoding?&fileencoding:&encoding},%{&fileformat}]\ %* "show file encoding and file format
set statusline+=%#CursorPosition# ""**change color**
set statusline+=\ %l:%v[%p%%]\ %* "show cursor position [line:column][percentage]
"set statusline+=[BUFFER=%n]\
"set statusline+=%{strftime('%c')} "show current time
"=============================="


""" ###     Control      ### """
"=============================="
" <leader> default is '\' to remap it
" let mapleader = ","
" let g:mapleader = ","
"
"fast saving.
nmap <leader>w :w!<CR>
"fast save+quit.
nmap <leader>wq :wq<CR>
"disable highlight.
map <silent> <leader><CR> :noh<CR>
"spell check
map <leader>ss :setlocal spell!<CR>
command W w !sudo tee % > /dev/null "save with sudo.
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>
set scrolloff=5 "display 5 lines above/below the cursor when scrolling with a mouse.
set showmatch "show match brackets when cursor hover.
set mat=8 "n*tenth of a second to blink when matching brackets.
set matchpairs+=<:> "highlight matching pairs of brackets. Use the '%' character to jump between them.
"map the Space key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
"toggle comment/uncomment with <leader>c and <leader>C
autocmd FileType c,cpp,java,scala       let b:comment_leader = '//'
autocmd FileType bash,sh,ruby,python    let b:comment_leader = '#'
autocmd FileType conf,fstab             let b:comment_leader = '#'
autocmd FileType tex                    let b:comment_leader = '%'
autocmd FileType mail                   let b:comment_leader = '>'
autocmd FileType vim                    let b:comment_leader = '"'
autocmd FileType nasm                   let b:comment_leader = ';'
function! CommentLine()
    execute ':silent! s/^\(.*\)/' . b:comment_leader . ' \1/g'
endfunction
function! UncommentLine()
    execute ':silent! s/^' . b:comment_leader . ' //g'
endfunction
map <leader>c :call CommentLine()<CR>
map <leader>C :call UncommentLine()<CR>
" ### managing tabs ###
"open new tab at user home directory.
map <leader>tn :tabnew<CR>
"close all tabs except this one.
map <leader>to :tabonly<CR>
"close current tab
map <leader>tc :tabclose<CR>
"go to next tab
map <leader>tt :tabnext<CR>
"toggle switching between current and last tabs
let g:lasttab=1
nmap <leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab=tabpagenr()
"open new tab at current buffer path
map <leader>te :tabedit <C-R>=expand("%:p:h")<CR>/<CR>
"=============================="
