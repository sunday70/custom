local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  -- java, python, go, c# ("jdtls", "jedi_language_server", "gopls", "omnisharp",)

  -- sql, markdown, json, xml, yml ("sqlls",)
  "marksman", "jsonls", "lemminx", "yamlls",

  -- html, css, js, vue
  "html", "cssls", "quick_lint_js", "tsserver", "volar",

  -- c, shell, toml
  "clangd", "bashls", "taplo"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
