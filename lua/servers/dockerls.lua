return function(lspconfig, capabilities, on_attach)
	lspconfig("dockerls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "dockerfile" },
	})
end
