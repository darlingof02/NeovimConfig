return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	config = function()
		vim.g.mkdp_highlight_css = "/Users/of02d/.config/nvim/lua/dof02/plugins/markdownCSS/dracula-syntax.css"
		vim.g.mkdp_refresh_slow = 0
	end,
}
