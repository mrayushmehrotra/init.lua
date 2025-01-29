return {
	"stevearc/oil.nvim",
	lazy = false, -- Ensure the plugin loads immediately
	priority = 2000, -- Load early in the startup process
	config = function()
		local oil = require("oil")
		oil.setup({
			default_file_explorer = false, -- Prevent it from overriding netrw
			skip_confirm_for_simple_edits = true, -- Reduce confirmation prompts
		})

		-- Key bindings
		vim.keymap.set("n", "-", function()
			oil.toggle_float()
		end, { desc = "Filetree in floating mode" })

		vim.keymap.set("n", "<C-a>", function()
			vim.cmd("Oil")
		end, { desc = "Open filetree" })

		vim.keymap.set("n", "<leader>pv", function()
			oil.open()
		end, { desc = "Open parent directory" }) -- Open parent directory

		vim.keymap.set("n", "<leader>v", function()
			vim.cmd("vsplit | Oil")
		end, { desc = "Open filetree in vertical split" }) -- Open filetree in vertical split
	end,
}
