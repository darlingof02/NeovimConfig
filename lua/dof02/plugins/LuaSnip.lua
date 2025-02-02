return {
	"L3MON4D3/LuaSnip", -- Add LuaSnip for snippet management
	dependencies = {
		"rafamadriz/friendly-snippets", -- Optional: Predefined snippets for various languages
	},
	config = function()
		local ls = require("luasnip")

		-- Load friendly snippets (optional)
		require("luasnip.loaders.from_vscode").lazy_load()

		-- Key mappings for snippet navigation
		-- vim.api.nvim_set_keymap("i", "<C-k>", "<cmd>lua require'luasnip'.jump(1)<Cr>", { silent = true })
		-- vim.api.nvim_set_keymap("i", "<C-j>", "<cmd>lua require'luasnip'.jump(-1)<Cr>", { silent = true })
	end,
}
