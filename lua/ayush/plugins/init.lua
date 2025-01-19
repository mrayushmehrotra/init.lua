-- Define whether you have a Nerd Font or not
vim.g.have_nerd_font = vim.g.have_nerd_font or true -- Set this to 'false' if you don't have a Nerd Font

-- Return the configuration table
return {
	-- List of plugins
	"nvim-lua/plenary.nvim", -- lua functions that many plugins use
	"nvim-telescope/telescope-ui-select.nvim",
	"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	"tpope/vim-sleuth",

	-- UI configuration for LazyVim
	ui = {
		-- If you are using a Nerd Font, set icons to an empty table to use the default LazyVim icons
		-- Otherwise, define your own Unicode icons table
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
