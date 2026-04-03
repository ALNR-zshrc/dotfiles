return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",     -- Источник от LSP
      "hrsh7th/cmp-buffer",       -- Источник из текущего текста
      "hrsh7th/cmp-path",         -- Пути к файлам
      "L3MON4D3/LuaSnip",         -- Движок сниппетов (обязателен для cmp)
      "saadparwaiz1/cmp_luasnip", -- Связка сниппетов и cmp
      "rafamadriz/friendly-snippets", -- Готовые сниппеты для разных языков
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- Загружаем готовые сниппеты (Python, GDScript и др.)
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(), -- Вверх по списку
          ["<C-j>"] = cmp.mapping.select_next_item(), -- Вниз по списку
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),     -- Вызвать меню вручную
          ["<C-e>"] = cmp.mapping.abort(),            -- Закрыть меню
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Подтвердить выбор
        }),
        -- Источники данных (порядок важен для приоритета)
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- Самый приоритетный
          { name = "luasnip" },  -- Сниппеты
          { name = "buffer" },   -- Текст из файла
          { name = "path" },     -- Пути к файлам
        }),
      })
    end,
  },
}
