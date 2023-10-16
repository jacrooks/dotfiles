
# ls
alias l='ls -lXh'
alias la='ls -lAXh'

# neovim
alias vim='nvim'

# sqlite3
alias sqlite='sqlite3'

# prevents .wget-hsts from saving to $HOME
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

# interact with git repo for dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.config/dotfiles/ --work-tree=$HOME'

