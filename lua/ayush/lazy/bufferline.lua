return {
    "akinsho/bufferline.nvim",

    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            mode = "tabs",
            separator_style = "slope",
        },
    },
    config = function()
        local buffrline = require("bufferline")
        buffrline.setup()
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end
    end
}
