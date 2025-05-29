require("lze").load({
	{
		"conform.nvim",
		for_cat = "format",
		after = function(plugin)
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					nix = { "alejandra" },
					javascript = { "prettierd", "prettier" },
					typescript = { "prettierd", "prettier" },
					javascriptreact = { "prettierd", "prettier" },
					typescriptreact = { "prettierd", "prettier" },
					json = { "prettierd" },
					html = { "prettierd" },
					css = { "prettierd" },
					scss = { "prettierd" },
					sass = { "prettierd" },
					astro = { "prettierd" },
					bicep = { "bicep" },
					cs = { "csharpier" },
					go = { "gofmt" },
					sql = { "sqlfluff" },
					tf = { "terraform_fmt" },
				},
				format_on_save = {
					-- These options will be passed to conform.format()
					timeout_ms = 1000,
					lsp_fallback = true,
				},
			})
		end,
	},
})
