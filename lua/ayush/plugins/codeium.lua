return {
	"Exafunction/codeium.vim",
	config = function()
		-- Variable to track the Codeium state
		vim.g.codeium_enabled = true
		-- Keybindings for Codeium
		vim.keymap.set("i", "<C-g>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<C-;>", function()
			return vim.fn
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<C-,>", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true, silent = true })

		-- Toggle Codeium on/off with <C-x>
		vim.keymap.set("i", "<C-x>", function()
			if vim.g.codeium_enabled then
				vim.fn["codeium#Clear"]() -- Clear suggestions
				vim.g.codeium_enabled = false -- Disable Codeium
				print("Codeium Disabled") -- Notify user
			else
				vim.g.codeium_enabled = true -- Enable Codeium
				print("Codeium Enabled") -- Notify user
			end
			return ""
		end, { expr = true, silent = true })
	end,
}
