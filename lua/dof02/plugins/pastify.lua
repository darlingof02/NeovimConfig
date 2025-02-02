return {
	"TobinPalmer/pastify.nvim",
	cmd = { "Pastify" },
	ft = { "markdown" },
	config = function()
		local pastify = require("pastify")
		pastify.setup({
			opts = {
				absolute_path = false, -- use absolute or relative path to the working directory
				apikey = "6faadb5ab54aa0aa93132cdf6e18493b", -- Api key, required for online saving
				local_path = "/markdown/imgs/", -- The path to put local files in, ex ~/Projects/<name>/assets/images/<imgname>.png
				save = "online", -- Either 'local' or 'online'
			},
			ft = { -- Custom snippets for different filetypes, will replace $IMG$ with the image url
				-- html = '<img src="$IMG$" alt="">',
				markdown = "![]($IMG$)",
				-- tex = [[\includegraphics[width=\linewidth]{$IMG$}]],
			},
		})
		local keymap = vim.keymap

		keymap.set("n", "<Space>pp", "<cmd>Pastify<CR>", { desc = "Paste Img into Markdown file" })
	end,
}
