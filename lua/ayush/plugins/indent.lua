return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
		local highlight = {
			"RainbowRed",
			"RainbowYellow",
			"RainbowBlue",
			"RainbowOrange",
			"RainbowGreen",
			"RainbowViolet",
			"RainbowCyan",
			"RainbowPink",
			"RainbowBrown",
			"RainbowMagenta",
			"RainbowLime",
			"RainbowIndigo",
		}

		local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			vim.api.nvim_set_hl(0, "RainbowPink", { fg = "#FF69B4" })
			vim.api.nvim_set_hl(0, "RainbowBrown", { fg = "#8B4513" })
			vim.api.nvim_set_hl(0, "RainbowMagenta", { fg = "#FF00FF" })
			vim.api.nvim_set_hl(0, "RainbowLime", { fg = "#00FF00" })
			vim.api.nvim_set_hl(0, "RainbowIndigo", { fg = "#4B0082" })
		end)

		require("ibl").setup({ indent = { highlight = highlight } })
	end,
}
