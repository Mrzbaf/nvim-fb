return function(lspconfig, capabilities, on_attach)
	lspconfig("jsonls", {
		capabilities = capabilities,
		on_attach = on_attach,
		filetypes = { "json", "jsonc" },
	})
end
