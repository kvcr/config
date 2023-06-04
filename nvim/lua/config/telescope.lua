local M = {}

M.config = function()
    require 'telescope'
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    --vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
end

return M
