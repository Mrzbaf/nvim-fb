local M = {}

M.on_attach = function(event)
  local client = vim.lsp.get_client_by_id(event.data.client_id)
  if not client then
    return
  end
  local bufnr = event.buf
	local keymap = vim.keymap.set
	local opts = {
		noremap = true, -- prevent non-recursive mapping
		silent = true, -- don't print the command to the cli
		buffer = bufnr, -- restrit the keymap to the local buffer number
	}

	-- native neovim keymaps
	keymap("n", "<leader>gD", "<cmd>lua vim.lsp.buf.definition()<CR>", vim.tbl_extend("force", opts, { desc = "go to definition" })) -- goto definition
	keymap("n", "<leader>gS", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", vim.tbl_extend("force", opts, { desc = "go to definition in split" })) -- goto definition in split
	keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", vim.tbl_extend("force", opts, { desc = "code actions" })) -- Code actions
	keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", vim.tbl_extend("force", opts, { desc = "rename symbol" })) -- Rename symbol
	keymap("n", "<leader>D", "<cmd>lua vim.diagnostic.open_float({ scope = 'line' })<CR>", vim.tbl_extend("force", opts, { desc = "line diagnostic (float)" })) -- Line diagnostic (float)
	keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", vim.tbl_extend("force", opts, { desc = "cursor diagnostic" })) -- Cursor diagnostic
	keymap("n", "<leader>pd", "<cmd>lua vim.diagnostic.jump({count = -1, float = true})<CR>", vim.tbl_extend("force", opts, { desc = "previous diagnostic" })) -- previous diagnostic
	keymap("n", "<leader>nd", "<cmd>lua vim.diagnostic.jump({count = 1, float = true})<CR>", vim.tbl_extend("force", opts, { desc = "next diagnostic" })) -- next diagnostic
	keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", vim.tbl_extend("force", opts, { desc = "hover documentation" })) -- hover documentation

	-- fzf-lua keymaps
	keymap("n", "<leader>gd", "<cmd>FzfLua lsp_finder<CR>", vim.tbl_extend("force", opts, { desc = "LSP finder (def + refs)" })) -- LSP Finder (definition + references)
	keymap("n", "<leader>gr", "<cmd>FzfLua lsp_refernces<CR>", vim.tbl_extend("force", opts, { desc = "Show all refs to symbol" })) --  Show all refernces to the symbol under the cursor
	keymap("n", "<leader>gt", "<cmd>FzfLua lsp_typedefs<CR>", vim.tbl_extend("force", opts, { desc = "jump to type def" })) -- Jump to the type definition of the symbol under the cursor
	keymap("n", "<leader>ds", "<cmd>FzfLua lsp_document_symbols<CR>", vim.tbl_extend("force", opts, { desc = "list symbols in file" })) -- List all symbols (functions, classes, etc.) in the current file
	keymap("n", "<leader>ws", "<cmd>FzfLua lsp_workspace_symbols<CR>", vim.tbl_extend("force", opts, { desc = "search project symbols" })) -- Search for any symbol across the entire project/workspace
	keymap("n", "<leader>gi", "<cmd>FzfLua lsp_implementations<CR>", vim.tbl_extend("force", opts, { desc = "go to implementation" })) -- Go to implementation

	-- Order Imports (if supported by the client LSP)
	if client:supports_method("textDocument/codeAction", bufnr) then
		keymap("n", "<leader>oi", function()
			vim.lsp.buf.code_action({
				context = {
					only = { "source.organizeImports" },
					diagnostics = {},
				},
				apply = true,
				bufnr = bufnr,
			})
			-- format after changing import order
			vim.defer_fn(function()
				vim.lsp.buf.format({ bufnr = bufnr })
			end, 50) -- slight delay to allow for the import to go first
		end, opts)
	end

	-- DAP keymaps --
	if client.name == "rust-analyzer" then -- debugging only configured for rust
		local dap = require("dap")
		keymap("n", "<leader>dc", dap.continue, vim.tbl_extend("force", opts, { desc = "continue/start" })) -- Continue / Start
		keymap("n", "<leader>do", dap.step_over, vim.tbl_extend("force", opts, { desc = "step over" })) -- Step over
		keymap("n", "<leader>di", dap.step_into, vim.tbl_extend("force", opts, { desc = "step into" })) -- Step into
		keymap("n", "<leader>du", dap.step_out, vim.tbl_extend("force", opts, { desc = "step out" })) -- Step out
		keymap("n", "<leader>db", dap.toggle_breakpoint, vim.tbl_extend("force", opts, { desc = "toggle breakpoint" })) -- Toggle breakpoint
		keymap("n", "<leader>dr", dap.repl.open, vim.tbl_extend("force", opts, { desc = "open DAP REPL" })) -- Open DAP REPL
	end
end

return M
