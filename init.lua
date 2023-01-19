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
      -- run :Copilot setup to authenticate 
      { 
        "github/copilot.vim",
      },
     -- JSDoc stuff
      {
        "kkoomen/vim-doge",
      }
    },

    -- Customize GitSigns
    -- I like how VSC's GitLens shows current line blame
    gitsigns = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 200
      }
    }
  },

  mappings = {
    -- Normal mode
    n = {
      -- Toggle terminal - same keybind as VSC
      ["<C-j>"] = { "<cmd>ToggleTermToggleAll<cr>", desc = "Hide all terms" },
    },
  
    -- Insert mode
    i = {
      ["<tab>"] = { "copilot#Accept('<CR>')", silent = true, expr = true },
      ["<C-j>"] = { "<cmd>ToggleTermToggleAll<cr>", desc = "Hide all terms" },
    },
  },

  options = {
    g = {
      copilot_no_tab_map = true,
      copilot_assume_mapped = true,
      copilot_tab_fallback = true
    }
  }
}
