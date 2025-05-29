local M = {}

M.hl = function(group, val)
  vim.api.nvim_set_hl(0, group, val)
end

return M
