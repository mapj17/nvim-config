--Put in a reparate file to be loaded last. Hover did not seem to work otherwise.
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>fd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>fi", vim.lsp.buf.implementation, {})
