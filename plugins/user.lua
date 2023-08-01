return {
-- You can also add new plugins here as well:
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        opts = {},
    },
    {
        "loctvl842/monokai-pro.nvim",
        config = function ()
            require("monokai-pro").setup({
                filter = "spectrum"
            })
        end
    },
    {
        "folke/which-key.nvim",
        init = function ()
            vim.o.timeout = true
            vim.o.timeoutlen = 1000
        end,
        opts = {},
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
        event = "VeryLazy"
    },
    -- TODO: implement keymaps
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
