-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Tab"
    ["<leader>Tn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>Tc"] = { "<cmd>tabclose<cr>", desc = "Close tab" },
    ["<leader>Te"] = { ":tcd ", desc = "Change Directory Tab" },

    -- mappings seen under group name "Todo Comments"
    ["<leader>ft"] = { "<cmd>TodoTelescope<cr>"},

    -- mappings seen under group name "Todo Comments"
    ["<leader>st"] = { "<cmd>TodoTelescope<cr>"},

    -- mappings seen under group name "Arduino Vim"
    ["<C-a>v"] = { "<cmd>ArduinoVerify<cr>"},
    ["<C-a>u"] = { "<cmd>ArduinoUpload<cr>"},
    ["<C-a>s"] = { "<cmd>ArduinoSerial<cr>"},
    ["<C-a>b"] = { "<cmd>ArduinoChooseBoard<cr>"},
    ["<C-a>p"] = { "<cmd>ArduinoChooseProgrammer<cr>"},
    ["<C-a>a"] = { "<cmd>ArduinoAttach<cr>"},

      -- Session Manager
    ["<leader>s"] = { desc = require("astronvim.utils").get_icon("Session", 1, true) .. "Session" },
    ["<leader>sl"] = { "<cmd>SessionManager! load_last_session<cr>", desc = "Load last session" },
    ["<leader>ss"] = { "<cmd>SessionManager! save_current_session<cr>", desc = "Save this session" },
    ["<leader>sd"] = { "<cmd>SessionManager! delete_session<cr>", desc = "Delete session" }, ["<leader>sf"] = { "<cmd>SessionManager! load_session<cr>", desc = "Search sessions" }, ["<leader>s."] = { "<cmd>SessionManager! load_current_dir_session<cr>", desc = "Load current directory session" },

      -- mappings seen under group name "Buffer"
      ["<leader>bD"] = {
        function()
          require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
        end,
        desc = "Pick to close",
      },
      ["<C-=>"] = {"<cmd>resize+2<cr>", desc = "Resize Horizontal +"},
      ["<C-_>"] = {"<cmd>resize-2<cr>", desc = "Resize Horizontal -"},
      ["<M-=>"] = {"<cmd>vertical resize+2<cr>", desc = "Resize Vertical +"},
      ["<M-->"] = {"<cmd>vertical resize-2<cr>", desc = "Resize Vertical -"},

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
      ["<leader>b"] = { name = "Buffers" },
      ["<leader>T"] = { name = "Tabs" },
      ["<leader>r"] = { name = "Rust" },
      ["<leader>rc"] = { name = "Crates" },

      -- mappings seen under group name "Rust"
      ["<leader>rr"] = {
      function ()
          local buf = vim.api.nvim_get_current_buf()
          local ft = vim.api.nvim_buf_get_option(buf, "filetype")
          if ft == "rust" then
              require("rust-tools.runnables").runnables()
          end
      end,
      desc = "Open Runnables",
      },
      ["<leader>rh"] = {
      function ()
          local buf = vim.api.nvim_get_current_buf()
          local ft = vim.api.nvim_buf_get_option(buf, "filetype")
          if ft == "rust" then
              require("rust-tools.hover_actions").hover_actions()
              require("rust-tools.hover_actions").hover_actions()
          end
      end,
      desc = "Hover Actions",
      },
      ["<leader>rp"] = {
      function ()
          local buf = vim.api.nvim_get_current_buf()
          local ft = vim.api.nvim_buf_get_option(buf, "filetype")
          if ft == "rust" then
            require("rust-tools.parent_module").parent_module()
          end
      end,
      desc = "Go to Parent Module",
      },
      ["<leader>rt"] = {
      function ()
          local buf = vim.api.nvim_get_current_buf()
          local ft = vim.api.nvim_buf_get_option(buf, "filetype")
          if ft == "rust" then
            require("rust-tools.open_cargo_toml").open_cargo_toml()
          end
      end,
      desc = "Go to Cargo.toml",
      },
      ["<leader>rcu"] = {
        function ()
            local buf = vim.api.nvim_get_current_buf()
            local ft = vim.api.nvim_buf_get_option(buf, "filetype")
            if ft == "rust" or ft == "toml" then
                require("crates").upgrade_all_crates()
            end
        end,
        desc = "Update Crates",
      },
      ["<leader>r<Up>"] = {
      function ()
          local buf = vim.api.nvim_get_current_buf()
          local ft = vim.api.nvim_buf_get_option(buf, "filetype")
          if ft == "rust" or ft == "toml" then
              require("rust-tools.move_item").move_item(true)
          end
      end,
      desc = "Move Item Up",
      },
      ["<leader>r<Down>"] = {
      function ()
          local buf = vim.api.nvim_get_current_buf()
          local ft = vim.api.nvim_buf_get_option(buf, "filetype")
          if ft == "rust" or ft == "toml" then
              require("rust-tools.move_item").move_item(false)
          end
      end,
      desc = "Move Item Down",
      },


      -- Toggle Term Utility Mapping
      ["<leader>tT"] =  { "<cmd>ToggleTerm direction=tab<cr>", desc = "ToggleTerm tab" },
      ["<CS-I>"] =  { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
      -- quick save
      ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

      -- Disable Default Terminal Keymaps
      -- ["<leader>t"] = false,
      -- ["<leader>tf"] = false,
      -- ["<leader>th"] = false,
      -- ["<leader>tv"] = false,
      -- ["<leader>tp"] = false,
      -- ["<leader>tn"] = false,
      -- ["<leader>tu"] = false,
      -- ["<leader>tt"] = false,
      -- ["<leader>tl"] = false,

    -- Enable Terminal Default Session Keymaps with Lowercase Replacement
    -- ["<leader>T"] = { desc = require("astronvim.utils").get_icon("Terminal", 1, true) .. "Terminal" },

    -- Disable Default Session Keymaps
    -- Enable Session Default Session Keymaps with Lowercase Replacement
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<CS-I>"] =  { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<C-=>"] = {"<cmd>resize+2<cr>", desc = "Resize Horizontal +"},
    ["<C-_>"] = {"<cmd>resize-2<cr>", desc = "Resize Horizontal -"},
    ["<M-=>"] = {"<cmd>vertical resize+2<cr>", desc = "Resize Vertical +"},
    ["<M-->"] = {"<cmd>vertical resize-2<cr>", desc = "Resize Vertical -"},
    ["<C-h>"] = { function() vim.cmd.tabprevious() end, desc = "Switch tab" },
  },
}
