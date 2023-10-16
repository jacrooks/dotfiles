
# Plugins (via Zap)
# ------------------------------------------------------------------------------
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"

# Local files
plug "$XDG_CONFIG_HOME/zsh/aliases.zsh"
plug "$XDG_CONFIG_HOME/zsh/exports.zsh"

# Source local scripts
source "$HOME/.local/bin/fcd"


# Additional setup
# ------------------------------------------------------------------------------
HISTFILE="$HOME"/.config/zsh/.zsh_history
HISTCONTROL=ignoredups
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v

# Load and initialise zsh autocompletion system
autoload -Uz compinit
compinit

# Load asdf
if [ -f $HOME/.config/asdf/asdf.sh ]; then
    source $HOME/.config/asdf/asdf.sh
fi
# append completions fo fpath
fpath=(${ASDF_DIR}/completions $fpath)

# Load starship prompt (config location: $HOME/.config/starship.toml)
eval "$(starship init zsh)"


