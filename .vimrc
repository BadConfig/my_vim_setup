"=========================MADE=BY=========================="
"  ____            _    _____             __ _       
" |  _ \          | |  / ____|           / _(_)      
" | |_) | __ _  __| | | |     ___  _ __ | |_ _  __ _ 
" |  _ < / _` |/ _` | | |    / _ \| '_ \|  _| |/ _` |
" | |_) | (_| | (_| | | |___| (_) | | | | | | | (_| |
" |____/ \__,_|\__,_|  \_____\___/|_| |_|_| |_|\__, |
"                                               __/ |
" https://github.com/BadConfig                  |___/ 
" USE :h <COMMAND> for help

"=========================PLUGINS=========================="
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
	
"NERD TREE + ICONS
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'	

"FOR AUTOCOMPLETE (check AUR for ycmd-git)
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'

"FOR RUST
Plugin 'rust-lang/rust.vim'

"POWERLINES
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"USFUL PLUGS
Plugin 'jiangmiao/auto-pairs'
Plugin 'derekwyatt/vim-fswitch'

"SNIPPETS
Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'

"COLOR-CHEMES
Plugin 'sonph/onehalf',{'rtp':'vim/'}
"Plugin 'morhetz/gruvbox'
"Plugin 'Badacadabra/vim-archery'
	
call vundle#end()            " required
	
filetype plugin indent on    " required
	
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"=========================DEFAULT=========================="
autocmd filetype make set noexpandtab " мейкфайл с табами
set textwidth=80
"tab settings
set expandtab
set tabstop=4
set smarttab
set shiftwidth=4
set smartindent
"подсветки во время набора
"set incsearch
"set hlsearch
"nav numbers
set number
set relativenumber
"syntax hightlighting
syntax on
"bash looking notes
set wildmode=longest:list,full
"window manage
set noequalalways
set winheight=20
set splitright
"file encoding
set fileencoding=utf-8
set encoding=UTF-8
"===========================MAPS==========================="
"windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l 
"tabs
map tj :tabn<CR>
map tk :tabp<CR>
map tn :tabnew<CR>
map tc :tabclose<CR>

"========================NERD=TREE========================="
map <C-n> :NERDTreeToggle<CR>
"if file is not opened NERD tree will
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	
"=========================AIRLINE=========================="
let g:airline_theme='onehalfdark'
	
"=======================AUTO=PAIRS========================="
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
	
"=======================ULTI=SNIPS========================="
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"===========================YCM============================"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"======================NERD=TREE=VIEW======================"
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

"=======================CUSTOM=VIEW========================"
if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
          set termguicolors
endif
let g:gruvbox_italic=1
set background=dark
set termguicolors
colorscheme onehalfdark
set t_Co=256
set laststatus=1
"disable '~' in empty strings
highlight NonText ctermfg=bg guifg=bg
set colorcolumn=100
