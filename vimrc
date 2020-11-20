"    ##############..... ##############   
"    ##############......##############   
"      ##########..........##########     
"      ##########........##########       
"      ##########.......##########        
"      ##########.....##########..        
"      ##########....##########.....      
"    ..##########..##########.........    
"  ....##########.#########.............  
"    ..################JJJ............    
"      ################.............      
"      ##############.JJJ.JJJJJJJJJJ      
"      ############...JJ...JJ..JJ  JJ     
"      ##########....JJ...JJ..JJ  JJ      
"      ########......JJJ..JJJ JJJ JJJ     
"      ######    .........                
"                  .....                  
"                    .                    

set mouse=a
set wrap
set noet

set autoindent
set noexpandtab " If this doesn't work for a lang change the $LANG.vim and append this here
set tabstop=4
set shiftwidth=4
" ~/.vim/plugged/vim-polyglot/ftplugin/(LANG).vim
" If not there try:
" :verbose set et? (remove that line)

vmap <Tab> >gv
vmap <S-Tab> <gv

syntax on
set nu
set ruler

" Vim-Plug
call plug#begin('~/.vim/plugged')
	Plug 'https://github.com/hugolgst/vimsence.git' " Discord Presence
	Plug 'sheerun/vim-polyglot' " Syntax highlightning
	Plug 'preservim/nerdtree' " Tree navigation
	Plug 'rafi/awesome-vim-colorschemes' " Theme collection
	Plug 'chriskempson/base16-vim' " Theme
call plug#end()


" Mapping
" CTRL + D to open navtree 
nmap <silent> <C-D> :NERDTreeToggle<CR> 
" Replace selection
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" Theme
set t_Co=256
colorscheme base16-default-dark 
"colors hybrid_material
let &showbreak = '↳ '
"hi Normal guibg=black ctermbg=black
"hi Normal guibg=NONE ctermbg=NONE

highlight clear LineNr
highlight LineNr ctermfg=grey ctermbg=NONE

set termguicolors
let base16colorspace=256

" YCM
set completeopt-=preview

" Tabs
nnoremap <silent> <C-Left> :tabprevious<CR> 
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-j> :tabprevious<CR>
nnoremap <silent> <C-k> :tabnext<CR>
