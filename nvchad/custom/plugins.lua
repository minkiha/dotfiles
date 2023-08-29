local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "prisma",
        "markdown",
        "markdown_inline",
        "go",
        "bash",
        "csv",
        "dockerfile",
        "gitignore",
        "gitcommit",
        "gomod",
        "gosum",
        "python",
        "sql",
        "yaml",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "tailwindcss-language-server",
        "gopls",
        "golangci-lint-langserver",
        "typescript-language-server",
        "bash-language-server",
        "dockerfile-language-server",
        "docker-compose-language-service",
        "python-lsp-server",
        "eslint-lsp",
        "marksman",
        "html-lsp",
        "css-lsp",
        "sqlls",
      }
    },
  },
  {
    "windwp/nvim-ts-autotag",
    lazy = false,
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    ft='markdown',
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
    config = function()
      require("typescript-tools").setup()
    end,
  },
}

return plugins
