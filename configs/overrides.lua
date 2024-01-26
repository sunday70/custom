local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- -- shell stuff
    "bash-language-server",
    "shellcheck",

    -- -- lua stuff
    "lua-language-server",
    "stylua",

    -- -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "quick-lint-js",
    "vue-language-server",
    "deno",
    "prettier",

    -- -- c/cpp stuff
    "clangd",
    "clang-format",

    -- java
    -- "google-java-format",
    -- "java-debug-adapter",
    -- "java-test",
    -- "openjdk-17",
    -- "jdtls",

    -- me
    "vtsls",
    "actionlint",
    "eslint-lsp",
    "golangci-lint",
    "json-lsp",
    "julia-lsp",
    "latexindent",
    "lemminx",
    "marksman",
    "shfmt",
    "taplo",
    "texlab",
    "yaml-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
