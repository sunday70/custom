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
    -- -- lua stuff
    -- "lua-language-server",
    -- "stylua",

    -- -- web dev stuff
    -- "css-lsp",
    -- "html-lsp",
    -- "typescript-language-server",
    -- "deno",
    -- "prettier",

    -- -- c/cpp stuff
    -- "clangd",
    -- "clang-format",

    -- me
    "actionlint",
    "bash-language-server",
    "clang-format",
    "clangd",
    "css-lsp",
    "deno",
    "eslint-lsp",
    "golangci-lint",
    "google-java-format",
    "html-lsp",
    "java-debug-adapter",
    "java-test",
    "jdtls",
    "json-lsp",
    "julia-lsp",
    "latexindent",
    "lemminx",
    "lua-language-server",
    "marksman",
    "openjdk-17",
    "prettier",
    "quick-lint-js",
    "shellcheck",
    "shfmt",
    "stylua",
    "taplo",
    "texlab",
    "typescript-language-server",
    "vue-language-server",
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
