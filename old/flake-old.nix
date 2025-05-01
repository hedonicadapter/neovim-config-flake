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
    systems = ["x86_64-linux" "aarch64-darwin"];

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
        # {
        #   plugin = nvim-lspconfig;
        #   config = toLuaFile ./nvim/plugins/lsp.lua;
        # }

        {
          plugin = staline-nvim;
          config = toLua (import ./nvim/plugins/staline.lua.nix {inherit colors;});
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
      ];

      extraLuaConfig = ''
        ${luaColors}
        ${luaColorsOpaque}

        ${builtins.readFile ./nvim/lua/utils.lua}
        ${import ./nvim/lua/options.lua.nix {inherit colors;}}
      '';
    };
  };
}
