return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- theme
  use({
    'projekt0n/github-nvim-theme', tag = 'v0.0.7',
    config = function()
      require('github-theme').setup({
        -- ...
      })

      vim.cmd('colorscheme github_light')
    end
  })

  --nvim tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

  -- bufferline
  use {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'}
  require("bufferline").setup {
      options = {
          -- 使用 nvim 内置lsp
          diagnostics = "nvim_lsp",
          -- 左侧让出 nvim-tree 的位置
	  offsets = {{
              filetype = "NvimTree",
	      text = "File Explorer",
	      highlight = "Directory",
              text_align = "left"
	  }}
      }
  }

  -- lsp
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }
  require("mason").setup({
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  })
  require("mason-lspconfig").setup {
      ensure_installed = {
	      "lua_ls",
	      "clangd",
	      "bashls",
	      "pyright",
      },
  }
  require("lspconfig").lua_ls.setup {}
  require("lspconfig").clangd.setup {}
  require("lspconfig").bashls.setup {}
  require("lspconfig").pyright.setup {}

  -- null-ls
  use({
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
          require("null-ls").setup()
      end,
      requires = { "nvim-lua/plenary.nvim" },
  })






end)
