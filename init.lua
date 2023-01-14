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
      -- Copilot.nvim
      -- run :Copilot auth to authenticate 
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
    },

    -- Customize GitSigns
    -- I like how VSC's GitLens shows current line blame
    gitsigns = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 200
      }
    }
  }
}
