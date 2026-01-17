return function(lspconfig, capabilities, on_attach)
	lspconfig("bashls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "sh", "zsh", "bash" },
	})
end
