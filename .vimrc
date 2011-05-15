syntax on

"set theme
colorscheme Tomorrow-Night

filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

"nerdtree toggle
map <F2> :NERDTreeToggle<CR>

"Trigger snipmate
ino <tab> <c-r>=TriggerSnippet()<cr>
snor <tab> <esc>i<right><c-r>=TriggerSnippet()<cr>

"Taglist plugin
map <F3> :TlistToggle<cr>

"FuzzyFinder
nnoremap <C-t> :<C-u>FufFile **/<CR>

"MRU config
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

"neocomplcache for keyword completion 
let g:neocomplcache_enable_at_startup = 1

"Spell check
set spell

"Latex Suite
filetype indent on
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'ps2pdf $*.ps'
let g:Tex_FormatDependency_pdf = 'dvi,ps,pdf'

"Searching
set hlsearch  " highlight search
set incsearch  " Incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Tabs 
"set sta " a <Tab> in an indent inserts 'shiftwidth' spaces

function! Tabstyle_tabs()
  " Using 4 column tabs
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set noexpandtab
  autocmd User Rails set softtabstop=4
  autocmd User Rails set shiftwidth=4
  autocmd User Rails set tabstop=4
  autocmd User Rails set noexpandtab
endfunction

function! Tabstyle_spaces()
  " Use 2 spaces
  set softtabstop=2
  set shiftwidth=2
  set tabstop=2
  set expandtab
endfunction

call Tabstyle_spaces()

" Indenting 
set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer) 

" Misc settings
set backspace=indent,eol,start
set number " Show line numbers
set matchpairs+=<:>
set vb t_vb= " Turn off bell, this could be more annoying, but I'm not sure how
set nofoldenable " Turn off folding

" Copy and Paste mapping
imap <Leader>v  <C-O>:set paste<CR><C-r>*<C-O>:set nopaste<CR>
