return {
	"gaoDean/autolist.nvim",
	ft = { "markdown" },
	config = function()
		local autolist = require("autolist")
		local list_patterns = {
			unordered = "[-+*]",
			digit = "%d+[.)]",
			ascii = "%a[.)]",
			roman = "%u[.)]",
			latex_item = "\\item",
		}
		autolist.setup({
			style = "spaces",
			depth = 2,
			lists = {
				markdown = {
					list_patterns.unordered,
					list_patterns.digit,
					list_patterns.ascii,
					list_patterns.roman,
				},
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "o", function()
			local filetype = vim.bo.filetype
			if filetype == "markdown" then
				vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<cr>")
			else
				return "o"
			end
		end, { expr = true, noremap = true })

		keymap.set("n", "O", function()
			local filetype = vim.bo.filetype
			if filetype == "markdown" then
				vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
			else
				return "o"
			end
		end, { expr = true, noremap = true })
	end,
}
