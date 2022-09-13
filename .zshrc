source ~/dotfiles/env_var
source ~/dotfiles/functions
source ~/dotfiles/aliases
source ~/dotfiles/paths

export TERM="xterm-256color"
export PATH="$HOME/.emacs.d/bin:/Applications/Emacs.app/Contents/MacOS/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"

eval "$(mcfly init zsh)"

plugins=(npm zsh-autosuggestions cd asdf fzf vi-mode emacs)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"


