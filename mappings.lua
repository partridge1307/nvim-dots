local M = {}

M.debugger = {
  n = {
    ["<leader>dp"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint"
    },
  }
}

M.rust = {
  n = {
    ["<leader>rh"] = {
      "<cmd> RustLsp hover actions <CR>",
      "Rust hover actions"
    },
    ["<leader>re"] = {
      "<cmd> RustLsp explainError <CR>",
      "Rust explain error"
    },
  }
}

return M
