# Brew install list
# ------------------------------------------------------------------------------

# Make sure brew is up to date
brew update

# Make sure existing formulae are up to date
brew upgrade

# Basic CLI cmds
brew install coreutils  #GNU toolset (mac outdated)
brew install findutils
brew install gnu-sed
brew install grep
brew install jq
brew install tree
brew install openssh
brew install xz
brew install ripgrep
brew install fzf

# Formulae
brew install stow
brew install git
# brew install lazygit
brew install starship
brew install tmux
brew install neovim
brew install xdg-ninja
brew install markdown
brew install sqlite
brew install lua
brew install pandoc
brew install zathura
brew install zathura-pdf-mupdf
brew install girara

# Casks
brew install --cask wezterm

# Remove outdated versions from the cellar
brew cleanup
