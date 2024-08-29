return {
	"nvim-telescope/telescope.nvim",
	"folke/trouble.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local transform_mod = require("telescope.actions.mt").transform_mod
		local trouble_telescope = require("trouble.providers.telescope")
		local keymap = vim.keymap -- for conciseness
		-- Custom action for opening trouble quickfix list
		local custom_actions = transform_mod({
			open_trouble_qflist = function(prompt_bufnr)
				require("trouble").toggle("quickfix")
			end,
		})

		-- Setup Telescope with custom mappings
		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
						["<C-t>"] = trouble_telescope.smart_open_with_trouble,
					},
				},
			},
		})

		-- Load the fzf extension
		telescope.load_extension("fzf")

		-- Set keymaps for Telescope
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
	end,
}
