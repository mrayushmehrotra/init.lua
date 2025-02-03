return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = {
			blue = "#7eb2dd",
			green = "#8bb57b",
			yellow = "#e6c181",
			red = "#e27878",
			purple = "#b4a4f9",
			cyan = "#6ca7bd",
			gray = "#4c4c4c",
			white = "#dcdfe4",
			black = "#161821",
			bg = "#1e2132",
			fg = "#dcdfe4",
		}

		local iceberg_dark = {
			normal = {
				a = { fg = colors.bg, bg = colors.blue, gui = "bold" },
				b = { fg = colors.white, bg = colors.gray },
				c = { fg = colors.fg, bg = colors.bg },
			},
			insert = {
				a = { fg = colors.bg, bg = colors.green, gui = "bold" },
				b = { fg = colors.white, bg = colors.gray },
				c = { fg = colors.fg, bg = colors.bg },
			},
			visual = {
				a = { fg = colors.bg, bg = colors.purple, gui = "bold" },
				b = { fg = colors.white, bg = colors.gray },
				c = { fg = colors.fg, bg = colors.bg },
			},
			replace = {
				a = { fg = colors.bg, bg = colors.red, gui = "bold" },
				b = { fg = colors.white, bg = colors.gray },
				c = { fg = colors.fg, bg = colors.bg },
			},
			command = {
				a = { fg = colors.bg, bg = colors.yellow, gui = "bold" },
				b = { fg = colors.white, bg = colors.gray },
				c = { fg = colors.fg, bg = colors.bg },
			},
			inactive = {
				a = { fg = colors.white, bg = colors.bg, gui = "bold" },
				b = { fg = colors.gray, bg = colors.bg },
				c = { fg = colors.fg, bg = colors.bg },
			},
		}

		require("lualine").setup({
			options = {
				theme = iceberg_dark,
				icons_enabled = true,
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
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
