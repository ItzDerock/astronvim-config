return {
  lsp = {
    ["server-settings"] = {
      clangd = { 
        capabilities = { 
          offsetEncoding = "utf-8" 
        } 
      }
    }
  },

  plugins = {
    init = {
      {
        "zbirenbaum/copilot.lua",
        event = "VimEnter",
        config = function()
          vim.defer_fn(function()
            require("copilot").setup()
          end, 100)
        end,
      },
      {
        "zbirenbaum/copilot-cmp",
        after = "copilot.lua",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    }
  }
}
