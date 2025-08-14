# Neovim Configuration

A modern Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim) for fast plugin management and enhanced development experience.

## Features

- 🚀 **Fast startup** with lazy.nvim plugin manager
- 🎨 **Beautiful UI** with Catppuccin theme and modern statusline
- 🔍 **Powerful search** with Telescope
- 📁 **File explorer** with NvimTree
- 🧠 **Smart completion** with nvim-cmp and LSP
- 🌳 **Syntax highlighting** with TreeSitter
- 📝 **Advanced code formatting** with Conform.nvim
- 🔧 **Enhanced LSP experience** with LSPSaga
- 💬 **Easy commenting** with Comment.nvim
- 🛠️ **LSP management** with Mason and nvim-lspconfig
- ⚡ **Format on save** with automatic code formatting
- 🎯 **Improved diagnostics** with LSPSaga integration and lsp_lines
- 🤖 **AI assistance** with GitHub Copilot integration
- 🔗 **Tmux integration** for seamless navigation between Neovim and tmux panes
- 🗑️ **Better buffer management** with bufdelete.nvim
- 🎯 **Go-to-definition** with LSPSaga integration for quick code navigation
- 📍 **Smart file tree** that automatically focuses on current file like VSCode

## Plugin Overview

### Core Plugins

| Plugin | Description | Links |
| ------ | ----------- | ----- |
| **lazy.nvim** | Fast plugin manager | [GitHub](https://github.com/folke/lazy.nvim) |
| **catppuccin/nvim** | Beautiful color scheme | [GitHub](https://github.com/catppuccin/nvim) |
| **nvim-lualine/lualine.nvim** | Modern statusline | [GitHub](https://github.com/nvim-lualine/lualine.nvim) |
| **akinsho/bufferline.nvim** | Tab/buffer line | [GitHub](https://github.com/akinsho/bufferline.nvim) |
| **nvim-tree/nvim-tree.lua** | File explorer | [GitHub](https://github.com/nvim-tree/nvim-tree.lua) \| [Docs](https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt) |
| **nvim-telescope/telescope.nvim** | Fuzzy finder | [GitHub](https://github.com/nvim-telescope/telescope.nvim) \| [Docs](https://github.com/nvim-telescope/telescope.nvim#telescope-nvim) |
| **nvim-treesitter/nvim-treesitter** | Syntax highlighting | [GitHub](https://github.com/nvim-treesitter/nvim-treesitter) \| [Docs](https://github.com/nvim-treesitter/nvim-treesitter#nvim-treesitter) |

### Development Plugins

| Plugin | Description | Links |
| ------ | ----------- | ----- |
| **neovim/nvim-lspconfig** | LSP configuration | [GitHub](https://github.com/neovim/nvim-lspconfig) \| [Docs](https://github.com/neovim/nvim-lspconfig/blob/master/doc/lspconfig.txt) |
| **mason-org/mason.nvim** | LSP/DAP/Linter installer | [GitHub](https://github.com/williamboman/mason.nvim) \| [Docs](https://github.com/williamboman/mason.nvim#mason.nvim) |
| **hrsh7th/nvim-cmp** | Completion engine | [GitHub](https://github.com/hrsh7th/nvim-cmp) \| [Wiki](https://github.com/hrsh7th/nvim-cmp/wiki) |
| **windwp/nvim-autopairs** | Auto-pair brackets | [GitHub](https://github.com/windwp/nvim-autopairs) |
| **numToStr/Comment.nvim** | Easy commenting | [GitHub](https://github.com/numToStr/Comment.nvim) \| [Docs](https://github.com/numToStr/Comment.nvim#comment.nvim) |
| **L3MON4D3/LuaSnip** | Snippet engine | [GitHub](https://github.com/L3MON4D3/LuaSnip) \| [Docs](https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md) |
| **stevearc/conform.nvim** | Advanced code formatting | [GitHub](https://github.com/stevearc/conform.nvim) \| [Docs](https://github.com/stevearc/conform.nvim#conform.nvim) |
| **nvimdev/lspsaga.nvim** | Enhanced LSP UI and features | [GitHub](https://github.com/nvimdev/lspsaga.nvim) \| [Docs](https://nvimdev.github.io/lspsaga/) |

### AI & Productivity Plugins

| Plugin | Description | Links |
| ------ | ----------- | ----- |
| **zbirenbaum/copilot.lua** | GitHub Copilot integration | [GitHub](https://github.com/zbirenbaum/copilot.lua) |
| **lsp_lines.nvim** | Enhanced diagnostic display | [SourceHut](https://git.sr.ht/~whynothugo/lsp_lines.nvim) |

### Navigation & Buffer Management

| Plugin | Description | Links |
| ------ | ----------- | ----- |
| **christoomey/vim-tmux-navigator** | Seamless tmux/vim navigation | [GitHub](https://github.com/christoomey/vim-tmux-navigator) |
| **famiu/bufdelete.nvim** | Better buffer deletion | [GitHub](https://github.com/famiu/bufdelete.nvim) |

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
│   │   ├── conform.lua     # Code formatting
│   │   ├── lspsaga.lua     # Enhanced LSP UI
│   │   ├── copilot.lua     # GitHub Copilot AI
│   │   ├── lsp_lines.lua   # Enhanced diagnostics
│   │   ├── bufdelete.lua   # Buffer management
│   │   ├── tmux-nvim-nav.lua # Tmux navigation
│   │   └── ...             # Other plugins
│   └── user/               # Custom user functions
│       └── lsp_format.lua  # LSP formatting
└── README.md               # This file
```

## Keymaps Cheat Sheet

### Leader Key

- **Leader**: `<Space>` (spacebar)

### File Management

| Keymap      | Description                           |
| ----------- | ------------------------------------- |
| `<leader>e` | Focus NvimTree file explorer          |
| `<leader>ef`| Find current file in NvimTree         |
| `<leader>f` | Format current buffer with Conform    |
| `<leader>m` | Open Mason installer                  |
| `<leader>mi`| Prefill MasonInstall command          |
| `<leader>l` | Toggle lsp_lines diagnostics           |

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

| Keymap        | Description                  |
| ------------- | ---------------------------- |
| `gd`          | Go to definition             |
| `gr`          | Go to references             |
| `K`           | LSPSaga hover documentation  |
| `[e`          | Previous diagnostic          |
| `]e`          | Next diagnostic              |
| `<leader>ca`  | LSPSaga code actions         |
| `<leader>rn`  | Rename symbol                |
| `<leader>cd`  | Show cursor diagnostics      |
| `<leader>ld`  | Show line diagnostics        |
| `<leader>bd`  | Show buffer diagnostics      |
| `<leader>wd`  | Show workspace diagnostics   |
| `<M-d>`       | Toggle LSPSaga terminal      |

### Tmux Navigation

| Keymap   | Description               |
| -------- | ------------------------- |
| `<C-h>`  | Navigate to left pane     |
| `<C-j>`  | Navigate to bottom pane   |
| `<C-k>`  | Navigate to top pane      |
| `<C-l>`  | Navigate to right pane    |
| `<C-\>`  | Navigate to previous pane |

### AI Assistance (Copilot)

GitHub Copilot provides intelligent code completion and suggestions:

| Keymap          | Description                     |
| --------------- | ------------------------------- |
| `<M-l>`         | Accept Copilot suggestion       |
| `<M-]>`         | Next suggestion                 |
| `<M-[>`         | Previous suggestion             |
| `<C-]>`         | Dismiss suggestion              |
| `<M-CR>`        | Open Copilot panel              |

**Panel Navigation** (when open):
| Keymap | Description              |
| ------ | ------------------------ |
| `[[`   | Jump to previous result  |
| `]]`   | Jump to next result      |
| `<CR>` | Accept selected result   |
| `gr`   | Refresh suggestions      |

**Features**:
- **Auto-trigger**: Suggestions appear automatically while typing
- **Debounced**: 75ms delay for better performance
- **Filetype filtering**: Disabled for YAML, Markdown, git commits
- **Integration**: Works seamlessly with nvim-cmp completion

### NvimTree (File Explorer)

The file explorer automatically focuses on the current file when you switch buffers, providing VSCode-like behavior for better project navigation awareness.

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
- Python, TypeScript, TSX, Vim, YAML, Astro
- And many more...

### LSP Servers

Currently configured for:

- **TypeScript/JavaScript**: `typescript-language-server`
- **Astro**: Support added for Astro framework files

Additional LSP servers can be installed via Mason:

```vim
:Mason
```

### Code Formatting

The configuration now uses **Conform.nvim** for advanced code formatting:

- **Automatic formatting on save** for all supported file types
- **Multiple formatter support** with fallback options
- **Language-specific formatters**:
  - Lua: `stylua`
  - JavaScript/TypeScript: `prettierd` or `prettier`
  - Astro: `prettierd` or `prettier`

### Indentation Settings

- **Default**: 2 spaces (changed from 4)
- **Language-specific indentation** for JavaScript, TypeScript, Astro, JSON, CSS, and HTML
- **Consistent formatting** across all supported file types

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

### Copilot Issues

- Run `:Copilot status` to check authentication
- Use `:Copilot auth` to authenticate with GitHub
- Check `:Copilot log` for debugging information

### Diagnostic Display Issues

- Use `<leader>l` to toggle lsp_lines diagnostic display
- Standard virtual text diagnostics are replaced by lsp_lines
- Check LSP server status if diagnostics aren't appearing

## Contributing

Feel free to submit issues and enhancement requests!

## License

This configuration is open source and available under the [MIT License](LICENSE).
