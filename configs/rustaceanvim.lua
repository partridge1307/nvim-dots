local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

vim.g.rustaceanvim = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  },
  tools = {
    float_win_config = {
      auto_focus = true
    }
  }
}

require("core.utils").load_mappings("rust")
