vim.keymap.set("i", "Esc", "")

local keymap = vim.keymap

-- Показать документацию под курсором (аналог наведения мышки)
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })

-- Перейти к определению (например, к функции или классу)
keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })

-- Показать список ошибок в текущем файле
keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- Переименовать переменную везде в проекте
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename" })
