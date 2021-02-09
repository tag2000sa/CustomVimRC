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
"           1.0                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""


" Set default font
set guifont=DejaVu\ Sans\ Mono\ 14

" Set color scheme
" available color schemes
" DarkSchemes:  default  blue  desert  evening  koehler  murphy   peachpuff
" torte  darkblue  delek  elflord  industry  pablo  ron  slate  zellner
" LightSchemes: shine  morning
colorscheme torte

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Enable Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

"" Line Numbers
"========================================
"
" Show line numbers
set number

" Show relative line numbers
set relativenumber

" Set line numbers colors
:highlight LineNr ctermfg=red
"
"========================================

"" Cursor Line
"========================================
"
" Highlight cursor position
set cursorline

" Remove the underline from enabling cursorline:
":highlight clear CursorLine

" Set line numbering to red background:
:highlight CursorLineNR ctermbg=red
"
"========================================

" Set status line display
"========================================
"
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
highlight   HELP              ctermfg=DarkBlue    ctermbg=DarkCyan      guifg=#7dc1cf     guibg=#6d878d
highlight   Preview           ctermfg=DarkGray    ctermbg=White         guifg=#dddddd     guibg=#ffffff
highlight   FileType          ctermfg=DarkGray    ctermbg=LightGreen    guifg=#dddddd     guibg=#7dc1cf
highlight   EncodingFormat    ctermfg=LightGreen  ctermbg=DarkGray      guifg=#7dc1cf     guibg=#dddddd
highlight   CursorPosition    ctermfg=Black       ctermbg=White         guifg=#000000     guibg=#ffffff

" show current mode
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
"
set statusline=
"set statusline+=%#MatchParen# ""**change color**
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
"
"========================================

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
