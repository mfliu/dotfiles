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

" Speedy loads
Pack 'lewis6991/impatient.nvim'

" Completion
Pack 'neoclide/coc-sources'
Pack 'neoclide/coc.nvim', {'branch': 'release', 'type': 'opt'}

" Fuzzy finding
Pack 'tami5/sqlite.lua'
Pack 'nvim-lua/popup.nvim'
Pack 'nvim-lua/plenary.nvim'
Pack 'telescope-frecency.nvim', {'type': 'opt'}
Pack 'telescope-fzf-native.nvim', {'do': 'make', 'type': 'opt'}
Pack 'nvim-telescope/telescope-ui-select.nvim', {'type': 'opt'}
Pack 'nvim-telescope/telescope.nvim'

" Path changing
Pack 'tpope/vim-apathy'

" Highlighting
Pack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" LaTeX
Pack 'lervag/vimtex'

" Colorscheme
" Pack 'chriskempson/base16-vim'
" Pack 'arzg/vim-substrata'
" Pack 'fxn/vim-monochrome'
Pack 'wbthomason/vim-nazgul'

call plugpac#end()
