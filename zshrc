# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/.local/bin:$PATH

export ZSH="/Users/astpierre/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Personally set aliases
source $HOME/.aliases

# Zsh-Syntax-Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

