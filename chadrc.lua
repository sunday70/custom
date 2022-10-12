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

M.plugins = {
  user = {
    ["neovim/nvim-lspconfig"] = {
    config = function()
      require "custom.love"
    end,
    },
--    
    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.null"
      end,
    }
  }
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
