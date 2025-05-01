{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";

    nur.url = "github:nix-community/NUR";
    awesome-neovim-plugins.url = "github:m15a/flake-awesome-neovim-plugins";
    nixneovimplugins.url = "github:jooooscha/nixpkgs-vim-extra-plugins";
    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    colors.url = "github:hedonicadapter/colors-flake";
  };

  outputs = {
    nixvim,
    flake-parts,
    colors,
    neovim-nightly-overlay,
    nur,
    awesome-neovim-plugins,
    nixneovimplugins,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem = {system, ...}: let
        luaUtils = import ./luaUtils.nix;
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit system;
          module = {
            config = {
              colorschemes.gruvbox.enable = true;
              plugins = {
                auto-session = {
                  enable = true;
                  config = luaUtils.toLua ''
                    require('auto-session').setup({
                    auto_restore = false,
                    auto_save = true,
                    log_level = "error",
                    root_dir = vim.fn.stdpath('data').."/sessions/",
                    suppressed_dirs = { "~/", "~/Documents/coding", "~/Downloads", "/" }
                    })
                  '';
                };
              };
              extraLuaPackages = ps: [ps.magick];
              extraPackages = with inputs.nixpkgs.legacyPackages.${system}; [imagemagick];
              nixpkgs.overlays = [
                nur.overlays.default
                awesome-neovim-plugins.overlays.default
                nixneovimplugins.overlays.default
              ];
            };
          };
          extraSpecialArgs = {};
        };
        nvim = nixvim'.makeNixvimWithModule nixvimModule;
      in {
        checks = {
          # `nix flake check .`
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          default = nvim;
        };
      };
    };
}
