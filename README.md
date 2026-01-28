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

## Installation

After installing Neovim and the above dependencies, I highly recomend backing up your previous
configuration, in case you want to go back. To do so, run:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
```

Then, clone the repository. Run:

```zsh
git clone https://github.com/Mrzbaf/nvim-fb.git --depth 1
```

Or If you have the SSH key (in which case you are me, Francisco), run:

```zsh
git clone git@github.com:Mrzbaf/nvim-fb.git --depth 1
```

The shallow clone option `zsh --depth 1` will clone only the most recent commit, reducing
download time and resources usage. It is optional.

Adapt the backup and installation commands accordingly to your operating system. Finally, launch
Neovim:

```bash
nvim
```

The package manager will take care of the rest.

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
