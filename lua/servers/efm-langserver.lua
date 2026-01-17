return function(lspconfig, capabilities, on_attach)
	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")

	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")

	local eslint_d = require("efmls-configs.linters.eslint_d")
	local prettier = require("efmls-configs.formatters.prettier")

	local go_revive = require("efmls-configs.linters.go_revive")
	local gofmt = require("efmls-configs.formatters.gofmt")

	local shellcheck = require("efmls-configs.linters.shellcheck")
	local shfmt = require("efmls-configs.formatters.shfmt")

	local hadolint = require("efmls-configs.linters.hadolint")

	local cpplint = require("efmls-configs.linters.cpplint")
	local clang_format = require("efmls-configs.formatters.clang_format")

	local fixjson = require("efmls-configs.formatters.fixjson")

	-- local rust_analyzer = require("efmls-configs.linters.rust_analyzer") -- TODO: change to rustaceanvim

	lspconfig("efm", {
		on_attach = on_attach,
		capabilities = capabilities,
		filetypes = {
			"c",
			"cpp",
			-- "css",
			"docker",
			"go",
			"html",
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"lua",
			"markdown",
			"python",
			"rust",
			"typescript",
			"typescriptreact",
			-- "solidity",
			-- "svelte",
			-- "vue",
			-- "yaml",
			"bash",
			"sh",
			"zsh",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				c = { cpplint, clang_format },
				cpp = { cpplint, clang_format },
				-- rust = { }, --TODO
				-- solidity = { prettier },
				-- svelte = { eslint_d, prettier },
				-- vue = { eslint_d, prettier },
				-- css = { prettier },
				docker = { hadolint, prettier },
				go = { go_revive, gofmt },
				html = { prettier },
				javascript = { eslint_d, prettier },
				javascriptreact = { eslint_d, prettier },
				json = { fixjson, eslint_d },
				jsonc = { fixjson, eslint_d },
				lua = { luacheck, stylua },
				markdown = { prettier },
				python = { flake8, black },
				typescript = { eslint_d, prettier },
				typescriptreact = { eslint_d, prettier },
				bash = { shellcheck, shfmt },
				sh = { shellcheck, shfmt },
				zsh = { shellcheck, shfmt },
			},
		},
	})
end
