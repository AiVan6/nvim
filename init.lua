-- basic settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("core.options")
require("core.keymaps")
require("core.autocmds")

local plug_dir = vim.fn.stdpath("config") .. "/lua/plugins"
local files = vim.fn.globpath(plug_dir, "*.lua", false, true)

table.sort(files)

for _, file in ipairs(files) do
  local name = vim.fn.fnamemodify(file, ":t:r")
  require("plugins." .. name)
end
