if empty(glob('~/.config/nvim/pack/minpac/opt/plugpac.vim'))
  silent !git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
  silent !curl -fLo ~/.config/nvim/autoload/plugpac.vim --create-dirs https://raw.githubusercontent.com/bennyyip/plugpac.vim/master/plugpac.vim
  au VimEnter * PackInstall
  source ~/.config/nvim/init.vim
endif
call plugpac#begin()
" minpac
Pack 'k-takata/minpac', {'type': 'opt'}
Pack 'bennyyip/plugpac.vim', {'type': 'opt', 'do': ':silent !cp ~/.config/nvim/pack/minpac/plugpac.vim/plugpac.vim ~/.config/nvim/autoload/plugpac.vim'}

" Completion
Pack 'neoclide/coc-sources'
Pack 'neoclide/coc.nvim', {'branch': 'release', 'type': 'opt'}

" Fuzzy finding
Pack 'junegunn/fzf.vim'

" Language multipack
Pack 'sheerun/vim-polyglot'

" Path changing
Pack 'tpope/vim-apathy'

" LaTeX
Pack 'lervag/vimtex'

" Colorscheme
Pack 'whatyouhide/vim-gotham'
" Pack 'mhartington/oceanic-next'

call plugpac#end()
