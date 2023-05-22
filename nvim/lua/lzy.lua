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
    { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate' },
    'nvim-telescope/telescope.nvim',
    'nvim-lua/popup.nvim',
    'numToStr/Comment.nvim',
    'williamboman/mason.nvim',
    -- 'williamboman/mason-lspconfig.nvim'
    'neovim/nvim-lspconfig',

    -- cmp
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',

    --snippets
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',

    'windwp/nvim-autopairs',
    'lukas-reineke/indent-blankline.nvim',
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
    { 'nvim-lualine/lualine.nvim', },
    {
        'rebelot/heirline.nvim',
        event = 'UiEnter',
    },
    'nvim-tree/nvim-tree.lua',
    {
        'Exafunction/codeium.vim',
        -- config = function()
        --     vim.keymap.set('i', '<C-Tab>', function() return vim.fn['codeium#Accept']() end, { expr = true })
        -- end
    },
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    {
        "folke/noice.nvim",
        config = function()
            require("noice").setup({
            })
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    }
})
