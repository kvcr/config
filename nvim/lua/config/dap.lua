local M = {}

M.config = function()
    local dap = require 'dap'

    vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", { silent = true })
    vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
    vim.keymap.set("n", "<leader>lp",
        ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", { silent = true })
    vim.keymap.set("n", "<leader>dr", ": lua require'dap'.repl.open()<CR>", { silent = true })
    vim.keymap.set("n", "<leader>dl", ":lua require'dap'.run_last()<CR>", { silent = true })
    vim.keymap.set("n", "<leader>di", ":lua require'dap'.step_into()<CR>", { silent = true })
    vim.keymap.set("n", "<leader>do", ":lua require'dap'.step_over()<CR>", { silent = true })
    vim.keymap.set("n", "<leader>du", ":lua require'dap'.step_out()<CR>", { silent = true })
    vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>", { silent = true })

    dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/lldb-vscode',
        name = 'lldb'
    }

    dap.configurations.cpp = {
        {
            name = "Launch",
            type = "lldb",
            request = "launch",
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
        }
    }

    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp
end

return M
