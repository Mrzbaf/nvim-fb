return function(lspconfig, capabilities, on_attach)
	lspconfig("clangd", {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = {
			"clangd",
			"--offset-encoding=utf-16",
		},
		filetypes = { "c", "cpp" },
	})
end
