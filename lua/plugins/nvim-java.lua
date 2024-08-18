-- lsp config for java
-- https://github.com/nvim-java/nvim-java

return {
  'nvim-java/nvim-java',
  dependencies = {
    'nvim-java/lua-async-await',
    'nvim-java/nvim-java-core',
    'nvim-java/nvim-java-test',
    'nvim-java/nvim-java-dap',
    'MunifTanjim/nui.nvim',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    {
      'williamboman/mason.nvim',
      opts = {
        registries = {
          'github:nvim-java/mason-registry',
          'github:mason-org/mason-registry',
        },
      },
    },
  },
  config = function()
    local java = require 'java'

    vim.keymap.set('n', '<leader>jr', function()
      java.runner.built_in.run_app {}
    end, { desc = '[J]ava [R]un App' })
    vim.keymap.set('n', '<leader>js', function()
      java.runner.built_in.stop_app()
    end, { desc = '[J]ava [S]top App' })
    vim.keymap.set('n', '<leader>jl', function()
      java.runner.built_in.toggle_logs()
    end, { desc = '[J]ava Toggle Runner [L]ogs' })
  end,
}
