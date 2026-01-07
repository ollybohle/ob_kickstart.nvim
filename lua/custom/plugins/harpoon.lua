-- example file: lua/plugins/harpoon.lua (or add to your plugins list)
return {
  'ThePrimeagen/harpoon',
  config = function()
    require('harpoon').setup()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'
    local nav = require 'harpoon.ui'

    local map = vim.keymap.set
    map('n', '<leader>a', mark.add) -- add file to harpoon
    map('n', '<leader>m', ui.toggle_quick_menu) -- open harpoon menu
    map('n', '<leader>h', function()
      ui.nav_file(1)
    end)
    map('n', '<leader>j', function()
      ui.nav_file(2)
    end)
    map('n', '<leader>k', function()
      ui.nav_file(3)
    end)
    map('n', '<leader>l', function()
      ui.nav_file(4)
    end)
  end,
}
