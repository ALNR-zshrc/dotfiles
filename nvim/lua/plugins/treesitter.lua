return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require("dracula")
      dracula.setup({
        -- Цветовая палитра (делаем синтаксис ярче)
        colors = {
          bg = "#000000",         -- True Black фон
          fg = "#F8F8F2",         -- Чистый белый для текста
          selection = "#44475A",
          comment = "#6272A4",
          red = "#FF5555",        -- Насыщенный красный
          orange = "#FFB86C",     -- Яркий оранжевый
          yellow = "#F1FA8C",     -- Лимонный
          green = "#50FA7B",      -- Неоновый зеленый
          purple = "#BD93F9",     -- Сочный фиолетовый
          cyan = "#8BE9FD",       -- Яркий бирюзовый
          pink = "#FF79C6",       -- Розовый (Hot Pink)
          bright_red = "#FF6E6E",
          bright_green = "#69FF94",
          bright_yellow = "#FFFFA5",
          bright_blue = "#D6ACFF",
          bright_magenta = "#FF92DF",
          bright_cyan = "#A4FFFF",
          bright_white = "#FFFFFF",
          menu = "#111111",
          visual = "#333333",
          gutter_fg = "#44475A",
          nontext = "#282A36",
        },
        -- Прозрачность (если хочешь видеть обои Hyprland через редактор)
        transparent_bg = false, 
        italic_comment = true,
      })
      vim.cmd.colorscheme("dracula")
    end,
  },
}
