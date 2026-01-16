---------------------------------------------------------------------------------------------------
-- TITLE:
-- ABOUT:
-- LINKS:
-- > github: https://github.com/nvim-treesitter/nvim-treesitter
---------------------------------------------------------------------------------------------------
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {"BufReadPost", "BufNewFile"},
    branch = 'master', -- TODO: migrate to the main branch
    lazy = false,
    config = function()
      require("nvim-treesitter.configs").setup({
          -- Language parsers that MUST be installed
          ensure_installed = {
              "lua",
              "python",
              "bash",
              "typescript",
              "javascript",
              "html",
              "css",
              "json",
              "yaml",
              "go",
              "markdown",
              "dockerfile",
              "markdown_inline",
              "c",
              "cpp",
              "vue",
              "svelte",
              "rust",
              "vim",
              "vimdoc",
            },
          auto_install = true, -- auto-install any other parsers on opening new file
          sync_install = false,
          highlight = {
              enable = true,
              additional_vim_regex_highlighting = false,
            },
          indent = {enable = true},
          incremental_selection = {
              enable = true,
              keymaps = {
                  init_selection = "<CR>",
                  node_incremental = "<CR>",
                  scope_incremental = "<TAB>",
                  node_decremental = "<S-TAB>",
                },
            },
        })
      end,
  }
