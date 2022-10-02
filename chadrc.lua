-- First read our docs (completely) then check the example_config repo

local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  theme = "nord",
}

M.plugins = {}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
