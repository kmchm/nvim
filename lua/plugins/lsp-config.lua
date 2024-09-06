return {
  { "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- installed servers
        ensure_installed = {
          "lua_ls",
          "dockerls",
          "html",
          "jdtls",
          "eslint",
          "biome",
          "marksman",
          "volar",
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({})
      lspconfig.dockerls.setup({})
      lspconfig.html.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.eslint.setup({})
      lspconfig.biome.setup({})
      lspconfig.marksman.setup({})
      lspconfig.volar.setup({})


      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v', }, '<space>ca', vim.lsp.buf.code_action, {})
    end
  }
}
