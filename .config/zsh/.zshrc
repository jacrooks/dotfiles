
# Initialize Zap plugin manager
# ------------------------------------------------------------------------------
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"


# Load plugins
# ------------------------------------------------------------------------------
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "jeffreytse/zsh-vi-mode"

plug "$HOME/.config/zsh/exports.zsh"
plug "$HOME/.config/zsh/aliases.zsh"


# Initialize starship prompt
# ------------------------------------------------------------------------------
eval "$(starship init zsh)"


# Initialize asdf
# ------------------------------------------------------------------------------ 
if [ -f $HOME/.local/share/asdf/asdf.sh ]; then
	source $HOME/.local/share/asdf/asdf.sh
fi

# append asdf completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)


# Load and initialise autocompletion system
# ------------------------------------------------------------------------------
autoload -Uz compinit
compinit
