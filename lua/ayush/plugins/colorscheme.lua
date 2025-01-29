return {
	{
		"erikbackman/brightburn.vim",
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			local transparent = false -- set to true if you would like to enable transparency

			require("tokyonight").setup({
				style = "night",
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},
			})
			-- Set green background for selected item
			vim.cmd([[highlight! PmenuSel guibg=#FCA5A5 guifg=#000000]])
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
			})
		end,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
				on_colors = function(colors)
					colors.bg_highlight = "#143652"
					colors.bg = "#1B1B1B"
					colors.bg_statusline = "#011423"
				end,
			})
		end,
	},
	{
		"shaunsingh/nord.nvim",
		name = "nord",
	},
}
