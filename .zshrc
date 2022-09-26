# An JS flavored import directive to source files tersley with builtin existential check
function import () { [[ -f "$1" ]] && source "$1" } # i.e. `import .env` 

import ~/dotfiles/env_vars

# Init Oh my ZSH!
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-interactive-cd zsh-vi-mode
  asdf fzf npm emacs)
import $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Id like to start amassing meaningful quotes, not just random ones.
# Lets find a solution and show it on zsh exec

import ~/dotfiles/paths
import ~/dotfiles/functions
import ~/dotfiles/aliases

[ -s "/Users/mathisto/.scm_breeze/scm_breeze.sh" ] && source "/Users/mathisto/.scm_breeze/scm_breeze.sh"

import "$ZAPPARIXHOME/apparix.zsh"
