# An JS flavored import directive to source files tersley with builtin existential check
function import () { [[ -f "$1" ]] && source "$1" } # i.e. `import .env` 

import ~/dotfiles/env_vars

plugins=(
  npm 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  zsh-interactive-cd 
  asdf 
  fzf 
  zsh-vi-mode
  emacs
)
import $ZSH/oh-my-zsh.sh

import $ZSH/custom/plugins/iterm-tab-colors/zsh-tab-colors.plugin.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Id like to start amassing meaningful quotes, not just random ones.
# Lets find a solution and show it on zsh exec

import ~/dotfiles/paths
import ~/dotfiles/functions
import ~/dotfiles/aliases

[ -s "/Users/mathisto/.scm_breeze/scm_breeze.sh" ] && source "/Users/mathisto/.scm_breeze/scm_breeze.sh"
export PATH=$PATH:/Users/mathisto/.spicetify
