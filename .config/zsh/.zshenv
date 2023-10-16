
# XDG primary paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Note: I set $ZDOTDIR in /etc/zsh/zshenv


# Set paths (to keep $HOME tidy)
# ------------------------------------------------------------------------------
# GPG
# export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# Less history
# export LESSHISTFILE="$XDG_STATE_HOME/less/lesshst"

# (see exports.zsh for additional paths)


# Zsh-vi-mode plugin config
# ------------------------------------------------------------------------------
# Ensures prompt initializes in vi insert mode (default is normal mode, ugh!)
function zvm_config() {
    ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
}

