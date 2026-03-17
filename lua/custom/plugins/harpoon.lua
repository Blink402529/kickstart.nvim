return {
  "ThePrimeagen/harpoon",
  config = function()
    local harpoon = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, { desc = '[H]arpoon [A]dd Mark' })
    vim.keymap.set('n', '<leader>hn', harpoon.nav_next, { desc = '[H]arpoon [N]ext Mark' })
    vim.keymap.set('n', '<leader>hp', harpoon.nav_prev, { desc = '[H]arpoon [P]revious Mark' })
    vim.keymap.set('n', '<leader>hm', harpoon.toggle_quick_menu, { desc = '[H]arpoon [M]enu' })
    for i = 1, 5, 1 do
      vim.keymap.set('n', '<leader>h' .. i, harpoon.nav_prev, { desc = '[H]arpoon Mark ' .. i })
    end
  end
}
