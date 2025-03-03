
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


# Less (shell command)
# ------------------------------------------------------------------------------
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"


# TLDR (shell command)
#------------------------------------------------------------------------------
export TLDR_CACHE_DIR="$XDG_CACHE_HOME/tldr"


# Python
# ------------------------------------------------------------------------------
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"


# Matplotlib
# ------------------------------------------------------------------------------
export MPLCONFIGDIR="$XDG_CONFIG_HOME/matplotlib"


# SQLite
# ------------------------------------------------------------------------------
export SQLITE_HISTORY="$XDG_CACHE_HOME/sqlite_history"


# MySQL
# ------------------------------------------------------------------------------
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history


# ASDF
# ------------------------------------------------------------------------------
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"


# Docker
# ------------------------------------------------------------------------------
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export DOCKER_HOST="unix:///$XDG_CONFIG_HOME/docker/run/docker.sock"

