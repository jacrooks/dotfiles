
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, {desc = "[a]dd file"})
vim.keymap.set("n", "<leader>q", ui.toggle_quick_menu, {desc = "toggle [q]uick menu"})

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, {desc = "navigate to file [1]"})
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, {desc = "navigate to file [2]"})
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, {desc = "navigate to file [3]"})
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, {desc = "navigate to file [4]"})

