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
                desc = "TreeSJ Toggle",
            },
            {
                "<space>M",
                function ()
                    require("treesj").toggle({ split = { recursive = true } })
                end,
                desc = "TreeSJ Recursive Toggle",
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
    {
        "nvim-treesitter/nvim-treesitter-context",
        event = "VeryLazy",
        config = function () 
            require'treesitter-context'.setup{
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to show for a single context
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20, -- The Z-index of the context window
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            }
        end
    },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
