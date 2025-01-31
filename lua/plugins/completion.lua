return {
	{
		"Exafunction/codeium.nvim",
		enabled = true,
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {},
	},
	{
		"onsails/lspkind.nvim",
		opts = {
			mode = "symbol_text",
			preset = "codicons",
			symbol_map = {
				Text = "󰉿",
				Method = "󰆧",
				Function = "󰊕",
				Constructor = "",
				Field = "󰜢",
				Variable = "󰀫",
				Class = "󰠱",
				Interface = "",
				Module = "",
				Property = "󰜢",
				Unit = "󰑭",
				Value = "󰎠",
				Enum = "",
				Keyword = "󰌋",
				Snippet = "",
				Color = "󰏘",
				File = "󰈙",
				Reference = "󰈇",
				Folder = "󰉋",
				EnumMember = "",
				Constant = "󰏿",
				Struct = "󰙅",
				Event = "",
				Operator = "󰆕",
				TypeParameter = "",
				Codeium = "󰆨",
			},
		},
	},
	{
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" }},
				{ path = "lazy.nvim", words = { "LazyVim" } },
			},
		},
	},
	{
		"L3MON4D3/LuaSnip",
		enabled = true,
		lazy = false,
		build = "make install_jsregexp",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		opts = {
			history = true,
		},
	},
	{
		"hrsh7th/nvim-cmp",
		enabled = true,
		lazy = true,
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-emoji",
		},
		opts = {},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			luasnip.config.setup {
				require("luasnip.loaders.from_vscode").lazy_load()
			}

			local lspkind = require("lspkind")
			cmp.setup({
---@diagnostic disable-next-line: missing-fields
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol_text",
						maxwidth = {
							menu = 50,
							abbr = 50,
						},
						show_labelDetails = true,
---@diagnostic disable-next-line: unused-local
						before = function(entry, vim_item)
							return vim_item
						end
					})
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				completion = { completopt = "menu,menuone,noinsert" },
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "lazydev", group_inde = 0, },
					{ name = "codeium" },
					{ name = "luasnip" },
					{ name = "path" },
					{ name = "cmdline" },
					{ name = "emoji" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
