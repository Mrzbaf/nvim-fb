---------------------------------------------------------------------------------------------------
-- TITLE: dashboard-nvim
-- ABOUT: Fancy and blazing fast start screen plugin for Neovim
-- LINKS:
--  > github: https://github.com/nvimdev/dashboard-nvim
---------------------------------------------------------------------------------------------------
return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			-- TODO: Fully configure the dashboard
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				-- disable_move = true, -- disable move key
				hide = {
					statusline = false, -- Don't hide the status line
					tabline = true, -- Hide the tabline
					winbar = true, -- Hide the winbar
				},
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "label",
						action = "FzfLua files",
						key = "f",
					},
				},
				packages = { enable = true },
				project = { enable = false, limit = 5 },
				mru = { enable = true, limit = 13 },
				footer = { "", "Francisco Borges, PhD" },
			},
		})
		vim.opt.shortmess:append("I") -- Disable Neovim welcome message
		-- vim.b.minitrailspace_disable = true -- Disable trailspace for current buffer
		-- vim.b.miniindentscope_disable = true -- Disable trailspace for current buffer
	end,
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
