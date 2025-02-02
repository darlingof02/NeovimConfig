local Terminal = require("toggleterm.terminal").Terminal
local python_run = Terminal:new({
	cmd = "python " .. vim.fn.expand("%"),
	hidden = true,
	direction = "float",
	close_on_exit = false,
})

function _python_toggle()
	python_run:toggle()
end

-- map r to run different files
local function execute_file()
	local filetype = vim.bo.filetype
	if filetype == "markdown" then
		vim.cmd("MarkdownPreview")
	elseif filetype == "python" then
		_python_toggle()
		-- Add more file types and their respective commands here
	end
end
vim.keymap.set("n", "r", execute_file, { expr = true, noremap = true, silent = true })

-- -- map <CR>, <Tab> and <S-Tab> in different condition
-- local cmp = require("cmp")
-- local luasnip = require("luasnip")
-- local lspkind = require("lspkind")
-- local function enter_file()
-- 	local filetype = vim.bo.filetype
-- 	if cmp.visible() then
-- 		return cmp.confirm()
-- 	elseif filetype == "markdown" then
-- 		return "<CR><cmd>AutolistNewBullet<cr>"
-- 	else
-- 		return "<CR>"
-- 	end
-- end
--
-- local function tab_file()
-- 	local filetype = vim.bo.filetype
-- 	if cmp.visible() then
-- 		return cmp.select_next_item()
-- 	-- elseif luasnip.expand_or_jumpable() then
-- 	-- 	luasnip.expand_or_jump()
-- 	elseif filetype == "markdown" then
-- 		return "<cmd>AutolistTab<cr>"
-- 	else
-- 		return "<tab>"
-- 	end
-- end
--
-- local function s_tab_file()
-- 	local filetype = vim.bo.filetype
-- 	if cmp.visible() then
-- 		return cmp.select_prev_item()
-- 	-- elseif luasnip.jumpable(-1) then
-- 	-- 	luasnip.jump(-1)
-- 	elseif filetype == "markdown" then
-- 		return "<cmd>AutolistShiftTab<cr>"
-- 	else
-- 		return "<s-tab>"
-- 	end
-- end
--
-- vim.keymap.set(
-- 	"i",
-- 	"<CR>",
-- 	enter_file,
-- 	{ expr = true, noremap = true, silent = true },
-- 	{ desc = "map <CR> according to condition" }
-- )
-- vim.keymap.set(
-- 	"i",
-- 	"<tab>",
-- 	tab_file,
-- 	{ expr = true, noremap = true, silent = true },
-- 	{ desc = "map <CR> according to condition" }
-- )
-- vim.keymap.set(
-- 	"i",
-- 	"<s-tab>",
-- 	s_tab_file,
-- 	{ expr = true, noremap = true, silent = true },
-- 	{ desc = "map <CR> according to condition" }
-- )
