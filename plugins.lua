-------------------------------------------------------------------------------
--
--       filename: plugins.lua
--    description: personal plugins
--        created: 2023/06/24
--         author: ticktechman
--
-------------------------------------------------------------------------------

local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  { "majutsushi/tagbar",              lazy = false },
  { "godlygeek/tabular",              lazy = false },
  { "ntpeters/vim-better-whitespace", lazy = false },
  { "vim-scripts/a.vim",              lazy = false },
  {
    "NvChad/nvterm",
    opts = {
      terminals = {
        type_opts = {
          float = {
            row = 0.15,
            col = 0.1,
            width = 0.8,
            height = 0.7,
          },
        },
      },
    },
  },

  -- nvim-java 插件
  -- {
  --   "nvim-java/nvim-java",
  --   dependencies = {
  --     "nvim-java/lua-async-await",
  --     "nvim-java/nvim-java-core",
  --     "nvim-java/nvim-java-test",
  --     "nvim-java/nvim-java-dap",
  --     "MunifTanjim/nui.nvim",
  --     "neovim/nvim-lspconfig",
  --     "mfussenegger/nvim-dap",
  --     {
  --       "williamboman/mason.nvim",
  --       opts = {
  --         registries = {
  --           "github:nvim-java/mason-registry",
  --           "github:mason-org/mason-registry",
  --         },
  --       },
  --     },
  --   },
  -- },

  -- markdown-preview
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    -- build = "cd app && yarn install",
    build = ":call mkdp#util#install()",
  },

  -- textDocument/hover
  {
    "tamago324/lsp-preview-hover-doc.nvim",
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
-------------------------------------------------------------------------------
