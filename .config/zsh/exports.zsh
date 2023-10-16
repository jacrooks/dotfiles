
# setup CDPATH
# ------------------------------------------------------------------------------
export CDPATH="$HOME"
export CDPATH="$HOME/Toots:$CDPATH"
export CDPATH="$HOME/Projects:$CDPATH"


# Set paths (to keep $HOME tidy)
# ------------------------------------------------------------------------------
# Zsh history
export HISTFILE="$XDG_STATE_HOME/zsh/zsh_history"

# Python cache
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"

# Python history (startup)
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc.py"

# Anaconda/ipython
export CONDA_ENVS_PATH="$XDG_DATA_HOME/conda"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"

# SQLite shell edit history
export SQLITE_HISTORY="$XDG_STATE_HOME/sqlite/.sqlite_history"

# ASDF
export ASDF_CONFIG_FILE=$XDG_CONFIG_HOME/asdf/.asdfrc
export ASDF_DIR=$XDG_CONFIG_HOME/asdf
export ASDF_DATA_DIR=$XDG_CONFIG_HOME/asdf

# NPM (node package manager)
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc

# Cuda (.nv)
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

# Nodejs history
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history


