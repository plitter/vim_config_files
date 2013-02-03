" Disable plugins
"let g:pathogen_disabled = [ "align", "gundo", "javacomplete", "nerdtree", "omnicppcompletion","rainbow_parentheses","ultisnips"]

" Pathogen: go through bundles for loading plugins
call pathogen#infect()

" Change the default leader
let mapleader=','

" Fixes stupid backup files from coming up all over the place
set backup      " keep a backup file
set backupdir=$HOME/.vimbak

" Source the vimrc file after saving it
if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
endif

" Search for selected block of text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" Set filetype detection on
filetype plugin on

" Remove stupid setting for filenamecompletion
set isfname-==

" Fix tabs to spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Press ^l for moving right when you have vsplit and the same for ^h
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" Open help in new tab
cabbrev h tab h

" Search result in middle of screen 
nnoremap n nzz
nnoremap N Nzz

" Gundo settings
" Gundo mapping for toggling the undo tree
nnoremap <F5> :GundoToggle<CR>

" At least n number of lines above below
set scrolloff=5

" Removes movement by arrowkeys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Stores things you have undone even after you close the file
set undofile

" Toggle nerdtree
nmap <Leader>f :NERDTreeToggle<CR>

" Searching
" Set smartsearch 
set smartcase
" Ignores case when only small letters
set ignorecase
" Searches as soon as you start writing
set incsearch

" Removes the highlight
nnoremap <LEADER><space> :noh<cr>

" Shows the filename always
set ls=2

" Toggle nerdtree
nmap <LEADER>f :NERDTreeToggle<CR>

" Edit my vim rc file
nnoremap <LEADER>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
" Edit my makefile
nnoremap <LEADER>em <C-w><C-v><C-l>:e makefile<cr>
" Make current makefile
nnoremap <LEADER>mm <ESC>:wa<CR>:make<CR>

" Sets the encoding
set encoding=utf-8

" Allow files that hasn't been saved yet
set hidden

" Set Ctrl-Space to do omnicompletion
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

"TESTAREA
"function! ForwardSkipConceal(count)
    "let cnt=a:count
    "let mvcnt=0
    "let c=col('.')
    "let l=line('.')
    "let lc=col('$')
    "let line=getline('.')
    "while cnt
        "if c>=lc
            "let mvcnt+=cnt
            "break
        "endif
        "if stridx(&concealcursor, 'n')==-1
            "let isconcealed=0
        "else
            "let [isconcealed, cchar, group]=synconcealed(l, c)
        "endif
        "if isconcealed
            "let cnt-=strchars(cchar)
            "let oldc=c
            "let c+=1
            "while c<lc && synconcealed(l, c)[2]==group | let c+=1 | endwhile
            "let mvcnt+=strchars(line[oldc-1:c-2])
        "else
            "let cnt-=1
            "let mvcnt+=1
            "let c+=len(matchstr(line[c-1:], '.'))
        "endif
    "endwhile
    "return ":\<C-u>\e".mvcnt.'l'
"endfunction
"nnoremap <expr> l ForwardSkipConceal(v:count1)
