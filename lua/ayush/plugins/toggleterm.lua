return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			open_mapping = [[<c-t>]], -- Bind Ctrl+t to toggle the terminal
			size = 20, -- Set the terminal height for horizontal and width for vertical
			direction = "horizontal", -- Terminal opens in horizontal mode
			start_in_insert = true, -- Start in insert mode
			persist_size = true, -- Remember the terminal size
			close_on_exit = true, -- Close the terminal when the process exits
			shading_factor = 2, -- Dim the terminal background slightly
		},
	},
}
