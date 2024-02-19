return {
  {
    "Julian/lean.nvim",
    event = { "BufReadPre *.lean", "BufNewFile *.lean" },

    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },

    -- see details below for full configuration options
    opts = {
      lsp = {},
      mappings = true,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "go", "python", "javascript", "html" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
