return { -- lazy.nvim
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts = opts or { routes = {} }
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  { "mason-org/mason.nvim", opts = { ensure_installed = { "biome" } } },
}
