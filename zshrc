# Zsh-
# Path to your oh-my-zsh configuration.
ZSH="$HOME/.dotfiles/oh-my-zsh"

# Autocomplete
COMPLETION_WAITING_DOTS="true"

# Editor
EDITOR="subl"

# TP
export PROFILE_ID=60507
export NETWORK_ID=508

# Theme
# Set name of the theme to load.
# Look in $HOME/.dotfiles/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pure"

# Plugins
# Plugins can be found in $HOME/.dotfiles/oh-my-zsh/plugins/
# Custom plugins may be added to $HOME/.dotfiles/oh-my-zsh/custom/plugins/
#
# Which plugins would you like to load?
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ant history-substring-search z zsh-syntax-highlighting git brew bundler gem git-flow history-substring-search osx rails ruby ssh-agent nyan cap zeus boris)

# Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Options
unsetopt correct_all
unsetopt correct

# Aliases/functions
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions

# boxen
if [[ -f /opt/boxen/env.sh ]]; then
 source /opt/boxen/env.sh
fi

# Rbenv
export PATH="$HOME/.rbenv/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/usr/local/share/npm/bin:$PATH"
eval "$(rbenv init -)"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
