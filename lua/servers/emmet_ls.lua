return function(capabilities)
	vim.lsp.config("emmet_ls", {
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
