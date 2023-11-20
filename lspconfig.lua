local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "volar", "tsserver", "html", "cssls", "jdtls", "jsonls", "sumneko_lua", "marksman", "sqlls", "lemminx", "yamlls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
