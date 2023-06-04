local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { dir = '~/.config/nvim/kvcr/' },
    'rktjmp/lush.nvim',
    'nvim-lua/plenary.nvim',
    { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate', config = function() require'config.treesitter'.config() end },
    {'nvim-telescope/telescope.nvim', config = function() require'config.telescope'.config() end},
    'nvim-lua/popup.nvim',
    {'numToStr/Comment.nvim', config = function() require'config.comment'.config() end},
    {
        'williamboman/mason.nvim',
        build = ':MasonUpdate',
        config = function()
            require 'config.mason'.config()
        end
    },
    -- 'williamboman/mason-lspconfig.nvim'
    { 'neovim/nvim-lspconfig', config = function() require'config.lsp'.config() end },

    -- cmp
    {'hrsh7th/nvim-cmp', config = function() require'config.cmp'.config() end},
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',

    --snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    {'kylechui/nvim-surround', config = function() require'config.surround'.config() end},
    { 'windwp/nvim-autopairs', config = function() require'config.autopairs'.config() end },
    { 'lukas-reineke/indent-blankline.nvim', config = function() require'config.indent'.config() end },
    {
        'folke/trouble.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function()
            require('trouble').setup {

            }
        end,
    },
    'kdheepak/cmp-latex-symbols',
    'lervag/vimtex',
    {
        'ggandor/leap.nvim',
        config = function()
            require 'leap'.add_default_mappings()
        end,
    },
    { 'nvim-tree/nvim-web-devicons', opt = true },
    { 'nvim-lualine/lualine.nvim', config = function() require'config.lualine'.config() end },
    {
        'rebelot/heirline.nvim',
        event = 'UiEnter',
    },
    { 'nvim-tree/nvim-tree.lua', config = function() require'config.tree'.config() end },
    {
        'Exafunction/codeium.vim',
        -- config = function()
        --     vim.keymap.set('i', '<C-Tab>', function() return vim.fn['codeium#Accept']() end, { expr = true })
        -- end
    },
    {'mfussenegger/nvim-dap', config = function() require'config.dap'.config() end},
    {'rcarriga/nvim-dap-ui', config = function() require'config.dapui'.config() end},
    {"rcarriga/nvim-notify", config = function() require'config.notify'.config() end},
    {
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
            })
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
        }
    },
    'folke/neodev.nvim'
})
