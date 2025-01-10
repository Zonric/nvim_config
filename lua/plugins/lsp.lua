return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		enabled = true,
		opts = {},
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		enabled = true,
		opts = {},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"angularls", "asm_lsp", "awk_ls", "bashls", "clangd", "neocmake", "csharp_ls",
					"cssls", "dockerls", "glsl_analyzer", "gopls", "html", "htmx",
					"intelephense", "jdtls", "jsonls", "lua_ls", "marksman", "mesonlsp",
					"powershell_es", "pyright", "rust_analyzer", "sqlls",
					"svelte", "ts_ls",
				}
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		enabled = true,
		opts = {},
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({})
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
		end,
	},
}
