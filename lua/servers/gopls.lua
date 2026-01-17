return function(lspconfig, capabilities, on_attach)
	lspconfig("gopls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "go", "gomod" },
	})
end
