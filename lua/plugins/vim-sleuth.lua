-- Detect tabstop and shiftwidth automatically
-- https://github.com/tpope/vim-sleuth

return {
  'tpope/vim-sleuth',
  confin = function()
    require('vim-sleuth').setup()
  end,
}
