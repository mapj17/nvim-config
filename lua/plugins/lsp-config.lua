return {
    {
        "williamboman/mason.nvim",
        config = function ()
        require("mason").setup({})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function ()
        --pylsp required python3-venv to be installed
        require("mason-lspconfig").setup({ensure_installed = {"lua_ls", "pylsp"}})
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        lspconfig.pylsp.setup({})
        vim.keymap.set("n", "<leader>h", "vim.lsp.buf.hover", {})
        end
    }
}


