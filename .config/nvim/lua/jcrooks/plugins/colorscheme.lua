return {
	"sainnhe/everforest",
	lazy = false,
	priority = 1000, -- Make sure to load this before all the other start plugins.
	init = function()
		-- Config (must run before loading colorscheme)
		vim.g.everforest_background = "hard"
		vim.g.everforest_transparent_background = true
		vim.g.everforest_enable_italic = true
		vim.cmd.hi("Comment gui=none") -- highlights

		-- Load
		vim.cmd.colorscheme("everforest")
	end,
}
