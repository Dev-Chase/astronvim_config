return {
  "simrat39/rust-tools.nvim", -- add lsp plugin
  {
    hover_actions = {
      max_width = 100,
      auto_focus = true,
    },

    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" },
    },
  },
}
