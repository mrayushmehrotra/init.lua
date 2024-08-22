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
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
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
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

		-- Set keymaps for todo-comments navigation
		keymap.set("n", "]t", function()
			require("todo-comments").jump_next()
		end, { desc = "Next todo comment" })

		keymap.set("n", "[t", function()
			require("todo-comments").jump_prev()
		end, { desc = "Previous todo comment" })

		-- Set keymap for jumping to next error/warning todo comment
		keymap.set("n", "]e", function()
			require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
		end, { desc = "Next error/warning todo comment" })
	end,
}
