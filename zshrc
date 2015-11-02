# Zsh-
# Path to your oh-my-zsh configuration.
ZSH="$HOME/.dotfiles/oh-my-zsh"

# Autocomplete
COMPLETION_WAITING_DOTS="true"

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000


# Editor
export EDITOR="atom"
export BUNDLER_EDITOR="atom"

# MAMP
export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.2/bin
export PATH="$MAMP_PHP:$PATH"

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
plugins=(atom ant z zsh-syntax-highlighting git brew bundler gem git-flow history-substring-search osx rails ruby ssh-agent nyan cap zeus k)

# Options
unsetopt correct_all
unsetopt correct

# Oh My Zsh
source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/dev_scripts/k.sh

# Aliases/functions
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions

# Rbenv
export CC=/usr/bin/gcc
export PATH="$HOME/.rbenv/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/usr/local/share/npm/bin:$PATH"
eval "$(rbenv init -)"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/";
export GOPATH=$PATH:/usr/local/opt/go/libexec/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
