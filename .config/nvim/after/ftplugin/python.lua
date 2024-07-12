return {
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			python = { "ruff" },
		}
	end,
}
