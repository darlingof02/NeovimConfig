-- map <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
-- use S to save, Q to quit, and U to redo
keymap.set("n", "S", ":w<CR>")
keymap.set("n", "Q", ":q<CR>")
keymap.set("n", "U", "<C-r>")

-- clear search highlights
keymap.set("n", "<leader><CR>", ":nohl<CR>", { desc = "Clear search highlighs" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<leader>h", "<C-w>h", { desc = "move to left split" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "move to up split" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "move to right split" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "move to right split" })

-- use r to execute files
local function execute_file()
	local filetype = vim.bo.filetype
	if filetype == "markdown" then
		vim.cmd("MarkdownPreview")
		-- elseif filetype == "python" then
		-- run_python_file()
		-- Add more file types and their respective commands here
	else
		vim.api.nvim_feedkeys("r", "n", true) -- Fallback to default 'r' behavior
	end
end

keymap.set("n", "r", execute_file, { expr = true, noremap = true, silent = true })
