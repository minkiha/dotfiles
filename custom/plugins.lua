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
        "astro"
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
        "astro-language-server",
        "prisma-language-server",
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
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
    config = function()
      require("typescript-tools").setup()
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    event = { "InsertEnter", "BufEnter", "BufRead" },
    cmd = { "Copilot" },
    config = function()
      require("copilot").setup {
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>",
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4,
          },
        },
        suggestion = {
          enabled = true,
          auto_accept = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
      }
    end,
  },
}

return plugins
