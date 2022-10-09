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
}
