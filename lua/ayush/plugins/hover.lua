return {
	"lewis6991/hover.nvim",
	config = function()
		require("hover").setup({
			init = function()
				-- Require providers
				require("hover.providers.lsp")
				-- Uncomment other providers as needed
				require("hover.providers.gh")
				require("hover.providers.gh_user")
				-- require('hover.providers.jira')
				-- require('hover.providers.dap')
				require("hover.providers.fold_preview")
				require("hover.providers.diagnostic")
				-- require('hover.providers.man')
				-- require('hover.providers.dictionary')
			end,
			preview_opts = {
				border = "single",
			},
			preview_window = false, -- Keep hover content in the hover window
			title = true, -- Show the hover title
			mouse_providers = {
				"LSP", -- Enable mouse support for LSP
			},
			mouse_delay = 1000, -- Mouse hover delay in milliseconds
		})

		-- Setup keymaps
		vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
		vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
		vim.keymap.set("n", "<C-p>", function()
			require("hover").hover_switch("previous")
		end, { desc = "hover.nvim (previous source)" })
		vim.keymap.set("n", "<C-n>", function()
			require("hover").hover_switch("next")
		end, { desc = "hover.nvim (next source)" })

		-- Mouse support
		vim.keymap.set("n", "<MouseMove>", require("hover").hover_mouse, { desc = "hover.nvim (mouse)" })
		vim.o.mousemoveevent = true
	end,
}
