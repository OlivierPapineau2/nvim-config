# Neovim Configuration

A modern Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim) for fast plugin management and enhanced development experience.

## Features

- 🚀 **Fast startup** with lazy.nvim plugin manager
- 🎨 **Beautiful UI** with Catppuccin theme and modern statusline
- 🔍 **Powerful search** with Telescope
- 📁 **File explorer** with NvimTree
- 🧠 **Smart completion** with nvim-cmp and LSP
- 🌳 **Syntax highlighting** with TreeSitter
- 📝 **Code formatting** with LSP
- 💬 **Easy commenting** with Comment.nvim
- 🔧 **LSP support** with Mason and nvim-lspconfig

## Plugin Overview

### Core Plugins

| Plugin                              | Description            |
| ----------------------------------- | ---------------------- |
| **lazy.nvim**                       | Fast plugin manager    |
| **catppuccin/nvim**                 | Beautiful color scheme |
| **nvim-lualine/lualine.nvim**       | Modern statusline      |
| **akinsho/bufferline.nvim**         | Tab/buffer line        |
| **nvim-tree/nvim-tree.lua**         | File explorer          |
| **nvim-telescope/telescope.nvim**   | Fuzzy finder           |
| **nvim-treesitter/nvim-treesitter** | Syntax highlighting    |

### Development Plugins

| Plugin                    | Description              |
| ------------------------- | ------------------------ |
| **neovim/nvim-lspconfig** | LSP configuration        |
| **mason-org/mason.nvim**  | LSP/DAP/Linter installer |
| **hrsh7th/nvim-cmp**      | Completion engine        |
| **windwp/nvim-autopairs** | Auto-pair brackets       |
| **numToStr/Comment.nvim** | Easy commenting          |
| **L3MON4D3/LuaSnip**      | Snippet engine           |

## Installation

1. **Clone this repository:**

   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

2. **Install Neovim dependencies:**

   ```bash
   # macOS
   brew install neovim

   # Ubuntu/Debian
   sudo apt install neovim
   ```

3. **Start Neovim:**

   ```bash
   nvim
   ```

   The first startup will automatically install lazy.nvim and all plugins.

## Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lua/
│   ├── config/             # Plugin configurations
│   │   ├── lazy.lua        # Lazy.nvim setup
│   │   ├── autopairs.lua   # Auto-pairs config
│   │   └── indent.lua      # Indentation config
│   ├── plugins/            # Plugin specifications
│   │   ├── telescope.lua   # Fuzzy finder
│   │   ├── nvim-tree.lua   # File explorer
│   │   ├── lsp.lua         # LSP setup
│   │   ├── cmp.lua         # Completion
│   │   └── ...             # Other plugins
│   └── user/               # Custom user functions
│       └── lsp_format.lua  # LSP formatting
└── README.md               # This file
```

## Keymaps Cheat Sheet

### Leader Key

- **Leader**: `<Space>` (spacebar)

### File Management

| Keymap      | Description                    |
| ----------- | ------------------------------ |
| `<leader>e` | Focus NvimTree file explorer   |
| `<leader>f` | Format current buffer with LSP |

### Telescope (Fuzzy Finder)

| Keymap       | Description                 |
| ------------ | --------------------------- |
| `<leader>ff` | Find files                  |
| `<leader>fg` | Live grep (search in files) |
| `<leader>fb` | Find buffers                |
| `<leader>fh` | Find help tags              |

### Buffer Navigation

| Keymap    | Description     |
| --------- | --------------- |
| `<Tab>`   | Next buffer     |
| `<S-Tab>` | Previous buffer |

### Completion (nvim-cmp)

| Keymap      | Description               |
| ----------- | ------------------------- |
| `<C-Space>` | Trigger completion        |
| `<C-b>`     | Scroll documentation up   |
| `<C-f>`     | Scroll documentation down |
| `<C-e>`     | Abort completion          |
| `<CR>`      | Confirm selection         |

### TreeSitter Text Objects

| Keymap      | Description                |
| ----------- | -------------------------- |
| `<C-Space>` | Init incremental selection |
| `<BS>`      | Decrement selection        |
| `]f`        | Next function start        |
| `[f`        | Previous function start    |
| `]F`        | Next function end          |
| `[F`        | Previous function end      |
| `]c`        | Next class start           |
| `[c`        | Previous class start       |
| `]C`        | Next class end             |
| `[C`        | Previous class end         |
| `]a`        | Next parameter             |
| `[a`        | Previous parameter         |
| `]A`        | Next parameter end         |
| `[A`        | Previous parameter end     |

### Comment.nvim

| Keymap       | Description                     |
| ------------ | ------------------------------- |
| `gcc`        | Toggle line comment             |
| `gc{motion}` | Toggle comment for motion       |
| `gbc`        | Toggle block comment            |
| `gb{motion}` | Toggle block comment for motion |

### LSP (Language Server Protocol)

LSP keymaps are automatically set up when a language server is attached:

| Keymap       | Description         |
| ------------ | ------------------- |
| `gd`         | Go to definition    |
| `gr`         | Go to references    |
| `K`          | Hover documentation |
| `[d`         | Previous diagnostic |
| `]d`         | Next diagnostic     |
| `<leader>ca` | Code actions        |
| `<leader>rn` | Rename symbol       |

### NvimTree (File Explorer)

| Keymap | Description        |
| ------ | ------------------ |
| `a`    | Create file/folder |
| `d`    | Delete             |
| `r`    | Rename             |
| `x`    | Cut                |
| `c`    | Copy               |
| `p`    | Paste              |
| `y`    | Copy name          |
| `Y`    | Copy relative path |
| `gy`   | Copy absolute path |
| `I`    | Toggle git ignore  |
| `H`    | Toggle dotfiles    |
| `R`    | Refresh            |
| `?`    | Toggle help        |

## Language Support

### TreeSitter Parsers

The configuration includes TreeSitter parsers for:

- Bash, C, HTML, JavaScript, JSON, Lua, Markdown
- Python, TypeScript, TSX, Vim, YAML
- And many more...

### LSP Servers

Currently configured for:

- **TypeScript/JavaScript**: `typescript-language-server`

Additional LSP servers can be installed via Mason:

```vim
:Mason
```

## Customization

### Adding New Plugins

1. Create a new file in `lua/plugins/`
2. Return a plugin specification table
3. Restart Neovim or run `:Lazy sync`

### Modifying Keymaps

Edit `init.lua` to add or modify keymaps:

```lua
vim.keymap.set('n', '<leader>your-key', 'your-command', { desc = 'Description' })
```

### Changing Theme

Modify `lua/plugins/colorscheme.lua` to change the Catppuccin flavor:

- `latte` - Light theme
- `frappe` - Light theme with more contrast
- `macchiato` - Dark theme
- `mocha` - Dark theme with more contrast (current)

## Troubleshooting

### Plugin Issues

- Run `:Lazy sync` to reinstall plugins
- Check `:Lazy log` for error messages
- Run `:Lazy clean` to remove unused plugins

### LSP Issues

- Run `:Mason` to install missing language servers
- Check `:LspInfo` for server status
- Run `:LspLog` for debugging information

### Performance Issues

- Run `:Lazy profile` to see startup times
- Use `:Lazy check` to check for updates
- Consider lazy-loading plugins with `event` or `cmd` options

## Contributing

Feel free to submit issues and enhancement requests!

## License

This configuration is open source and available under the [MIT License](LICENSE).
