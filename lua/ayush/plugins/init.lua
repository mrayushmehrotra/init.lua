-- Define whether you have a Nerd Font or not
vim.g.have_nerd_font = vim.g.have_nerd_font or true -- Set this to 'false' if you don't have a Nerd Font

-- Return the configuration table
return {
	-- List of plugins
	plugins = {
		"nvim-lua/plenary.nvim", -- lua functions that many plugins use
		"nvim-telescope/telescope-ui-select.nvim",
		"christoomey/vim-tmux-navigator", -- tmux & split window navigation
		"tpope/vim-sleuth",
		"j-hui/fidget.nvim",
		{
			"stevearc/dressing.nvim",
			event = "VeryLazy",
		},
	},

	-- UI configuration for LazyVim
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
}
