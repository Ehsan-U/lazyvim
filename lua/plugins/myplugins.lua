return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<c-k>", false, mode = "i" }

      opts.servers = opts.servers or {}
      opts.servers.pyright = opts.servers.pyright or {}
      opts.servers.pyright.settings = {
        python = {
          analysis = {
            typeCheckingMode = "off",
          },
        },
      }

      return opts
    end,
  },

  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        win = {
          position = "float",
        },
      },
    },
  },
}
