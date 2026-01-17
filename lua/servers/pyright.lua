return function(lspconfig, capabilities, on_attach)
	lspconfig("pyright", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "python" },
		settings = {
			disableOrganizeImports = false,
			analysis = {
				autoSearchPackages = true,
				diagnosticMode = "workspace",
				useLibraryCodeForTypes = true,
				autoImportCompletion = true,
			},
		},
	})
end
