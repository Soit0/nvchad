return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "Hoffs/omnisharp-extended-lsp.nvim",
      },
    },
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require "configs.cmp"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "json-lsp",
        "deno",
        "css-lsp",
        "eslint-lsp",
        "eslint_d",
        "prettier",
        "typescript-language-server",
        "yaml-language-server",
        "omnisharp",
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        enable = true,
      },
      ensure_installed = {
        "vim",
        "yaml",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "vue",
        "graphql",
        "hjson",
        "tsx",
        "c",
        "nix",
        "markdown",
        "markdown_inline",
        "vimdoc",
      },
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require "configs.nvim-tree"
    end,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup {
        symbol_in_winbar = {
          enable = true,
          sign = true,
          virtual_text = true,
        },
      }
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },
  {
    "declancm/cinnamon.nvim",
    event = "BufEnter *.*",
    config = function()
      require("cinnamon").setup {
        keymaps = {
          basic = true,
        },
      }
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
  },
  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    -- branch = 'v2',
    config = function()
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    config = function()
      require("treesitter-context").setup {
        separator = "-",
        multiline_threshold = 2,
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "folke/neodev.nvim",
    event = "VeryLazy",
    config = function()
      require("neodev").setup()
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
      require("todo-comments").setup()
    end,
  },
}
