require("ayush.core.options")
require("ayush.core.keymaps")
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Text Yanked (copying)",
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
