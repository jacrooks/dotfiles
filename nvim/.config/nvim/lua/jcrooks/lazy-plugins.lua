
-- Setup Lazy and load my plugins (with their configs) in `../lua/jcrooks/plugins/`
-- ------------------------------------------------------------------------------

require("lazy").setup(
	{import = "jcrooks/plugins/"},
	{change_detection = {notify = false}}
)

