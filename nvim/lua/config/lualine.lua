local M = {}

function M.config()
    require 'lualine'.setup {
        options = {
            icons_enabled = true,
            theme = 'horizon',
            component_separators = { left = '', right = '' },
            section_separators = { left = '', right = '' },
            -- component_separators = { left = '', right = '' },
            -- section_separators = { left = '', right = '' },
            -- section_separators = { left = '>a', right = '<' },
            -- component_separators = { left = 'Σ', right = 'λ' },
            -- section_separators = { left = 'Σa', right = 'λ' },
        },
        sections = {
            lualine_a = { 'mode' },
            lualine_b = { 'branch',
            {
                'diff',
                colored = true,
                diff_color = {
                    added = 'DiffAdd',
                    removed = 'DiffRemove',
                    modified = 'DiffChange',
                },
                symbols = {
                    added = '+',
                    modified = '~',
                    removed = '-',
                },
            },
            'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 'filesize', 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = { 'branch', 'diagnostics' },
            lualine_c = { 'filename' },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location' },
        },
    }
end

return M
