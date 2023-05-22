local lsp = require 'lspconfig'
local capabilities = require 'cmp_nvim_lsp'.default_capabilities()

vim.cmd [[ autocmd BufWritePre * lua vim.lsp.buf.format() ]]

vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

lsp.rust_analyzer.setup {

}

lsp.clangd.setup {

}

lsp.rust_analyzer.setup {

}

lsp.gopls.setup {}

lsp.lua_ls.setup {}

lsp.hls.setup {}

lsp.emmet_ls.setup {
    filetypes = { 'html', 'vue' },
}

lsp.julials.setup {

}

lsp.svelte.setup {}
