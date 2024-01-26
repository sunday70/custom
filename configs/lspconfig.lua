local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  -- java, python, go, c# ("jdtls", "jedi_language_server", "gopls", "omnisharp",)

  -- sql, markdown, json, xml, yml ("sqlls",)
  "marksman",
  "jsonls",
  "lemminx",
  "yamlls",

  -- html, css, js, vue
  "html",
  "cssls",
  "vtsls",
  -- "tsserver",
  -- "volar",

  -- c, shell, toml
  "clangd",
  "bashls",
  "taplo",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.pyright.setup { blabla}
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "literal",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = false,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
  },
}

lspconfig.volar.setup {
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
}

-- if client.supports_method "textDocument/hover" then
--   -- TODO: Remove mapping after dropping support for Neovim v0.9, it's automatic
--   if vim.fn.has "nvim-0.10" == 0 then
--     lsp_mappings.n["K"] = {
--       function()
--         vim.lsp.buf.hover()
--       end,
--       desc = "Hover symbol details",
--     }
--   end
-- end
