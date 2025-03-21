
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


# CDPATH setup
# ------------------------------------------------------------------------------
setopt auto_cd
cdpath=($HOME)


# Initialize asdf
# ------------------------------------------------------------------------------ 
if [ -f /opt/homebrew/bin/asdf ]; then
	export PATH="${ASDF_DATA_DIR}/shims:$PATH"
fi

# append asdf completions to fpath
fpath=(${ASDF_DATA_DIR}/completions $fpath)


# FZF
# ------------------------------------------------------------------------------
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)


# Load and initialise shell autocompletion (keep at end of file)
# ------------------------------------------------------------------------------
autoload -Uz compinit
compinit

