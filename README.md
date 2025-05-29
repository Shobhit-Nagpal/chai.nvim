<div align="center">

# chai.nvim

Chai for Neovim: A warm, cozy theme for chill coding vibes.

> This theme is a Neovim port of the [chai theme](https://marketplace.visualstudio.com/items?itemName=hiteshchoudharycode.chai-theme) for VSCode, created by Hitesh Choudhary sir. It primarily draws inspiration from the dark theme variant.

<img alt="chai.nvim preview" src="/assets/preview.png" />

</div>

## Features

- 🌙 Dark theme optimized for long coding sessions
- 🎨 Carefully crafted color palette
- 🔌 Extensive plugin support
- ⚡️ Fast and lightweight
- 🎯 Comprehensive syntax highlighting
- 🖼️ Support for transparent backgrounds
- 🎭 Customizable through options

## Installation

### Using [Lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
require("chai").setup {
    "Shobhit-Nagpal/chai.nvim",
    dependencies = {
        "tjdevries/colorbuddy.nvim"
    },
}
```

### Using [Packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "Shobhit-Nagpal/chai.nvim",
  requires = {
    "tjdevries/colorbuddy.nvim",
  }
}
```

## Configuration

### Default Options

```lua
require("chai").setup({
  -- Enable italic comments
  comment_italics = true,
  
  -- Enable transparent background
  transparent_background = false,
  
  -- Enable transparent floating windows
  transparent_float_background = false,
  
  -- Reverse visual selection colors
  reverse_visual = false,
  
  -- Dim non-current windows
  dim_nc = true,
  
  -- Disable search highlight group in cmp cmdline
  cmp_cmdline_disable_search_highlight_group = false,
  
  -- Make telescope borders follow float background
  telescope_border_follow_float_background = false,
  
  -- Make lspsaga borders follow float background
  lspsaga_border_follow_float_background = false,
  
  -- Enable background for diagnostic virtual text
  diagnostic_virtual_text_background = false,
  
  -- Override default colors
  colors = {
    -- Add your color overrides here
    -- Example: primary = "#ff0000"
  },
  
  -- Override default themes
  themes = {
    -- Add your theme overrides here
    -- Example: background = "#000000"
  }
})
```

### Example with Bufferline

```lua
require("bufferline").setup({
  options = {
    highlights = require("chai.plugins.bufferline"),
  }
})
```

### Example with Lualine

```lua
require("lualine").setup({
  options = {
    theme = "chai",
  },
})
```

## Plugin Support

chai.nvim includes support for the following plugins:

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- And many more!

## Dependencies

- Neovim >= 0.7.0
- [colorbuddy.nvim](https://github.com/tjdevries/colorbuddy.nvim)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details. 
