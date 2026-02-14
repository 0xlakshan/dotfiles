return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = false,
    priority = 1000,
    opts = function()
      --  TURN THIS ON WHEN ON GHOSTTY TERMINAL
      -- return {
      -- transparent = false,
      -- styles = {
      --   sidebars = "dark",
      -- },
      -- on_colors = function(colors)
      -- colors.bg = "#002B36"
      -- end,
      -- }
    end,
  },
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
