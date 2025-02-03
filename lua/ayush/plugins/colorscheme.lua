function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	-- Brightburn Theme
	{
		"erikbackman/brightburn.vim",
	},

	-- TokyoNight Theme
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			local transparent = false
			require("tokyonight").setup({
				style = "night",
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},
			})
			vim.cmd([[highlight! PmenuSel guibg=#FCA5A5 guifg=#000000]])
		end,
	},

	-- Gruvbox Theme
	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				bold = true,
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				strikethrough = true,
				inverse = true,
				transparent_mode = false,
			})
			vim.cmd([[highlight! PmenuSel guibg=#99C366 guifg=#000000]])
		end,
	},

	-- Rose Pine Theme
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto",
				dark_variant = "main",
				dim_inactive_windows = false,
				styles = {
					bold = true,
					italic = false,
					transparency = false,
				},
			})
			ColorMyPencils()
		end,
	},

	-- AstroTheme
	{
		"AstroNvim/astrotheme",
		name = "AstroTheme",
		config = function()
			require("astrotheme").setup({
				disable_background = true,
				on_colors = function(colors)
					colors.bg_highlight = "#143652"
					colors.bg_statusline = "#011423"
				end,
			})
			vim.cmd([[highlight! PmenuSel guibg=#FCA5A5 guifg=#000000]])
		end,
	},

	-- Catppuccin Theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				disable_background = true,
				on_colors = function(colors)
					colors.bg_highlight = "#143652"
					colors.bg = "#1B1B1B"
					colors.bg_statusline = "#011423"
				end,
			})
		end,
	},

	-- Nord Theme
	{
		"shaunsingh/nord.nvim",
		name = "nord",
	},
}
