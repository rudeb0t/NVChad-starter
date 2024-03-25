return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "lua-language-server", "stylua",
        "html-lsp", "css-lsp" , "prettier",
        "pyright",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "css", "html", "lua", "nix", "perl", "python", "vim", "vimdoc", "yaml",
      },
    },
  },
  {
    "vladdoster/remember.nvim",
    lazy = false,
    config = function()
      require("remember")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end,
  }
}
