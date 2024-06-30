
-- Neovim config entrypoint


-- Preliminaries
-- ------------------------------------------------------------------------------
-- Remap leader key (must set before loading plugins)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Turn on Nerd Font
vim.g.have_nerd_font = true


-- Load primary config
-- ------------------------------------------------------------------------------
require("jcrooks")

