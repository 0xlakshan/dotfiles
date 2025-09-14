-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mason").setup()

-- npm path for LSP
vim.env.PATH = vim.env.PATH .. ":/home/lakshan/.nvm/versions/node/v24.5.0/bin"

require("lazy").setup("plugins_lazy.lua")

-- require("telescope").setup({
--   extensions = {
--     hidden
--   }
-- })

-- require("neo-tree").setup({
--   opts = {
--     filesystem = {
--       filtered_items = {
--         hide_dotfiles = false,
--         hide_hidden = false,
--         hide_gitignored = false,
--       },
--     },
--   },
-- })

-- View typescript types on mouse hover (Shift + K)
-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
--   border = "rounded",
-- })
-- vim.api.nvim_create_autocmd("CursorHold", {
--   callback = function()
--     vim.lsp.buf.hover()
--   end,
-- })
-- vim.o.updatetime = 300

require("lspconfig").ts_ls.setup({
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "none", -- Disable parameter name hints
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
      },
    },
  },
})

-- vim.api.nvim_set_hl(0, "LspInlayHint", { Fg = "#585858", bg = "NONE" })

-- The order of your `lazy.nvim` imports is incorrect:
-- - `lazyvim.plugins` should be first
-- - followed by any `lazyvim.plugins.extras`
-- - and finally your own `plugins`
--
-- If you think you know what you're doing, you can disable this check with:
-- ```lua
-- vim.g.lazyvim_check_order = false
-- ```
