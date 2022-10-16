lvim.plugins = {
  "folke/trouble.nvim",
  config = function()
    require("trouble").setup {
      auto_open = true,
      auto_close = true,
      padding = false,
      height = 10,
      use_diagnostic_signs = true,
    }
  end,
  cmd = "Trouble",
  {
    "ggandor/lightspeed.nvim",
    config = function()
      require("user.lightspeed").config()
    end,
    disable = lvim.builtin.motion_provider ~= "lightspeed",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  { "rafi/awesome-vim-colorschemes" },
  {
    "nvim-neotest/neotest",
    config = function()
      require("user.ntest").config()
    end,
    requires = {
      { "nvim-neotest/neotest-go" },
      { "nvim-neotest/neotest-python" },
      { "nvim-neotest/neotest-plenary" },
      { "rouge8/neotest-rust" },
    },
    -- opt = true,
    -- event = { "BufEnter *_test.*,*_spec.*,test_*.*" },
    disable = not (lvim.builtin.test_runner.active and lvim.builtin.test_runner.runner == "neotest"),
  },
}
