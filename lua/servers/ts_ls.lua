return function(lspconfig, capabilities, on_attach)
	lspconfig("ts_ls", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
		settings = {
			typescript = {
				indentStyle = "space",
				indentSize = 2,
			},
		},
	})
end
