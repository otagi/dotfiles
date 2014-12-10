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
export EDITOR="subl"
export BUNDLER_EDITOR="subl"

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

# prompt
function __git_prompt {
  local DIRTY="%{$fg[yellow]%}"
  local CLEAN="%{$fg[green]%}"
  local UNMERGED="%{$fg[red]%}"
  local RESET="%{$terminfo[sgr0]%}"
  git rev-parse --git-dir >& /dev/null
  if [[ $? == 0 ]]
  then
    echo -n "["
    if [[ `git ls-files -u >& /dev/null` == '' ]]
    then
      git diff --quiet >& /dev/null
      if [[ $? == 1 ]]
      then
        echo -n $DIRTY
      else
        git diff --cached --quiet >& /dev/null
        if [[ $? == 1 ]]
        then
          echo -n $DIRTY
        else
          echo -n $CLEAN
        fi
      fi
    else
      echo -n $UNMERGED
    fi
    echo -n `git branch | grep '* ' | sed 's/..//'`
    echo -n $RESET
    echo -n "]"
  fi
}

# put fancy stuff on the right
RPS1='$(__git_prompt)%{$reset_color%} $EPS1'

# basic prompt on the left
PROMPT='%{$reset_color%}%2c% $ ' #%(?.%{$fg[green]%}.%{$fg[red]%})%B $%b '

# Rbenv
export PATH="$HOME/.rbenv/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/X11/bin:/usr/local/share/npm/bin:$PATH"
eval "$(rbenv init -)"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
