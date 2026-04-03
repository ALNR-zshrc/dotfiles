return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cyberdream").setup({
        -- Основные настройки
        transparent = true,     -- ВКЛЮЧАЕМ прозрачность для твоего блюра
        italic_comments = true,
        hide_fillchars = true,  -- Убирает лишние символы разделителей
        borderless_telescope = true,
        terminal_colors = true, -- Чтобы цвета в терминале Neovim совпадали с темой

        -- Настройка насыщенности (делаем цвета еще ярче)
        theme = {
          variant = "default", -- Можно сменить на "light", но тебе нужен "default"
          highlights = {
            -- Пример кастомизации: делаем комментарии чуть заметнее на блюре
            Comment = { fg = "#696969", italic = true },
          },
        },
      })

      -- Активируем тему
      vim.cmd("colorscheme cyberdream")
    end,
  },
}
