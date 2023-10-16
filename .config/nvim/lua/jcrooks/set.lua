
-- Highlight on search off
vim.o.hlsearch = false

-- Line numbers
vim.wo.number = true

-- Relative line numbers
vim.o.relativenumber = true

-- Tab distances and behavior
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- Line wrapping off
vim.o.wrap = false

-- Mouse mode on
vim.o.mouse = "a"

-- Sync OS and Neovim clipboards
-- (see :help "clipboard" for more info)
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive search, unless \C or capital in search
vim.o.ignorecase = true

-- Signcolumn on (gutter)
vim.wo.signcolumn = "yes"

-- Faster update time
vim.o.updatetime = 250
vim.timeoutlen = 300

-- Completeopt settings
vim.o.completeopt = "menuone,noselect"

-- Better terminal colors
vim.o.termguicolors = true


