# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="philips"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  # git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

source $HOME/.shell/aliases
source $HOME/.shell/functions
source $HOME/.shell/variables
source $HOME/.shell/input
if [ -f ~/.shell_local ]; then
  . ~/.shell_local
fi
