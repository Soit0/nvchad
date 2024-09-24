local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"
require("nvchad.configs.lspconfig").defaults()

-- if you just want default config for the servers then put them in a table
local servers = { "ts_ls", "clangd", "jsonls", "html", "lua_ls", "csharp_ls", "tailwindcss" }

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}
end

-- lspconfig.tsserver.setup{
--   filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { "typescript-language-server", "--stdio" }
-- }

lspconfig.cssls.setup {
	filetypes = { "html", "css", "scss", "less", "sass", "ts", "tsx" },
	on_attach = on_attach,
	capabilities = capabilities,
}
