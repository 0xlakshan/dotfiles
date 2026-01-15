return {
  -- show hidden files / directories
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = true,
        hidden = true,
        ignored = true,
        exclude = {},
      },
      picker = {
        enabled = true,
        hidden = true,
        ignored = true,
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = {},
          },
        },
      },
    },
  },
}
