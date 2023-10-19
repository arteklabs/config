# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# load zsh theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"

# npm canvas
# If you need to have jpeg first in your PATH, run:
#   echo 'export PATH="/opt/homebrew/opt/jpeg/bin:$PATH"' >> ~/.zshrc
# For compilers to find jpeg you may need to set:
#   export LDFLAGS="-L/opt/homebrew/opt/jpeg/lib"
#   export CPPFLAGS="-I/opt/homebrew/opt/jpeg/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/jpeg/lib/pkgconfig"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# draw.io cli
alias draw='/Applications/draw.io.app/Contents/MacOS/draw.io'

# use code in terminal
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# ranger
# brew install ranger
eval "$(/opt/homebrew/bin/brew shellenv)"

# bash history format
export HISTCONTROL=ignoredups:ignorespace # no duplicate entries
export HISTSIZE=100000 # remember this many commands
export HISTFILESIZE=100000 # remember this many lines
setopt inc_append_history
setopt share_history
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
HISTTIMEFORMAT="[%d/%m/%y %T] "

# [WARNING]: Console output during zsh initialization detected.
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# git autocomplete
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# draw.io cli
alias draw='/Applications/draw.io.app/Contents/MacOS/draw.io'

# terminate zscaler without admin rights
# https://github.com/bkahlert/kill-zscaler/blob/main/kill-zscaler.alias.txt
alias start-zscaler="open -a /Applications/Zscaler/Zscaler.app --hide; sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl load {} \;"
alias kill-zscaler="find /Library/LaunchAgents -name '*zscaler*' -exec launchctl unload {} \;;sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl unload {} \;"
