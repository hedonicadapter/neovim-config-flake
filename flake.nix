{
  description = "Neovim config";

  inputs = {
    nixpkgs = {url = "github:nixos/nixpkgs/nixos-unstable";};

    nur = {url = "github:nix-community/NUR";};

    awesome-neovim-plugins = {
      url = "github:m15a/flake-awesome-neovim-plugins";
    };

    nixneovimplugins = {url = "github:jooooscha/nixpkgs-vim-extra-plugins";};

    neovim-nightly-overlay = {
      url = "github:nix-community/neovim-nightly-overlay";
    };

    colors = {
      url = "github:hedonicadapter/colors-flake";
    };
  };

  outputs = {
    nixpkgs,
    colors,
    neovim-nightly-overlay,
    awesome-neovim-plugins,
    ...
  } @ inputs: let
    systems = ["x86_64-linux"];
    forAllSystems = nixpkgs.lib.genAttrs systems;

    pkgs = import nixpkgs {
      inherit systems;
      overlays = [
        inputs.nur.overlays.default
        inputs.awesome-neovim-plugins.overlays.default
        inputs.nixneovimplugins.overlays.default
      ];
    };

    toLua = str: ''
      lua << EOF
      ${str}
      EOF
    '';
    toLuaFile = file: ''
      lua << EOF
      ${builtins.readFile file}
      EOF
    '';

    luaColors = builtins.concatStringsSep "\n" (builtins.attrValues (builtins.mapAttrs (name: value: "vim.g['colors_${name}'] = ${builtins.toJSON value}") colors.outputs.colors));
    luaColorsOpaque = builtins.concatStringsSep "\n" (builtins.attrValues (builtins.mapAttrs (name: value: "vim.g['colors_${name}_opaque'] = ${builtins.toJSON value}") colors.outputs.colors_opaque));
  in {
    neovimConfig = {
      package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;

      extraLuaPackages = ps: [ps.magick];
      extraPackages = with pkgs; [imagemagick];

      plugins = with pkgs.vimPlugins; [
        {
          plugin = auto-session;
          config = toLua ''
            require('auto-session').setup({
            auto_restore = false,
            auto_save = true,
            log_level = "error",
            root_dir = vim.fn.stdpath('data').."/sessions/",
            suppressed_dirs = { "~/", "~/Documents/coding", "~/Downloads", "/" }
            })
          '';
        }

        {
          plugin = blink-cmp;
          config = toLua ''
            require("blink.cmp").setup({
              enabled = function ()
                buftype = vim.api.nvim_buf_get_option(0, "buftype")
                if buftype == "prompt" then return false end
              end,
              signature = {
                enabled = true,
              }
            })
          '';
        }

        {
          plugin = git-conflict-nvim;
          config = toLua ''
            require('git-conflict').setup()
          '';
        }

        {
          plugin = pkgs.awesomeNeovimPlugins.ts-error-translator-nvim;
          config = toLua ''
            require("ts-error-translator").setup()
          '';
        }

        promise-async
        {
          plugin = nvim-ufo; # folds
          config = toLua ''
            vim.o.foldcolumn = '0'
            vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
            vim.o.foldlevelstart = 99
            vim.o.foldenable = true

            vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
            vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
          '';
        }

        {
          plugin = nvim-lspconfig;
          config = toLuaFile ./nvim/plugins/lsp.lua;
        }

        {
          plugin = pkgs.awesomeNeovimPlugins.garbage-day-nvim;
          config = toLua ''
            require("garbage-day").setup({})
          '';
        }

        {
          plugin = pkgs.awesomeNeovimPlugins.hawtkeys-nvim; # mostly for :HawtkeysDupes to show duplicate keybinds
          config = toLua ''
            require("hawtkeys").setup({})
          '';
        }

        {
          plugin = sniprun;
          config = toLua ''
            require'sniprun'.setup({})
          '';
        }

        telescope-fzf-native-nvim
        plenary-nvim
        nvim-ts-autotag
        vim-visual-multi
        vim-wakatime
        nvim-ts-context-commentstring
        sqlite-lua

        {
          plugin = nvim-spider;
          config = toLua ''
            require('spider').setup({
              skipInsignificantPunctuation = false,
            })

            vim.keymap.set(
            	{ "n", "o", "x" },
            	"w",
            	"<cmd>lua require('spider').motion('w')<CR>",
            	{ desc = "Spider-w" }
            )
            vim.keymap.set(
            	{ "n", "o", "x" },
            	"e",
            	"<cmd>lua require('spider').motion('e')<CR>",
            	{ desc = "Spider-e" }
            )
            vim.keymap.set(
            	{ "n", "o", "x" },
            	"b",
            	"<cmd>lua require('spider').motion('b')<CR>",
            	{ desc = "Spider-b" }
            )
          '';
        }

        {
          plugin = flash-nvim;
          config = toLua ''
            require('flash').setup({
                prompt = {
                    enabled = true,
                    prefix = { { "   ", "FlashPromptIcon" } },
                },
                label = {
                  uppercase = false,
                  rainbow = {
                      enabled = true,
                      shade = 6,
                  },
                },
            })
          '';
        }

        {
          plugin = debugprint-nvim;
          config = toLua ''
            require("debugprint").setup()
          '';
        }

        {
          plugin = nvim-treesitter-context;
          config = toLua ''
            require("treesitter-context").setup({
              enable = true,
              max_lines = 3,
              separator = "_",
            })
          '';
        }

        {
          plugin = codecompanion-nvim;
          config = toLua ''
            require('codecompanion').setup({
              adapters = {
                anthropic = function()
                  return require("codecompanion.adapters").extend("anthropic", {
                    env = {
                      api_key = "cmd:op read op://personal/anthropic/credential --no-newline",
                    },
                  })
                end,
              },
              display = {
                chat = {
                  start_in_insert_mode = true,
                },
                action_palette = {
                  provider = "telescope",
                },
              },
            })
          '';
        }

        {
          plugin = markview-nvim;
          config = toLua ''
            require('markview').setup({
              preview = {
                filetypes = { "markdown", "codecompanion" },
                ignore_buftypes = {},
              },
            })
          '';
        }

        {
          plugin = image-nvim;
          config = toLua ''
            require("image").setup({
              backend = "kitty",
              kitty_method = "normal",
              integrations = {
                markdown = {
                  enabled = true,
                  clear_in_insert_mode = false,
                  download_remote_images = true,
                  only_render_image_at_cursor = true,
                  filetypes = { "markdown", "vimwiki", "html" },
                },
                html = {
                  enabled = true,
                  only_render_image_at_cursor = true,
                  filetypes = { "html", "xhtml", "htm" },
                },
                css = {
                  enabled = true,
                  only_render_image_at_cursor = true,
                },
              },
              max_width = nil,
              max_height = nil,
              max_width_window_percentage = nil,
              max_height_window_percentage = vim.g.neovim_mode == "skitty" and 30 or 40,

              window_overlap_clear_enabled = false,
              window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },

              editor_only_render_when_focused = vim.g.neovim_mode == "skitty" and false or true,
              tmux_show_only_in_active_window = true,

              hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
            })
          '';
        }
        {
          plugin = img-clip-nvim;
          config = toLua ''
            require("image").setup({
              default = {
                use_absolute_path = false,
                relative_to_current_file = true,

                dir_path = vim.g.neovim_mode == "skitty" and "img" or function()
                  return vim.fn.expand("%:t:r") .. "-img"
                end,

                prompt_for_file_name = false,
                file_name = "%y%m%d-%H%M%S",
              },

              filetypes = {
                markdown = {
                  url_encode_path = true,
                  template = vim.g.neovim_mode == "skitty" and "![i](./$FILE_PATH)" or "![Image](./$FILE_PATH)",
                  template = "![$FILE_NAME]($FILE_PATH)",
                },
              },
            })
          '';
        }

        nui-nvim

        {
          plugin = conform-nvim;
          config = toLua ''
            require('conform').setup({
             formatters_by_ft = {
              lua = { "stylua" },
              nix = { "alejandra" },
              javascript = { { "prettierd", "prettier" } },
              typescript = { { "prettierd", "prettier" } },
              javascriptreact = { { "prettierd", "prettier" } },
              typescriptreact = { { "prettierd", "prettier" } },
              json = { "prettierd" },
              html = { "prettierd" },
              css = { "prettierd" },
              scss = { "prettierd" },
              sass = { "prettierd" },
              astro = { "prettierd" },
              nix = { "alejandra"},
              bicep = { "bicep" },
              cs = {"csharpier"},
              go = {"gofmt"},
              sql = {"sqlfluff"},
              tf = {"terraform_fmt"},
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 1000,
                lsp_fallback = true,
              },
            })
          '';
        }

        diffview-nvim

        {
          plugin = oil-nvim;
          config = toLua ''
            require('oil').setup({
              delete_to_trash = true,
              show_hidden = true,
              natural_order = true,
              is_always_hidden = function(name,_)
                return name == '..' or name == '.git'
              end,
            })
            vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
          '';
        }

        {
          plugin = telescope-nvim;
          config = toLuaFile ./nvim/plugins/telescope.lua;
        }

        {
          plugin = pkgs.awesomeNeovimPlugins.tiny-code-action-nvim;
          config = toLua ''
            require("tiny-code-action").setup()
          '';
        }

        telescope-undo-nvim

        {
          plugin = nvim-neoclip-lua;
          config = toLua ''
            require('neoclip').setup()
          '';
        }

        {
          plugin = nvim-treesitter.withPlugins (p: [
            p.tree-sitter-nix
            p.tree-sitter-vim
            p.tree-sitter-vimdoc
            p.tree-sitter-luadoc
            p.tree-sitter-markdown
            p.tree-sitter-markdown-inline
            p.tree-sitter-bash
            p.tree-sitter-lua
            p.tree-sitter-json
            p.tree-sitter-astro
            p.tree-sitter-bicep
            p.tree-sitter-c-sharp
            p.tree-sitter-dockerfile
            p.tree-sitter-go
            p.tree-sitter-html
            p.tree-sitter-javascript
            p.tree-sitter-jsdoc
            p.tree-sitter-scss
            p.tree-sitter-sql
            p.tree-sitter-typescript
            p.tree-sitter-tsx
            p.tree-sitter-terraform
            p.tree-sitter-bicep
            p.tree-sitter-yaml
          ]);
          config = toLuaFile ./nvim/plugins/treesitter.lua;
        }

        {
          plugin = nvim-treesitter-textobjects;
          config = toLuaFile ./nvim/plugins/treesitter-textobjects.lua;
        }

        # {
        #   plugin = twilight-nvim;
        #   config = toLuaFile ./nvim/plugins/twilight.lua;
        # }
        {
          plugin = snacks-nvim;
          config = toLua ''
                   require('snacks').setup {
                     zen = { },
            }
          '';
        }

        {
          plugin = zoxide-vim;
          config = toLua ''
            vim.cmd [[command! -bang -nargs=* -complete=customlist,zoxide#complete Z zoxide#vim_cd <args>]]
          '';
        }

        {
          plugin = nvim-colorizer-lua;
          config = toLuaFile ./nvim/plugins/colorizer.lua;
        }

        {
          plugin = guess-indent-nvim;
          config = toLua ''
            require('guess-indent').setup()

            vim.api.nvim_exec([[
              autocmd BufEnter * silent! :GuessIndent
            ]], false)
          '';
        }

        {
          plugin = comment-nvim;
          config = toLua "require('Comment').setup()";
        }

        {
          plugin = eyeliner-nvim;
          config = toLua ''
            require('eyeliner').setup {
              highlight_on_key = true,
              dim = true
            }
          '';
        }

        {
          plugin = toggleterm-nvim;
          config = toLuaFile ./nvim/plugins/toggleterm.lua;
        }

        {
          plugin = nvim-cokeline;
          config = toLuaFile ./nvim/plugins/cokeline.lua;
        }

        {
          plugin = staline-nvim;
          config = toLua (import ./nvim/plugins/staline.lua.nix {inherit colors;});
        }

        {
          plugin = mini-nvim;
          config = toLuaFile ./nvim/plugins/mini.lua;
        }

        {
          plugin = gitsigns-nvim;
          config = toLua ''
            require('gitsigns').setup()
          '';
        }
        diffview-nvim

        {
          plugin = nvim-scrollbar;
          config = toLua ''
            require("scrollbar").setup({
              hide_if_all_visible = true,
              handle = {
                blend = 60,
              },
            })
            require("scrollbar.handlers.gitsigns").setup()
          '';
        }

        {
          plugin = hlchunk-nvim;
          config = toLua ''
            require("hlchunk").setup({
              chunk = {
                enable = true,
                style = { "${colors.outputs.colors_opaque.base09}" },
                delay = 100,
              },
            })
          '';
        }

        {
          plugin = nvim-web-devicons;
          config = toLua ''
            require('nvim-web-devicons').setup {}
          '';
        }
        {
          plugin = tiny-devicons-auto-colors-nvim;
          config = toLua ''
            require('tiny-devicons-auto-colors').setup({
                colors = {
                  "${colors.outputs.colors_opaque.base00}",
                  "${colors.outputs.colors_opaque.base01}",
                  "${colors.outputs.colors_opaque.base02}",
                  "${colors.outputs.colors_opaque.base03}",
                  "${colors.outputs.colors_opaque.base04}",
                  "${colors.outputs.colors_opaque.base05}",
                  "${colors.outputs.colors_opaque.base06}",
                  "${colors.outputs.colors_opaque.base07}",
                  "${colors.outputs.colors_opaque.base08}",
                  "${colors.outputs.colors_opaque.base09}",
                  "${colors.outputs.colors_opaque.base0A}",
                  "${colors.outputs.colors_opaque.base0B}",
                  "${colors.outputs.colors_opaque.base0C}",
                  "${colors.outputs.colors_opaque.base0D}",
                  "${colors.outputs.colors_opaque.base0E}",
                  "${colors.outputs.colors_opaque.base0F}",
                },
            })
          '';
        }

        {
          plugin = pkgs.vimExtraPlugins.reactive-nvim;
          config = let
            n = colors.outputs.colors_opaque.base03;
            i = colors.outputs.colors_opaque.base0F;
            c = colors.outputs.colors_opaque.base0E;
            v = colors.outputs.colors_opaque.base0C;
            y = colors.outputs.colors_opaque.base0D;
            r = colors.outputs.colors_opaque.base0E;

            contrast = 0.8;
          in
            toLua ''
              require('reactive').add_preset {
                name = "customCursorLine",
                init = function()
                  vim.opt.cursorline = true
                end,
                modes = {
                  n = {
                    winhl = {
                      CursorLine = { bg = "${colors.outputs.darken n contrast}"},
                      CursorLineNr = { fg = "${colors.outputs.colors_opaque.base07}", bg = "${colors.outputs.darken n contrast}" },
                    },
                    hl = {
                      Cursor = { bg = "${n}", fg = "${colors.outputs.colors_opaque.base07}" },
                    },
                  },
                  i = {
                    winhl = {
                      CursorLine = { bg = "${colors.outputs.darken i contrast}"},
                      CursorLineNr = { fg = "${i}", bg = "${colors.outputs.darken i contrast}" },
                    },
                    hl = {
                      Cursor = { bg = "${i}", fg = "${colors.outputs.colors_opaque.base00}" },
                    },
                  },
                  [{ "c", "C" }] = {
                    winhl = {
                      CursorLine = { bg = "${colors.outputs.darken c contrast}", fg = "${colors.outputs.colors_opaque.base07}"},
                      CursorLineNr = { fg = "${c}", bg = "${colors.outputs.darken c contrast}" },
                    },
                    hl = {
                      Cursor = { bg = "${c}", fg = "${colors.outputs.colors_opaque.base07}" },
                    },
                  },
                  -- visual
                  [{ "v", "V", "\x16" }] = {
                    winhl = {
                      Visual = { bg = "${colors.outputs.darken v contrast}"},
                      CursorLineNr = { fg = "${v}", bg = "${colors.outputs.darken v contrast}" },
                    },
                    hl = {
                      Cursor = { bg = "${v}", fg = "${colors.outputs.colors_opaque.base00}" },
                    },
                  },
                  -- replace
                  R = {
                    winhl = {
                      CursorLine = { bg = "${colors.outputs.darken r contrast}", fg = "${colors.outputs.colors_opaque.base07}"},
                      CursorLineNr = { fg = "${r}", bg = "${colors.outputs.darken r contrast}" },
                    },
                    hl = {
                      Cursor = { bg = "${r}", fg = "${colors.outputs.colors_opaque.base07}" },
                    },
                  },
                },
              }
              require('reactive').setup({
                load = { 'customCursorLine' }
              })
            '';
        }

        {
          plugin = dropbar-nvim; # breadcrumbs/context
          config = toLua ''
            require('dropbar').setup()
          '';
        }

        {
          plugin = dial-nvim;
          config = toLua ''
            vim.keymap.set("n", "<C-a>", function()
                require("dial.map").manipulate("increment", "normal")
            end)
            vim.keymap.set("n", "<C-x>", function()
                require("dial.map").manipulate("decrement", "normal")
            end)
            vim.keymap.set("n", "g<C-a>", function()
                require("dial.map").manipulate("increment", "gnormal")
            end)
            vim.keymap.set("n", "g<C-x>", function()
                require("dial.map").manipulate("decrement", "gnormal")
            end)
            vim.keymap.set("v", "<C-a>", function()
                require("dial.map").manipulate("increment", "visual")
            end)
            vim.keymap.set("v", "<C-x>", function()
                require("dial.map").manipulate("decrement", "visual")
            end)
            vim.keymap.set("v", "g<C-a>", function()
                require("dial.map").manipulate("increment", "gvisual")
            end)
            vim.keymap.set("v", "g<C-x>", function()
                require("dial.map").manipulate("decrement", "gvisual")
            end)
          '';
        }

        {
          plugin = quicker-nvim;
          config = toLua ''
            require("quicker").setup()
          '';
        }
      ];

      extraLuaConfig = ''
        ${luaColors}
        ${luaColorsOpaque}

        ${builtins.readFile ./nvim/lua/plugins/toggle-print.lua}
        ${builtins.readFile ./nvim/lua/utils.lua}
        ${import ./nvim/lua/options.lua.nix {inherit colors;}}
        ${builtins.readFile ./nvim/lua/keymaps.lua}
        ${builtins.readFile ./nvim/init.lua}
      '';
    };
  };
}
