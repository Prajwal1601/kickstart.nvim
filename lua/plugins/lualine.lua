-- status line configuration
-- https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('lualine').setup {
      options = {
        -- theme = 'palenight',
        theme = 'catppuccin',
      },
    }
  end,
}
