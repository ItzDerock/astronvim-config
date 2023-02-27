return {
  lsp = {
    ["config"] = {
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8"
        }
      }
    }
  },
  plugins = {
    -- Copilot.lua
    {
      "AstroNvim/astrocommunity",
      { import = "astrocommunity.completion.copilot-lua-cmp" }
    },

    -- Customize GitSigns
    -- I like how VSC's GitLens shows current line blame
    {
      "lewis6991/gitsigns.nvim",
      opts = {
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 200
        }
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
      ["<C-j>"] = { "<cmd>ToggleTermToggleAll<cr>", desc = "Hide all terms" },
    },
  },
}
