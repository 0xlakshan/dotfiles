return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
      })
    end,
  },

  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        -- Your custom vtsls settings
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                -- Set the memory limit in megabytes
                maxTsServerMemory = 4096,
              },
            },
          },
        },
      },
    },
  },
}
