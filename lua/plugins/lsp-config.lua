return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			--pylsp required python3-venv to be installed
			--stylua had to be installed manually
			require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "pylsp" } })
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})
			vim.lsp.enable("lua_ls")
			vim.lsp.config("pylsp", {
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								maxLineLength = 120,
							},
						},
					},
				},
			})
			vim.lsp.enable("pylsp")
			vim.lsp.config("clangd", {})
			vim.lsp.enable("clangd")
			vim.lsp.config("nvim_lsp", {})
		end,
	},
}
