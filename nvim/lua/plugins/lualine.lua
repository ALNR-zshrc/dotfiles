return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'cyberdream', -- Она автоматически подхватит твою тему
          component_separators = '|',
          section_separators = '',
        }
      })
    end
  }
}
