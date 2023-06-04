require 'options'
require 'keymap'
require 'keymaps'
require 'lzy'

-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--     vim.fn.system({
--         "git",
--         "clone",
--         "--filter=blob:none",
--         "https://github.com/folke/lazy.nvim.git",
--         "--branch=stable", -- latest stable release
--         lazypath,
--     })
-- end
--
-- vim.opt.rtp:prepend(lazypath)
--

vim.cmd "colorscheme kvcr"
vim.cmd "highlight Normal guibg=NONE ctermbg=NONE"
vim.cmd "highlight NonText guibg=NONE ctermbg=NONE"
