-- Vim-slime
--------------------------------------------------------------------------------
-- easily pass code/text between tmux panes

return {
	"jpalardy/vim-slime",
	init = function()
		vim.g.slime_target = "tmux"
		vim.g.slime_default_config = {
			socket_name = vim.api.nvim_eval('get(split($TMUX, ","), 0)'),
			target_pane = "{last}",
		}

		vim.g.slime_paste_file = os.getenv("XDG_DATA_HOME") .. "/vim-slime/slime_paste"

		-- May need this later if python too sensitive to indentation (?)
		vim.g.slime_bracketed_paste = 1

		-- Keymaps
		vim.g.slime_no_mappings = 1
		vim.keymap.set("n", "<leader>s", "<Plug>SlimeParagraphSend", { desc = "Slime [s]end paragraph" })
		vim.keymap.set("n", "<leader>sl", "<Plug>SlimeLineSend", { desc = "Slime [s]end [l]ine" })
		vim.keymap.set("n", "<leader>su", "ggV''<Plug>SlimeRegionSend", { desc = "Slime [s]end [u]pto current line" })
		vim.keymap.set("n", "<leader>sf", "ggVG<Plug>SlimeRegionSend", { desc = "Slime [s]end whole [f]ile" })
		vim.keymap.set("v", "<leader>s", "<Plug>SlimeRegionSend", { desc = "Slime [s]end region" })
	end,
}
