local lsp_zero = require("lsp-zero")


lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings to learn the avail actions
    lsp_zero.default_keymaps({buffer = bufnr})
end)


require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "pyright"},
    handlers = {
	lsp_zero.default_setup,
	lua_ls = function()
	    local lua_opts = lsp_zero.nvim_lua_ls()
	    require("lspconfig").lua_ls.setup(lua_opts)
	end,
    },
})


-- Autocompletion
-- ------------------------------------------------------------------------------
local cmp = require("cmp")
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
	-- Confirm completion
	["<CR>"] = cmp.mapping.confirm({select = false}),

	-- Menu nav
	["<C-j>"] = cmp.mapping.select_next_item(),
	["<C-k>"] = cmp.mapping.select_prev_item(),
	["<C-d>"] = cmp.mapping.scroll_docs(4),
	["<C-u>"] = cmp.mapping.scroll_docs(-4),
    })
})


