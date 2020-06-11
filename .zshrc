# `.zshrc' is sourced in interactive shells.
# It should contain commands to set up aliases, functions, options, key bindings, etc.
# http://zsh.sourceforge.net/Intro/intro_3.html

# Antigen
############################################################
source $HOME/antigen/antigen.zsh # http://antigen.sharats.me/ - download first

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Bundles from the default repo
antigen bundle git
antigen bundle tmux
antigen bundle mvn
antigen bundle python

# Other bundles
# NodeJS
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle lukechilds/zsh-nvm

# SDK Man
#antigen bundle matthieusb/zsh-sdkman

# Theme
antigen theme robbyrussell

# Finish with Antigen
antigen apply
############################################################


# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Spelling corrector
setopt CORRECT

# Editor in text mode
export EDITOR=vim

# Editor in visual mode
export VISUAL="/usr/bin/vim -p -X"

# File with aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Machine-local rc file
if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi

