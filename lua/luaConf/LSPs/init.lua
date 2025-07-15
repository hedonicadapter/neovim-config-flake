local catUtils = require("nixCatsUtils")
if catUtils.isNixCats and nixCats("lspDebugMode") then
	vim.lsp.set_log_level("debug")
end

vim.diagnostic.config({
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "󰧑",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
	inlay_hints = {
		enabled = false,
	},
})

-- NOTE: This file uses lzextras.lsp handler https://github.com/BirdeeHub/lzextras?tab=readme-ov-file#lsp-handler
local old_ft_fallback = require("lze").h.lsp.get_ft_fallback()
require("lze").h.lsp.set_ft_fallback(function(name)
	local lspcfg = nixCats.pawsible({ "allPlugins", "opt", "nvim-lspconfig" })
		or nixCats.pawsible({ "allPlugins", "start", "nvim-lspconfig" })
	if lspcfg then
		local ok, cfg = pcall(dofile, lspcfg .. "/lsp/" .. name .. ".lua")
		if not ok then
			ok, cfg = pcall(dofile, lspcfg .. "/lua/lspconfig/configs/" .. name .. ".lua")
		end
		return (ok and cfg or {}).filetypes or {}
	else
		return old_ft_fallback(name)
	end
end)
require("lze").load({
	{
		"nvim-lspconfig",
		for_cat = "general.always",
		lsp = function(plugin)
			vim.lsp.config(plugin.name, plugin.lsp or {})
			vim.lsp.enable(plugin.name)
		end,
		before = function(_)
			vim.lsp.config("*", {
				on_attach = require("luaConf.LSPs.on_attach"),
				capabilities = require("luaConf.LSPs.capabilities"),
			})
		end,
	},

	{
		"lua_ls",
		enabled = nixCats("general"),
		-- provide a table containing filetypes,
		-- and then whatever your functions defined in the function type specs expect.
		-- in our case, it just expects the normal lspconfig setup options,
		-- but with a default on_attach and capabilities
		lsp = {
			on_init = function(client)
				local path = client.workspace_folders[1].name
				if vim.loop.fs_stat(path .. "/.luarc.json") or vim.loop.fs_stat(path .. "/.luarc.jsonc") then
					return
				end

				client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
					runtime = {
						-- Tell the language server which version of Lua you're using
						-- (most likely LuaJIT in the case of Neovim)
						version = "LuaJIT",
					},
					-- Make the server aware of Neovim runtime files
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTIME,
							-- Depending on the usage, you might want to add additional paths here.
							-- "${3rd}/luv/library"
							-- "${3rd}/busted/library",
						},
						-- or pull in all of 'runtimepath'. NOTE: this is a lot slower
						-- library = vim.api.nvim_get_runtime_file("", true)
					},
				})
			end,
			settings = {
				Lua = {
					runtime = { version = "LuaJIT" },
					formatters = {
						ignoreComments = true,
					},
					signatureHelp = { enabled = true },
					diagnostics = {
						globals = { "nixCats", "vim" },
						disable = { "missing-fields" },
					},
					telemetry = { enabled = false },
				},
			},
		},
	},
	{
		"gopls",
		for_cat = "go",
		enabled = nixCats("go"),
		-- if you don't provide the filetypes it asks lspconfig for them
		lsp = {
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
		},
	},
	{
		"nil_ls",
		enabled = nixCats("general"),
		lsp = {
			filetypes = { "nix" },
		},
	},
	{
		"nixd",
		enabled = nixCats("general"),
		lsp = {
			filetypes = { "nix" },
			settings = {
				nixd = {
					-- we passed this in via the `extra` table in our packageDefinitions
					-- for additional configuration options, refer to:
					nixpkgs = {
						-- in the extras set of your package definition:
						-- nixdExtras.nixpkgs = ''import ${pkgs.path} {}''
						expr = nixCats.extra("nixdExtras.nixpkgs") or [[import <nixpkgs> {}]],
					},
					options = {
						-- If you integrated with your system flake,
						-- you should use inputs.self as the path to your system flake
						-- that way it will ALWAYS work, regardless
						-- of where your config actually was.
						nixos = {
							-- nixdExtras.nixos_options = ''(builtins.getFlake "path:${builtins.toString inputs.self.outPath}").nixosConfigurations.configname.options''
							expr = nixCats.extra("nixdExtras.nixos_options"),
						},
						-- If you have your config as a separate flake, inputs.self would be referring to the wrong flake.
						-- You can override the correct one into your package definition on import in your main configuration,
						-- or just put an absolute path to where it usually is and accept the impurity.
						["home-manager"] = {
							-- nixdExtras.home_manager_options = ''(builtins.getFlake "path:${builtins.toString inputs.self.outPath}").homeConfigurations.configname.options''
							expr = nixCats.extra("nixdExtras.home_manager_options"),
						},
					},
					formatting = {
						command = { "nixfmt" },
					},
					diagnostic = {
						suppress = {
							"sema-escaping-with",
						},
					},
				},
			},
		},
	},
	{
		"bicep",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "dotnet", vim.fn.system("which bicep"):gsub("%s+", "") },
		},
	},
	{
		"ts_ls",
		enabled = nixCats("web"),
		lsp = {
			single_file_support = true,
			-- root_dir = require("lspconfig.util").root_pattern(".git"),
			completions = {
				completeFunctionCalls = true,
			},
			settings = {
				javascript = {
					inlayHints = {
						includeInlayEnumMemberValueHints = false,
						includeInlayFunctionLikeReturnTypeHints = false,
						includeInlayFunctionParameterTypeHints = false,
						includeInlayParameterNameHints = "none", -- 'none' | 'literals' | 'all';
						includeInlayParameterNameHintsWhenArgumentMatchesName = false,
						includeInlayPropertyDeclarationTypeHints = false,
						includeInlayVariableTypeHints = false,
					},
				},

				typescript = {
					inlayHints = {
						includeInlayEnumMemberValueHints = false,
						includeInlayFunctionLikeReturnTypeHints = false,
						includeInlayFunctionParameterTypeHints = false,
						includeInlayParameterNameHints = "none", -- 'none' | 'literals' | 'all';
						includeInlayParameterNameHintsWhenArgumentMatchesName = false,
						includeInlayPropertyDeclarationTypeHints = false,
						includeInlayVariableTypeHints = false,
					},
				},
			},
		},
	},
	{
		"tailwindcss",
		enabled = nixCats("web"),
		lsp = {
			completions = {
				completeFunctionCalls = true,
			},
			root_dir = require("lspconfig").util.root_pattern(
				"tailwind.config.js",
				"tailwind.config.cjs",
				"tailwind.config.ts",
				"postcss.config.js",
				"postcss.config.cjs",
				"postcss.config.ts"
			),
		},
	},
	{
		"azure_pipelines_ls",
		enabled = nixCats("infrastructure"),
		lsp = {
			settings = {
				yaml = {
					schemas = {
						["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
							"/azure-pipeline*.y*l",
							"/*.azure*",
							"Azure-Pipelines/**/*.y*l",
							"Pipelines/*.y*l",
						},
					},
				},
			},
		},
	},
	{
		"cssls",
		enabled = nixCats("web"),
		lsp = {},
	},
	{
		"dockerls",
		enabled = nixCats("infrastructure"),
		lsp = {},
	},
	{
		"html",
		enabled = nixCats("web"),
		lsp = {},
	},
	{
		"htmx",
		enabled = nixCats("web"),
		lsp = {},
	},
	{
		"jsonls",
		enabled = nixCats("web"),
		lsp = {},
	},
	{
		"sqls",
		enabled = nixCats("infrastructure"),
		lsp = {},
	},

	{
		"astro",
		enabled = nixCats("web"),
		lsp = {},
	},
	{
		"bashls",
		enabled = nixCats("general"),
		lsp = {},
	},
	{
		"terraformls",
		enabled = nixCats("infrastructure"),
		lsp = {},
	},
	{
		"vimls",
		enabled = nixCats("general"),
		lsp = {},
	},
	{
		"yamlls",
		enabled = nixCats("general"),
		lsp = {},
	},
	{
		"ansiblels",
		enabled = nixCats("infrastructure"),
		lsp = {},
	},
	{
		"basedpyright",
		enabled = nixCats("general"),
		lsp = {},
	},
	{
		"mdx_analyzer",
		enabled = nixCats("web"),
		lsp = {},
	},
})

if nixCats("infrastructure") then
	vim.cmd([[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]])
end
