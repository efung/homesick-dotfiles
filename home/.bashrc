HISTCONTROL=ignoreboth
shopt -s histappend

export EDITOR=/usr/bin/vim

export LESSCHARSET=utf-8

export PATH="${PATH}:~/bin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/sbin"

export MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export LESS="${LESS} -R --tabs=4"

export PYTHONSTARTUP=~/.pythonrc

# Automatically run cleanup after install
export HOMEBREW_INSTALL_CLEANUP=1

# For NVM / React Native
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# GCloud

if [ -f $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]; then
  source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
fi

if [ -f $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ]; then
  source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
fi
       
# Include git branch in prompt
export PS1='[\t$(__git_ps1) \W] '

# iTerm2 integration, e.g. capture output
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# fasd: quick access to files and directories
eval "$(fasd --init auto)"

# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

# Homeshick
export HOMESHICK_DIR=/usr/local/opt/homeshick
source "/usr/local/opt/homeshick/homeshick.sh"
