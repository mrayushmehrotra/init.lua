return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function()
			local transparent = false -- set to true if you would like to enable transparency

			-- local bg = "#011628"
			-- local bg_dark = "#011423"
			-- local bg_highlight = "#143652"
			-- local bg_search = "#0A64AC"
			-- local bg_visual = "#275378"
			-- local fg = "#CBE0F0"
			-- local fg_dark = "#B4D0E9"
			-- local fg_gutter = "#627E97"
			-- local border = "#547998"

			require("tokyonight").setup({
				style = "night",
				transparent = transparent,
				styles = {
					sidebars = transparent and "transparent" or "dark",
					floats = transparent and "transparent" or "dark",
				},

				-- on_colors = function(colors)
				-- 	colors.bg = bg
				-- 	colors.bg_dark = transparent and colors.none or bg_dark
				-- 	colors.bg_float = transparent and colors.none or bg_dark
				-- 	colors.bg_highlight = bg_highlight
				-- 	colors.bg_popup = bg_dark
				-- 	colors.bg_search = bg_search
				-- 	colors.bg_sidebar = transparent and colors.none or bg_dark
				-- 	colors.bg_statusline = transparent and colors.none or bg_dark
				-- 	colors.bg_visual = bg_visual
				-- 	colors.border = border
				-- 	colors.fg = fg
				-- 	colors.fg_dark = fg_dark
				-- 	colors.fg_float = fg
				-- 	colors.fg_gutter = fg_gutter
				-- 	colors.fg_sidebar = fg_dark
				-- end,
			})
			-- Set green background for selected item
			vim.cmd([[highlight! PmenuSel guibg=#FCA5A5 guifg=#000000]])
		end,
	},

	{
		"ellisonleao/gruvbox.nvim",
		name = "gruvbox",
		config = function()
			local base_30 = {
				white = "#f5f4f1",
				darker_black = "#22231D",
				black = "#272822",
				black2 = "#2F302A",
				one_bg = "#363731",
				one_bg2 = "#3E3F39",
				one_bg3 = "#464741",
				grey = "#4D4E48",
				grey_fg = "#555650",
				grey_fg2 = "#5D5E58",
				light_grey = "#64655F",
				red = "#e36d76",
				baby_pink = "#f98385",
				pink = "#f36d76",
				line = "#363942",
				green = "#96c367",
				vibrant_green = "#99c366",
				nord_blue = "#81A1C1",
				blue = "#51afef",
				yellow = "#e6c181",
				sun = "#fce668",
				purple = "#c885d7",
				dark_purple = "#b26fc1",
				teal = "#34bfd0",
				orange = "#d39467",
				cyan = "#41afef",
				statusline_bg = "#2F302A",
				lightbg = "#3E3F39",
				pmenu_bg = "#99c366",
				folder_bg = "#61afef",
			}

			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = false,

				bold = true,
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines, and errors
				contrast = "", -- can be "hard", "soft" or empty string
				palette_overrides = {
					bg = base_30.black,
					bg0 = base_30.darker_black,
					bg1 = base_30.one_bg,
					bg2 = base_30.one_bg2,
					bg3 = base_30.one_bg3,
					fg = base_30.white,
					red = base_30.red,
					orange = base_30.orange,
					yellow = base_30.yellow,
					green = base_30.green,
					teal = base_30.teal,
					cyan = base_30.cyan,
					blue = base_30.blue,
					purple = base_30.purple,
					magenta = base_30.pink,
					grey = base_30.grey,
					light_grey = base_30.light_grey,
				},
				overrides = {
					Normal = { bg = base_30.black, fg = base_30.white },
					Comment = { fg = base_30.grey_fg, italic = true },
					LineNr = { fg = base_30.grey_fg },
					CursorLineNr = { fg = base_30.yellow },
					Pmenu = { bg = base_30.one_bg, fg = base_30.white },
					PmenuSel = { bg = base_30.pmenu_bg, fg = base_30.black },
					VertSplit = { fg = base_30.one_bg2 },
					StatusLine = { bg = base_30.statusline_bg, fg = base_30.white },
					Visual = { bg = base_30.line },
					Directory = { fg = base_30.folder_bg },
				},
				dim_inactive = false,
				transparent_mode = false,
			})

			-- Set green background for selected item
			vim.cmd([[highlight! PmenuSel guibg=#99C366 guifg=#000000]])
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				enable = {
					terminal = true,
					legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					bold = true,
					italic = true,
					transparency = false,
				},

				groups = {
					border = "muted",
					link = "iris",
					panel = "surface",

					error = "love",
					hint = "iris",
					info = "foam",
					note = "pine",
					todo = "rose",
					warn = "gold",

					git_add = "foam",
					git_change = "rose",
					git_delete = "love",
					git_dirty = "rose",
					git_ignore = "muted",
					git_merge = "iris",
					git_rename = "pine",
					git_stage = "iris",
					git_text = "rose",
					git_untracked = "subtle",

					h1 = "iris",
					h2 = "foam",
					h3 = "rose",
					h4 = "gold",
					h5 = "pine",
					h6 = "foam",
				},

				palette = {
					-- Override the builtin palette per variant
					-- moon = {
					--     base = '#18191a',
					--     overlay = '#363738',
					-- },
				},

				highlight_groups = {
					Comment = { fg = "foam" },
					VertSplit = { fg = "muted", bg = "muted" },
				},

				before_highlight = function(group, highlight, palette)
					-- Disable all undercurls
					if highlight.undercurl then
						highlight.undercurl = false
					end
					--
					-- Change palette colour
					if highlight.fg == palette.pine then
						highlight.fg = palette.foam
					end
				end,
			})
		end,
	},

	{
		"AstroNvim/astrotheme",
		name = "AstroTheme",
		config = function()
			require("astrotheme").setup({
				disable_background = true,
				styles = {
					italic = false,
				},
				on_colors = function(colors)
					colors.bg_highlight = "#143652"
					colors.bg_statusline = "#011423"
				end,
			})

			vim.cmd("colorscheme astrodark")
			vim.cmd([[highlight! PmenuSel guibg=#FCA5A5 guifg=#000000]])
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
