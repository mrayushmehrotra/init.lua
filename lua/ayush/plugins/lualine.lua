return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- Define custom colors
		local colors = {
			bg = "#202328",
			fg = "#bbc2cf",
			blue = "#BC9CA0",
			green = "#9CD4D4",
			violet = "#a9a1e1",
			red = "#ec5f67",
			yellow = "#ECBE7B",
		}

		-- Custom theme
		local custom_theme = {
			normal = {
				a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
				b = { fg = colors.fg, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
			insert = {
				a = { fg = colors.bg, bg = colors.green, gui = "bold" }, -- Set your desired insert mode color here
				b = { fg = colors.fg, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
			visual = {
				a = { fg = colors.bg, bg = colors.violet, gui = "bold" },
				b = { fg = colors.fg, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
			replace = {
				a = { fg = colors.bg, bg = colors.red, gui = "bold" },
				b = { fg = colors.fg, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
			command = {
				a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
				b = { fg = colors.fg, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
			inactive = {
				a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
				b = { fg = colors.fg, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
		}

		require("lualine").setup({
			options = {
				theme = custom_theme,
				icons_enabled = true,
				section_separators = { left = "█", right = "█" },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", { "diagnostics", sources = { "nvim_diagnostic" } } },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			extensions = { "nvim-tree", "toggleterm", "quickfix" },
		})
	end,
}

-- {
-- 	"nvim-lualine/lualine.nvim",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		local lualine = require("lualine")
--
--
-- 		-- stylua: ignore
-- 		local colors = {
-- 			blue   = '#80a0ff',
-- 			cyan   = '#79dac8',
-- 			black  = '#080808',
-- 			white  = '#c6c6c6',
-- 			red    = '#ff5189',
-- 			violet = '#d183e8',
-- 			grey   = '#303030',
-- 		}
--
-- 		local bubbles_theme = {
-- 			normal = {
-- 				a = { fg = colors.black, bg = colors.violet },
-- 				b = { fg = colors.white, bg = colors.grey },
-- 				c = { fg = colors.white },
-- 			},
--
-- 			insert = { a = { fg = colors.black, bg = colors.blue } },
-- 			visual = { a = { fg = colors.black, bg = colors.cyan } },
-- 			replace = { a = { fg = colors.black, bg = colors.red } },
--
-- 			inactive = {
-- 				a = { fg = colors.white, bg = colors.black },
-- 				b = { fg = colors.white, bg = colors.black },
-- 				c = { fg = colors.white },
-- 			},
-- 		}
--
-- 		require("lualine").setup({
-- 			options = {
-- 				theme = bubbles_theme,
-- 				component_separators = "",
-- 				section_separators = { left = "", right = "" },
-- 			},
-- 			sections = {
-- 				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
-- 				lualine_b = { "filename", "branch" },
-- 				lualine_c = {
-- 					"%=", -- Centered component separator
-- 					{
-- 						"diagnostics",
-- 						sources = { "nvim_diagnostic" },
-- 						symbols = { error = " ", warn = " ", info = " " },
-- 						diagnostics_color = {
-- 							error = { fg = colors.red },
-- 							warn = { fg = colors.violet },
-- 							info = { fg = colors.cyan },
-- 						},
-- 					},
-- 				},
-- 				lualine_x = {},
-- 				lualine_y = { "filetype", "progress" },
-- 				lualine_z = {
-- 					{ "location", separator = { right = "" }, left_padding = 2 },
-- 				},
-- 			},
-- 			inactive_sections = {
-- 				lualine_a = { "filename" },
-- 				lualine_b = {},
-- 				lualine_c = {},
-- 				lualine_x = {},
-- 				lualine_y = {},
-- 				lualine_z = { "location" },
-- 			},
-- 			tabline = {},
-- 			extensions = {},
-- 		})
-- 	end,
-- }
