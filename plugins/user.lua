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
        event = "VeryLazy",
    },
    {
        "mattn/emmet-vim",
        event = "VeryLazy",
        init = function ()
            vim.g.user_emmet_leader_key = ","
            vim.g.user_emmet_mode="a"
            vim.g.user_emmet_install_global = 0
            vim.api.nvim_create_autocmd("FileType", {
                pattern = {"html", "css"},
                command = "EmmetInstall"
            })
        end
    },
    {
        "Wansmer/treesj",
        keys = {
            {
                "<space>m",
                function ()
                    require("treesj").toggle()
                end,
            },
            {
                "<space>M",
                function ()
                    require("treesj").toggle({ split = { recursive = true } })
                end,
            },
        },
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function ()
            require("treesj").setup({
                use_default_keymaps = false,
                max_join_length = 300,
            })
        end
    },
    {
        "stevearc/vim-arduino",
        ft = { "arduino" },
    },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
