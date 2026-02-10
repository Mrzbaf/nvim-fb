return function(capabilities)
	vim.lsp.config("pyright", {
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
