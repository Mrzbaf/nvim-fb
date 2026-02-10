return function(capabilities)
	vim.lsp.config("bashls", {
		capabilities = capabilities,
		filetypes = { "sh", "zsh", "bash" },
	})
end
