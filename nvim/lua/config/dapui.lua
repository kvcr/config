local M = {}

M.config = function()
    require 'neodev'.setup {
        library = { plugins = { 'nvim-dap-ui' }, types = true }
    }

    local dapui = require 'dapui'

    dapui.setup()

    vim.keymap.set("n", "<leader>du", dapui.toggle)
end

return M
