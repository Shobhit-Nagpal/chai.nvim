local is_vim = vim.fn.has "nvim" ~= 1
if is_vim then require "chai.lib.vim" end

---@type Chai
local M = {}
