local on_attach = require('plugins.configs.lspconfig').on_attach
local capabalities = require('plugins.configs.lspconfig').capabilities

local lspconfig = require "lspconfig" 
local servers = {
  "tsserver",
  "tailwindcss",
  "gopls",
  "golangci_lint_ls",
  "bashls",
  "dockerls",
  "docker_compose_language_service",
  "eslint",
  "marksman",
  "html",
  "cssls",
  "sqlls",
  "lua_ls",
  "pylsp",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
  on_attach = on_attach,
  capabilities = capabalities
}
end
