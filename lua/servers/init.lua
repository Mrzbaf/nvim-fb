local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- local lspconfig = require("lspconfig") -- DEPRECATED

require("servers.lua_ls")(capabilities)
require("servers.ts_ls")(capabilities)
require("servers.pyright")(capabilities)
require("servers.gopls")(capabilities)
require("servers.bashls")(capabilities)
require("servers.dockerls")(capabilities)
require("servers.clangd")(capabilities)
require("servers.emmet_ls")(capabilities)
require("servers.jsonls")(capabilities)

require("servers.efm-langserver")(capabilities)

vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"lua_ls",
	"pyright",
	"gopls",
	"bashls",
	"dockerls",
	"clangd",
	"emmet_ls",
	"jsonls",
	"efm",
})
