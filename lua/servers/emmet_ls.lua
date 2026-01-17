return function(lspconfig, capabilities, on_attach)
	lspconfig("emmet_ls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"css",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"sass",
			"scss",
		},
	})
end
