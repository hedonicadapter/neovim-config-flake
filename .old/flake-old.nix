{
  description = "old neovim config";

  inputs = };
  };

  outputs = {
    ...
  } @ inputs: let
  in {
    neovimConfig = {
      # extraPackages = with pkgs; [imagemagick];

      plugins = with pkgs.vimPlugins; [
        # {
        #   plugin = nvim-lspconfig;
        #   config = toLuaFile ./nvim/plugins/lsp.lua;
        # }
      ];

      extraLuaConfig = ''
        ${luaColors}
        ${luaColorsOpaque}

        ${builtins.readFile ./nvim/lua/utils.lua}
      '';
    };
  };
}
