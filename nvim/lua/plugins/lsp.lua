return {
  local capabilities = require('cmp_nvim_lsp').default_capabilities(
    lspconfig.pyright.setup({ capabilities = capabilities })
    lspconfig.gdscript.setup({ capabilities = capabilities })
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
    	Lua = {
      	  diagnostics = { globals = { "vim" } },
    	},
      },
    })
  )
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Список серверов для автоматической установки
        ensure_installed = { "pyright", "gdscript", "clangd", "lua_ls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      -- Настройка для Python
      lspconfig.pyright.setup({})
      
      -- Настройка для Lua (чтобы Neovim понимал свой же конфиг)
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })

      -- Настройка для Godot (GDScript)
      -- Важно: Godot должен быть запущен, чтобы сервер работал
      lspconfig.gdscript.setup({})
    end,
  }
}
