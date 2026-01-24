# My Personal Neovim Configuration

- Package manager: Lazy.nvim
- Theme: melange

## Requirements

- Neovim 0.11.3+
- A NerdFont
- fzf
- git
- luarocks
- npm
- python3
- ripgrep
- windsurf account (previously codeium, optional): AI autocomplete assistant

## My Plugins

- codeium.lua (AI autocomplete assistant, optional)
- colorscheme.lua (for your theme)
- dashboard-nvim.lua
- fzf-lua.lua
- gitsigns-nvim.lua
- lualine.lua
- mini-nvim.lua
- nvim-cmp.lua
- nvim-lspconfig.lua (our Language Server Protocol installation and diagnostics configuration)
- nvim-tree.lua
- treesitter.lua
- vim-fugitive.lua
- vim-tmux-navigator.lua (requires tmux to work)
- webdev-icons.lua
- whichkey.lua

## Servers

Folder to setup the Language Server Protocol configurations for each language you want to use.

## My Utils

Catch-all for helper functions, et cetera.

- diagnostics.lua (diagnostics tool called by the lspconfig)
- lsp.lua (Language Server Protocol setup called by init.lua in the servers folder)

## TODO

- ~~Git integration~~
- Full Dashboard configuration
- Complete README file
- Complete Rust installation using rustaceanvim
- (IMPORTANT) Add descriptions to custom key-binds
- Add languages support:
  - LaTeX
  - Rust
  - R
- Resolve key-bind conflicts with tmux
- Learn how to implement pop-ups
- (TEST) Use in an actual project
