local nvim_lsp = require("lspconfig")

nvim_lsp.tsserver.setup({
  on_attach = function(client, buffer)
    local opts = { noremap = true, silent = true }

    -- keymaps
    -- vim.api.nvim_buf_set_keymap(buffer, "n", "gi", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    -- vim.api.nvim_buf_set_keymap(buffer, "n", "gr", "<Cmd>lua vim.lsp.buf.references()<CR>", opts)
    -- vim.api.nvim_buf_set_keymap(buffer, "n", "gD", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    -- vim.cmd([[ command! Format excute 'lua vim.lsp.buf.formatting()' ]])
  end,
  flags = {
    debounce_text_changs = 150,
  },
})
