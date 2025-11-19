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
	float = {
		severity_sort = true,
		border = "single",
		focusable = true,
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
			cmd = { "gopls" },
			filetypes = { "go", "gomod", "gowork", "gotmpl" },
		},
	},
	{
		"golangci_lint_ls",
		for_cat = "go",
		enabled = nixCats("go"),
		lsp = {
			cmd = { "golangci-lint-langserver" },
			filetypes = { "go", "gomod" },
			init_options = {
				command = { "golangci-lint", "run", "--output.json.path=stdout", "--show-stats=false" },
			},
			root_markers = {
				".golangci.yml",
				".golangci.yaml",
				".golangci.toml",
				".golangci.json",
				"go.work",
				"go.mod",
				".git",
			},
			before_init = function(_, config)
				-- Add support for golangci-lint V1 (in V2 `--out-format=json` was replaced by
				-- `--output.json.path=stdout`).
				local v1, v2 = false, false
				-- PERF: `golangci-lint version` is very slow (about 0.1 sec) so let's find
				-- version using `go version -m $(which golangci-lint) | grep '^\smod'`.
				if vim.fn.executable("go") == 1 then
					local exe = vim.fn.exepath("golangci-lint")
					local version = vim.system({ "go", "version", "-m", exe }):wait()
					v1 = string.match(version.stdout, "\tmod\tgithub.com/golangci/golangci%-lint\t")
					v2 = string.match(version.stdout, "\tmod\tgithub.com/golangci/golangci%-lint/v2\t")
				end
				if not v1 and not v2 then
					local version = vim.system({ "golangci-lint", "version" }):wait()
					v1 = string.match(version.stdout, "version v?1%.")
				end
				if v1 then
					config.init_options.command = { "golangci-lint", "run", "--out-format", "json" }
				end
			end,
		},
	},

	{
		"statix",
		enabled = nixCats("general"),
		lsp = {
			filetypes = { "nix" },
			cmd = { "statix", "check", "--stdin" },
			root_markers = { "flake.nix", ".git" },
		},
	},
	{
		"nil_ls",
		enabled = nixCats("general"),
		lsp = {
			filetypes = { "nix" },
			cmd = { "nil" },
			root_markers = { "flake.nix", ".git" },
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
		"eslint",
		enabled = nixCats("web"),
		lsp = {
			filetypes = {
				"javascript",
				"javascriptreact",
				"javascript.jsx",
				"typescript",
				"typescriptreact",
				"typescript.tsx",
				"vue",
				"svelte",
				"astro",
				"htmlangular",
			},
			cmd = { "vscode-eslint-language-server", "--stdio" },
		},
	},
	{
		"cssls",
		enabled = nixCats("web"),
		lsp = {
			cmd = { "vscode-css-language-server", "--stdio" },
			filetypes = { "css", "scss", "less" },
			root_markers = { "package.json", ".git" },
			settings = {
				css = {
					validate = true,
				},
				less = {
					validate = true,
				},
				scss = {
					validate = true,
				},
			},
		},
	},
	{
		"html",
		enabled = nixCats("web"),
		lsp = {
			cmd = { "vscode-html-language-server", "--stdio" },
			filetypes = { "html", "templ" },
			init_options = {
				configurationSection = { "html", "css", "javascript" },
				embeddedLanguages = {
					css = true,
					javascript = true,
				},
				provideFormatter = true,
			},
			root_markers = { "package.json", ".git" },
		},
	},
	{
		"htmx",
		enabled = nixCats("web"),
		lsp = {
			cmd = { "htmx-lsp" },
			filetypes = {
				"aspnetcorerazor",
				"astro",
				"astro-markdown",
				"blade",
				"clojure",
				"django-html",
				"htmldjango",
				"edge",
				"eelixir",
				"elixir",
				"ejs",
				"erb",
				"eruby",
				"gohtml",
				"gohtmltmpl",
				"haml",
				"handlebars",
				"hbs",
				"html",
				"htmlangular",
				"html-eex",
				"heex",
				"jade",
				"leaf",
				"liquid",
				"markdown",
				"mdx",
				"mustache",
				"njk",
				"nunjucks",
				"php",
				"razor",
				"slim",
				"twig",
				"javascript",
				"javascriptreact",
				"reason",
				"rescript",
				"typescript",
				"typescriptreact",
				"vue",
				"svelte",
				"templ",
			},
			root_markers = { ".git" },
		},
	},
	{
		"jsonls",
		enabled = nixCats("web"),
		lsp = {
			cmd = { "vscode-json-language-server", "--stdio" },
			filetypes = { "json", "jsonc" },
			root_markers = { ".git" },
		},
	},
	{
		"sqls",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "sqls" },
			filetypes = { "sql", "mysql" },
			root_markers = { "config.yml" },
		},
	},

	{
		"astro",
		enabled = nixCats("web"),
		lsp = {
			cmd = { "astro-ls", "--stdio" },
			filetypes = { "astro" },
			root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
			init_options = {
				typescript = {},
			},
			before_init = function(_, config)
				if
					config.init_options
					and config.init_options.typescript
					and not config.init_options.typescript.tsdk
				then
					config.init_options.typescript.tsdk =
						require("lspconfig.util").get_typescript_server_path(config.root_dir)
				end
			end,
		},
	},
	{
		"bashls",
		enabled = nixCats("general"),
		lsp = {
			cmd = { "bash-language-server", "start" },
			filetypes = { "bash", "sh" },
			root_markers = { ".git" },
			settings = {
				bashIde = {
					globPattern = "*@(.sh|.inc|.bash|.command)",
				},
			},
		},
	},
	{
		"terraformls",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "terraform-ls", "serve" },
			filetypes = { "terraform", "terraform-vars" },
			root_markers = { ".terraform", ".git" },
		},
	},
	{
		"tflint",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "tflint", "--langserver" },
			filetypes = { "terraform" },
			root_markers = { ".terraform", ".git", ".tflint.hcl" },
		},
	},
	{
		"docker_compose_language_service",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "docker-compose-langserver", "--stdio" },
			filetypes = { "yaml.docker-compose" },
			root_markers = { "docker-compose.yaml", "docker-compose.yml", "compose.yaml", "compose.yml" },
		},
	},
	{
		"docker-language-server",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "docker-language-server", "start", "--stdio" },
			filetypes = { "dockerfile", "yaml.docker-compose" },
			root_markers = {
				"Dockerfile",
				"docker-compose.yaml",
				"docker-compose.yml",
				"compose.yaml",
				"compose.yml",
				"docker-bake.json",
				"docker-bake.hcl",
				"docker-bake.override.json",
				"docker-bake.override.hcl",
			},
		},
		get_language_id = function(_, ftype)
			if ftype == "yaml.docker-compose" or ftype:lower():find("ya?ml") then
				return "dockercompose"
			else
				return ftype
			end
		end,
	},
	{
		"dockerls",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "docker-langserver", "--stdio" },
			filetypes = { "dockerfile" },
			root_markers = { "Dockerfile" },
		},
	},
	{
		"vimls",
		enabled = nixCats("general"),
		lsp = {
			cmd = { "vim-language-server", "--stdio" },
			filetypes = { "vim" },
			root_markers = { ".git" },
			init_options = {
				diagnostic = {
					enable = true,
				},
				indexes = {
					count = 3,
					gap = 100,
					projectRootPatterns = { "runtime", "nvim", ".git", "autoload", "plugin" },
					runtimepath = true,
				},
				isNeovim = true,
				iskeyword = "@,48-57,_,192-255,-#",
				runtimepath = "",
				suggest = {
					fromRuntimepath = true,
					fromVimruntime = true,
				},
				vimruntime = "",
			},
		},
	},
	{
		"yamlls",
		enabled = nixCats("general"),
		lsp = {
			settings = {
				yaml = {
					schemas = {
						kubernetes = "*.yaml",
						["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
						["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
						["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
						["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
						["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
						["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
						["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
						["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
						["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
						["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
						["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
						["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
					},
				},
			},
		},
	},
	{
		"ansiblels",
		enabled = nixCats("infrastructure"),
		lsp = {
			cmd = { "ansible-language-server", "--stdio" },
			filetypes = { "yaml.ansible" },
			root_markers = { "ansible.cfg", ".ansible-lint" },
			settings = {
				ansible = {
					ansible = {
						path = "ansible",
					},
					executionEnvironment = {
						enabled = false,
					},
					python = {
						interpreterPath = "python",
					},
					validation = {
						enabled = true,
						lint = {
							enabled = true,
							path = "ansible-lint",
						},
					},
				},
			},
		},
	},
	{
		"basedpyright",
		enabled = nixCats("general"),
		lsp = {
			cmd = { "basedpyright-langserver", "--stdio" },
			filetypes = { "python" },
			root_markers = {
				"pyrightconfig.json",
				"pyproject.toml",
				"setup.py",
				"setup.cfg",
				"requirements.txt",
				"Pipfile",
				".git",
			},
			settings = {
				basedpyright = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true,
					},
				},
			},
		},
	},
	{
		"mdx_analyzer",
		enabled = nixCats("web"),
		lsp = {
			cmd = { "mdx-language-server", "--stdio" },
			filetypes = { "mdx" },
			root_markers = { "package.json" },
			settings = {},
			init_options = {
				typescript = {},
			},
			before_init = function(_, config)
				if
					config.init_options
					and config.init_options.typescript
					and not config.init_options.typescript.tsdk
				then
					config.init_options.typescript.tsdk =
						require("lspconfig.util").get_typescript_server_path(config.root_dir)
				end
			end,
		},
	},
	{
		"csharp_ls",
		enabled = nixCats("general"),
		lsp = {
			cmd = function(dispatchers, config)
				return vim.lsp.rpc.start({ "csharp-ls" }, dispatchers, {
					-- csharp-ls attempt to locate sln, slnx or csproj files from cwd, so set cwd to root directory.
					-- If cmd_cwd is provided, use it instead.
					cwd = config.cmd_cwd or config.root_dir,
					env = config.cmd_env,
					detached = config.detached,
				})
			end,
			root_dir = function(bufnr, on_dir)
				local util = require("lspconfig.util")
				local fname = vim.api.nvim_buf_get_name(bufnr)
				on_dir(
					util.root_pattern("*.sln")(fname)
						or util.root_pattern("*.slnx")(fname)
						or util.root_pattern("*.csproj")(fname)
				)
			end,
			filetypes = { "cs" },
			init_options = {
				AutomaticWorkspaceInit = true,
			},
		},
	},
	{
		"omnisharp",
		enabled = nixCats("general"),
		lsp = {
			cmd = {
				vim.fn.executable("OmniSharp") == 1 and "OmniSharp" or "omnisharp",
				"-z", -- https://github.com/OmniSharp/omnisharp-vscode/pull/4300
				"--hostPID",
				tostring(vim.fn.getpid()),
				"DotNet:enablePackageRestore=false",
				"--encoding",
				"utf-8",
				"--languageserver",
			},
			filetypes = { "cs", "vb" },
			root_dir = function(bufnr, on_dir)
				local util = require("lspconfig.util")
				local fname = vim.api.nvim_buf_get_name(bufnr)
				on_dir(
					util.root_pattern("*.sln")(fname)
						or util.root_pattern("*.csproj")(fname)
						or util.root_pattern("omnisharp.json")(fname)
						or util.root_pattern("function.json")(fname)
				)
			end,
			init_options = {},
			capabilities = {
				workspace = {
					workspaceFolders = false, -- https://github.com/OmniSharp/omnisharp-roslyn/issues/909
				},
			},
			settings = {
				FormattingOptions = {
					-- Enables support for reading code style, naming convention and analyzer
					-- settings from .editorconfig.
					EnableEditorConfigSupport = true,
					-- Specifies whether 'using' directives should be grouped and sorted during
					-- document formatting.
					OrganizeImports = nil,
				},
				MsBuild = {
					-- If true, MSBuild project system will only load projects for files that
					-- were opened in the editor. This setting is useful for big C# codebases
					-- and allows for faster initialization of code navigation features only
					-- for projects that are relevant to code that is being edited. With this
					-- setting enabled OmniSharp may load fewer projects and may thus display
					-- incomplete reference lists for symbols.
					LoadProjectsOnDemand = nil,
				},
				RoslynExtensionsOptions = {
					-- Enables support for roslyn analyzers, code fixes and rulesets.
					EnableAnalyzersSupport = nil,
					-- Enables support for showing unimported types and unimported extension
					-- methods in completion lists. When committed, the appropriate using
					-- directive will be added at the top of the current file. This option can
					-- have a negative impact on initial completion responsiveness,
					-- particularly for the first few completion sessions after opening a
					-- solution.
					EnableImportCompletion = nil,
					-- Only run analyzers against open files when 'enableRoslynAnalyzers' is
					-- true
					AnalyzeOpenDocumentsOnly = nil,
					-- Enables the possibility to see the code in external nuget dependencies
					EnableDecompilationSupport = nil,
				},
				RenameOptions = {
					RenameInComments = nil,
					RenameOverloads = nil,
					RenameInStrings = nil,
				},
				Sdk = {
					-- Specifies whether to include preview versions of the .NET SDK when
					-- determining which version to use for project loading.
					IncludePrereleases = true,
				},
			},
		},
	},
})

if nixCats("infrastructure") then
	vim.cmd([[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]])
end
