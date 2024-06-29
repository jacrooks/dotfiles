
# XDG Base Directories
# ------------------------------------------------------------------------------
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"


# Starship (prompt)
# ------------------------------------------------------------------------------
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship/cache"


# Less (shell program)
# ------------------------------------------------------------------------------
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"


# Docker
# ------------------------------------------------------------------------------
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export DOCKER_HOST="unix:///$XDG_CONFIG_HOME/docker/run/docker.sock"

