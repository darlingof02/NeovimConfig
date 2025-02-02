local opt = vim.opt

-- enable line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- use system clipboard
opt.clipboard = "unnamedplus"

-- enable break indent
opt.breakindent = true

-- save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn by default
opt.signcolumn = "yes"

-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"

-- cursor line
opt.cursorline = true

-- turn off swapfile
opt.swapfile = false

-- backspace
opt.backspace = "indent,eol,start"

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.spell = true
	end,
})
