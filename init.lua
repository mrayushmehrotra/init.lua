require("ayush.core")
require("ayush.lazy")
-- FIXME fix this transparent prob
vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]])

vim.api.nvim_set_option("clipboard", "unnamedplus")
