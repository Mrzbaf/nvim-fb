return function(lspconfig, capabilities, on_attach)
	lspconfig("rustls", {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = {
			"rustup",
			"run",
			"stable",
			"rust-analyzer",
		},
		filetypes = { "rust" },
	})
end
