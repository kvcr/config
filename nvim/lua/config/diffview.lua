local M = {}

M.config = function()
vim.keymap.set("n", "<leader>df", ":DiffviewOpen ")
end

return M
