
This is my personal neovim config, mainly for Python, Rust, and Svelte development.
A lot of this config came from the awesome [kickstart.nvim repo](https://github.com/nvim-lua/kickstart.nvim).

```bash
.
├── init.lua -> Neovim config entry point
├── README.md -> This file
└── lua/
    ├── core/
    │   ├── init.lua -> requires lua/keymaps.lua and lua/options.lua
    │   ├── keymaps.lua -> Basic keymaps
    │   └── options.lua -> Default neovim options
    └── plugins/
        ├── init.lua -> Installs plugin manager and plugins
        └── config/ -> configurations for plugins
            ├── blankline.lua
            ├── bufferline.lua
            ├── cmp.lua
            ├── colors.lua
            ├── conform.lua
            ├── dap.lua
            ├── git.lua
            ├── lsp.lua
            ├── lualine.lua
            ├── markdownpreview.lua
            ├── obsidian.lua
            ├── surround.lua
            ├── telescope.lua
            ├── treesitter.lua
            ├── oil.lua
```
