lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      -- your optional config goes here, see below.
    end,
  },
  "monaqa/dial.nvim",
  "kylechui/nvim-surround",
  "opalmay/vim-smoothie",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "ggandor/leap.nvim",
  "MattesGroeger/vim-bookmarks",
  "windwp/nvim-spectre",
  {
    "Bryley/neoai.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    cmd = {
        "NeoAI",
        "NeoAIOpen",
        "NeoAIClose",
        "NeoAIToggle",
        "NeoAIContext",
        "NeoAIContextOpen",
        "NeoAIContextClose",
        "NeoAIInject",
        "NeoAIInjectCode",
        "NeoAIInjectContext",
        "NeoAIInjectContextCode",
    },
    keys = {
        { "<leader>as", desc = "summarize text" },
        { "<leader>ag", desc = "generate git message" },
    },
    config = function()
        require("neoai").setup({
            -- Options go here
        })
    end,
},
{
    "cbochs/grapple.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
},
  {
    "cbochs/portal.nvim",
    -- Optional dependencies
    dependencies = {
        "cbochs/grapple.nvim",
        "ThePrimeagen/harpoon"
    },
},
  {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    -- you'll need at least one of these
    {'nvim-telescope/telescope.nvim'},
    -- {'ibhagwan/fzf-lua'},
  },
},
  {
    "james1236/backseat.nvim",
    config = function()
        require("backseat").setup({
            -- Alternatively, set the env var $OPENAI_API_KEY by putting "export OPENAI_API_KEY=sk-xxxxx" in your ~/.bashrc
            openai_api_key = os.getenv("OPENAI_API_KEY"), -- Get yours from platform.openai.com/account/api-keys
            openai_model_id = 'gpt-3.5-turbo', --gpt-4 (If you do not have access to a model, it says "The model does not exist")
            -- language = 'english', -- Such as 'japanese', 'french', 'pirate', 'LOLCAT'
            -- split_threshold = 100,
            -- additional_instruction = "Respond snarkily", -- (GPT-3 will probably deny this request, but GPT-4 complies)
            -- highlight = {
            --     icon = '', -- ''
            --     group = 'Comment',
            -- }
        })
    end
},
}


table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup()     -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
      require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
    end, 100)
  end,
})
