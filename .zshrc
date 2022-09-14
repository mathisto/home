source ~/dotfiles/env_var
source ~/dotfiles/functions
source ~/dotfiles/aliases
source ~/dotfiles/paths

export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/Applications/Emacs.app/Contents/MacOS/bin:$PATH"
export PATH="/Applications/Emacs.app/Contents/MacOS:$PATH"
export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"

eval "$(mcfly init zsh)"

plugins=(npm zsh-autosuggestions cd asdf fzf vi-mode emacs)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"


