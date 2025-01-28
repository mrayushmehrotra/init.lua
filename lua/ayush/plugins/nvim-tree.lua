return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		oil.setup()

		-- Key bindings
		vim.keymap.set("n", "-", oil.toggle_float, { desc = "Filetree in floating mode" })
		vim.keymap.set("n", "<C-a>", "<CMD>Oil<CR>", { desc = "Open filetree" })
		vim.keymap.set("n", "<leader>pv", oil.open, { desc = "Open parent directory" }) -- Open parent directory
		vim.keymap.set("n", "<leader>v", function()
			vim.cmd("vsplit | Oil")
		end, { desc = "Open filetree in vertical split" }) -- Open filetree in vertical split
		vim.keymap.set("n", "<leader>h", function()
			vim.cmd("split | Oil")
		end, { desc = "Open filetree in horizontal split" }) -- Open filetree in horizontal split
	end,
}
