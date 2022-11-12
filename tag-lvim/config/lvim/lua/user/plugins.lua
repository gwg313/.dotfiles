-- Additional Plugins
lvim.plugins = {
  "windwp/nvim-spectre",
  "rafi/awesome-vim-colorschemes",
  "kylechui/nvim-surround",
  "ggandor/leap.nvim",
  "karb94/neoscroll.nvim",
  "p00f/nvim-ts-rainbow",
  "folke/zen-mode.nvim",
  "mfussenegger/nvim-dap-python",
  "mxsdev/nvim-dap-vscode-js",
  "theprimeagen/harpoon",
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "windwp/nvim-ts-autotag",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "folke/todo-comments.nvim",
  "monaqa/dial.nvim",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "wakatime/vim-wakatime",
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  { "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup {
          plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
        }
      end, 100)
    end,
  },

  { "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
  },
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
}
