local M = {}

M.config = function()
require 'nvim-tree'.setup {
    sort_by = 'case_sensitive',
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
}

end

return M
