---------------------------------------------------------------------------------------------------
-- TITLE: lualine.nvim
-- ABOUT: A blazing fast and easy to configure Neovim status line written in lua
-- LINK: 
-- > github: https://github.com/nvim-lualine/lualine.nvim
---------------------------------------------------------------------------------------------------
return {
    'nvim-lualine/lualine.nvim',
    config = function()
      require("lualine").setup({
        options = {
            theme = "melange",
            icons_enabled = true,
            section_separators = { left = "", right = "" },
            component_separators =  { left = "", right = "" },
          },
        })
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
}
