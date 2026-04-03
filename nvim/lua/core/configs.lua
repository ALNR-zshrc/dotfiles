-- Поиск
vim.opt.ignorecase = true -- Игнорирует регистр при поиске
vim.opt.smartcase = true -- Если есть заглавные буквы, поиск становится чувствительным к регистру

-- Мышь
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Нумерация строк
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"

-- Убирает фон Neovim, оставляя фон терминала (Kitty)
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- таб в 4 пробела
vim.opt.tabstop = "4"
vim.opt.softtabstop = "4"
vim.opt.shiftwidth = "4"
vim.opt.expandtab = "4"

-- прочее
vim.opt.termguicolors = true
