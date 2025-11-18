# Copyright (c) 2023 BirdeeHub
# Licensed under the MIT license
{
  description = "C*ts are genuinely horrible people. Anywhoozers this is my nvim config using the unfortunately named nixc*ts";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixCats.url = "github:BirdeeHub/nixCats-nvim";

    neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";
    nur.url = "github:nix-community/NUR";
    awesome-neovim-plugins.url = "github:m15a/flake-awesome-neovim-plugins";
    nixneovimplugins.url = "github:jooooscha/nixpkgs-vim-extra-plugins";
    colors.url = "github:hedonicadapter/colors-flake";

    "plugins-kubectl-nvim" = {
      url = "github:ramilito/kubectl.nvim";
      flake = false;
    };
  };

  # see :help nixCats.flake.outputs
  outputs = {
    self,
    nixpkgs,
    nixCats,
    colors,
    nur,
    awesome-neovim-plugins,
    nixneovimplugins,
    ...
  } @ inputs: let
    inherit (nixCats) utils;
    luaPath = "${./.}";
    forEachSystem = utils.eachSystem nixpkgs.lib.platforms.all; # this is flake-utils eachSystem
    # the following extra_pkg_config contains any values
    # which you want to pass to the config set of nixpkgs
    # import nixpkgs { config = extra_pkg_config; inherit system; }
    # will not apply to module imports
    # as that will have your system values
    extra_pkg_config = {allowUnfree = true;};
    # management of the system variable is one of the harder parts of using flakes.

    # so I have done it here in an interesting way to keep it out of the way.
    # It gets resolved within the builder itself, and then passed to your
    # categoryDefinitions and packageDefinitions.

    # this allows you to use ${pkgs.system} whenever you want in those sections
    # without fear.

    # see :help nixCats.flake.outputs.overlays
    dependencyOverlays =
      /*
      (import ./overlays inputs) ++
      */
      [
        # This overlay grabs all the inputs named in the format
        # `plugins-<pluginName>`
        # Once we add this overlay to our nixpkgs, we are able to
        # use `pkgs.neovimPlugins`, which is a set of our plugins.
        (utils.standardPluginOverlay inputs)
        # add any other flake overlays here.
        nur.overlays.default
        awesome-neovim-plugins.overlays.default
        nixneovimplugins.overlays.default

        # when other people mess up their overlays by wrapping them with system,
        # you may instead call this function on their overlay.
        # it will check if it has the system in the set, and if so return the desired overlay
        # (utils.fixSystemizedOverlay inputs.codeium.overlays
        #   (system: inputs.codeium.overlays.${system}.default)
        # )
      ];

    # see :help nixCats.flake.outputs.categories
    # and
    # :help nixCats.flake.outputs.categoryDefinitions.scheme
    categoryDefinitions = {
      pkgs,
      settings,
      categories,
      extra,
      name,
      mkPlugin,
      ...
    } @ packageDef: {
      # to define and use a new category, simply add a new list to a set here,
      # and later, you will include categoryname = true; in the set you
      # provide when you build the package using this builder function.
      # see :help nixCats.flake.outputs.packageDefinitions for info on that section.

      # lspsAndRuntimeDeps:
      # this section is for dependencies that should be available
      # at RUN TIME for plugins. Will be available to PATH within neovim terminal
      # this includes LSPs
      lspsAndRuntimeDeps = {
        general = with pkgs;
          [
            imagemagick
            universal-ctags
            ripgrep
            fd
            gnupg
            curl
            ripgrep
          ] # Language servers
          ++ [
            nil
            nixd
            lua-language-server
            vim-language-server
            nodePackages.bash-language-server
            yaml-language-server
            vscode-langservers-extracted
          ]
          # Formatters & linters
          ++ [
            alejandra
            statix
            stylua
            sqlfluff
          ]
          # Fonts
          ++ [
            nerd-fonts.symbols-only
            dejavu_fonts
          ];

        infrastructure = with pkgs; [
          kubectl
          tflint
          docker-compose-language-service
          dockerfile-language-server-nodejs
          docker-language-server
        ];

        web = with pkgs; [
          prettierd
          # prettier
        ];

        go = with pkgs; [
          golangci-lint
          golangci-lint-langserver
          go-tools
        ];
      };

      # This is for plugins that will load at startup without using packadd:
      startupPlugins = {
        general = with pkgs.vimPlugins; {
          # you can make subcategories!!!
          # (always isnt a special name, just the one I chose for this subcategory)
          always = [
            oil-nvim
            nvim-lspconfig
            nvim-cokeline
            nui-nvim
            auto-session
            git-conflict-nvim
            sqlite-lua
            promise-async
            lze
            lzextras
            plenary-nvim
            nvim-treesitter-context
            nvim-neoclip-lua
            snacks-nvim
            zoxide-vim
            eyeliner-nvim
            dropbar-nvim # breadcrumbs
            quicker-nvim
            nvim-bqf
          ];
          extra = [
            image-nvim
            img-clip-nvim
            vim-wakatime
            pkgs.awesomeNeovimPlugins.hawtkeys-nvim
            pkgs.awesomeNeovimPlugins.garbage-day-nvim
            pkgs.awesomeNeovimPlugins.tiny-code-action-nvim
            pkgs.vimExtraPlugins.reactive-nvim
            hlchunk-nvim
            base16-nvim
            obsidian-nvim
          ];
        };

        infrastructure = with pkgs.vimPlugins; {
          always = [
            pkgs.neovimPlugins.kubectl-nvim
          ];
          extra = [];
        };

        web = with pkgs.vimPlugins; {
          always = [
            pkgs.awesomeNeovimPlugins.ts-error-translator-nvim
          ];
          extra = [];
        };

        go = with pkgs.vimPlugins; {
          always = [];
          extra = [];
        };
      };

      # not loaded automatically at startup.
      # use with packadd and an autocommand in config to achieve lazy loading
      # or a tool for organizing this like lze or lz.n!
      # to get the name packadd expects, use the
      # `:NixCats pawsible` command to see them all
      optionalPlugins = {
        debug = with pkgs.vimPlugins; {
          # it is possible to add default values.
          # there is nothing special about the word "default"
          # but we have turned this subcategory into a default value
          # via the extraCats section at the bottom of categoryDefinitions.
          default = [
            nvim-dap
            nvim-dap-ui
            nvim-dap-virtual-text
          ];
          go = [nvim-dap-go];
        };
        format = with pkgs.vimPlugins; {
          default = [conform-nvim];
          web = with pkgs; [
            nodePackages.prettier
            prettierd
          ];
        };
        general = {
          blink = with pkgs.vimPlugins; [
            friendly-snippets
            cmp-cmdline
            blink-cmp
            blink-compat
            colorful-menu-nvim
          ];
          treesitter = with pkgs.vimPlugins; [
            nvim-treesitter-context
            nvim-treesitter-textobjects
            nvim-treesitter.withAllGrammars
            nvim-ts-autotag
            nvim-ts-context-commentstring
          ];
          telescope = with pkgs.vimPlugins; [
            telescope-live-grep-args-nvim
            telescope-fzf-native-nvim
            telescope-ui-select-nvim
            telescope-undo-nvim
            telescope-nvim
          ];
          always = with pkgs.vimPlugins; [
            sniprun
            stay-centered-nvim
            dial-nvim
            diffview-nvim
            render-markdown-nvim
            flash-nvim
            vim-visual-multi
            nvim-spider
            mini-nvim
            toggleterm-nvim
            staline-nvim
            gitsigns-nvim
            statuscol-nvim
            nvim-scrollbar
            nvim-hlslens
            nvim-ufo
          ];
          extra = with pkgs.vimPlugins; [
            debugprint-nvim
            comment-nvim
            todo-comments-nvim
            guess-indent-nvim
            nvim-colorizer-lua
            codecompanion-nvim
            git-blame-nvim
            fidget-nvim
            pkgs.awesomeNeovimPlugins.tiny-glimmer-nvim

            # If it was included in your flake inputs as plugins-hlargs,
            # this would be how to add that plugin in your config.
            # pkgs.neovimPlugins.hlargs
          ];
        };
      };

      # shared libraries to be added to LD_LIBRARY_PATH
      # variable available to nvim runtime
      sharedLibraries = {
        general = with pkgs; [
          # <- this would be included if any of the subcategories of general are
          # libgit2
          imagemagick
        ];
      };

      # environmentVariables:
      # this section is for environmentVariables that should be available
      # at RUN TIME for plugins. Will be available to path within neovim terminal
      environmentVariables = {
        test = {
          default =
            if pkgs.stdenv.isDarwin
            then {
              CATTESTVARDEFAULT = "It worked!";
              XDG_RUNTIME_DIR = "/tmp/"; # https://github.com/yetone/avante.nvim/issues/315 and this shouldnt be in "test" but idk it didnt work outside
            }
            else {
              CATTESTVARDEFAULT = "It worked!";
            };
          subtest1 = {
            CATTESTVAR = "It worked!";
          };
          subtest2 = {
            CATTESTVAR3 = "It didn't work!";
          };
        };
      };

      # If you know what these are, you can provide custom ones by category here.
      # If you dont, check this link out:
      # https://github.com/NixOS/nixpkgs/blob/master/pkgs/build-support/setup-hooks/make-wrapper.sh
      extraWrapperArgs = {
        test = [
          ''--set CATTESTVAR2 "It worked again!"''
        ];
      };

      # lists of the functions you would have passed to
      # python.withPackages or lua.withPackages
      # do not forget to set `hosts.python3.enable` in package settings

      # get the path to this python environment
      # in your lua config via
      # vim.g.python3_host_prog
      # or run from nvim terminal via :!<packagename>-python3
      python3.libraries = {
        test = _: [];
      };
      # populates $LUA_PATH and $LUA_CPATH
      extraLuaPackages = {
        general = [(_: [])];
        magick = ps: [ps.magick];
      };

      # see :help nixCats.flake.outputs.categoryDefinitions.default_values
      # this will enable test.default and debug.default
      # if any subcategory of test or debug is enabled
      # WARNING: use of categories argument in this set will cause infinite recursion
      # The categories argument of this function is the FINAL value.
      # You may use it in any of the other sets.
      extraCats = {
        test = [
          ["test" "default"]
        ];
        debug = [
          ["debug" "default"]
        ];
        go = [
          ["debug" "go"] # yes it has to be a list of lists
        ];
      };
    };

    # Now build a package with specific categories from above
    # This entire set is also passed to nixCats for querying within the lua.
    # It is directly translated to a Lua table, and a get function is defined.
    # The get function is to prevent errors when querying subcategories.

    # see :help nixCats.flake.outputs.packageDefinitions
    packageDefinitions = {
      # the name here is the name of the package
      # and also the default command name for it.
      nvim = {
        pkgs,
        name,
        ...
      } @ misc: {
        # these also recieve our pkgs variable
        # see :help nixCats.flake.outputs.packageDefinitions
        settings = {
          suffix-path = true;
          suffix-LD = true;
          # The name of the package, and the default launch name,
          # and the name of the .desktop file, is `nixCats`,
          # or, whatever you named the package definition in the packageDefinitions set.
          # WARNING: MAKE SURE THESE DONT CONFLICT WITH OTHER INSTALLED PACKAGES ON YOUR PATH
          # That would result in a failed build, as nixos and home manager modules validate for collisions on your path
          aliases = ["vim"];

          # explained below in the `regularCats` package's definition
          # OR see :help nixCats.flake.outputs.settings for all of the settings available
          wrapRc = true;
          configDirName = "nvim";
          # neovim-unwrapped = inputs.neovim-nightly-overlay.packages.${pkgs.system}.neovim;
          # TODO: dont think i want these
          # hosts.python3.enable = true;
          # hosts.node.enable = true;
        };
        # enable the categories you want from categoryDefinitions
        categories = {
          general = true;
          format = true;

          infrastructure = true;
          web = true;
          # enabling this category will enable the go category,
          # and ALSO debug.go and debug.default due to our extraCats in categoryDefinitions.
          # go = true; # <- disabled but you could enable it with override or module on install
          go = true;

          test = {
            subtest1 = true;
          };

          # this does not have an associated category of plugins,
          # but lua can still check for it
          lspDebugMode = false;
          # you could also pass something else:
          # see :help nixCats
          themer = false;
        };

        font = misc.font or "DejaVu Sans Mono";

        extra = {
          palette = misc.palette or inputs.colors.outputs.palette;
          palette_opaque = misc.palette_opaque or inputs.colors.outputs.palette_opaque;
          contrast = misc.contrast or 0.6;
          modeColors =
            misc.modeColors or {
              n = misc.palette_opaque.base03 or inputs.colors.outputs.palette_opaque.base03;
              i = misc.palette_opaque.base0F or inputs.colors.outputs.palette_opaque.base0F;

              c = misc.palette_opaque.base0E or inputs.colors.outputs.palette_opaque.base0E;
              C = misc.palette_opaque.base0E or inputs.colors.outputs.palette_opaque.base0E;

              v = misc.palette_opaque.base0C or inputs.colors.outputs.palette_opaque.base0C;
              V = misc.palette_opaque.base0C or inputs.colors.outputs.palette_opaque.base0C;

              r = misc.palette_opaque.base0E or inputs.colors.outputs.palette_opaque.base0E;
              R = misc.palette_opaque.base0E or inputs.colors.outputs.palette_opaque.base0E;

              s = misc.palette_opaque.base0E or inputs.colors.outputs.palette_opaque.base0E;
              S = misc.palette_opaque.base0E or inputs.colors.outputs.palette_opaque.base0E;

              y = misc.palette_opaque.base0D or inputs.colors.outputs.palette_opaque.base0D;
            };

          # TODO: luafy these
          # transparentize = inputs.colors.outputs.transparentize;
          # darken = inputs.colors.outputs.darken;

          # to keep the categories table from being filled with non category things that you want to pass
          # there is also an extra table you can use to pass extra stuff.
          # but you can pass all the same stuff in any of these sets and access it in lua
          nixdExtras = {
            nixpkgs = ''import ${pkgs.path} {}'';
            # or inherit nixpkgs;
          };
        };
      };
    };

    defaultPackageName = "nvim";
    # defaultPackageName is also passed to utils.mkNixosModules and utils.mkHomeModules
    # and it controls the name of the top level option set.
    # If you made a package named `nixCats` your default package as we did here,
    # the modules generated would be set at:
    # config.nixCats = {
    #   enable = true;
    #   packageNames = [ "nixCats" ]; # <- the packages you want installed
    #   <see :h nixCats.module for options>
    # }
    # In addition, every package exports its own module via passthru, and is overrideable.
    # so you can yourpackage.homeModule and then the namespace would be that packages name.
  in
    # you shouldnt need to change much past here, but you can if you wish.
    # see :help nixCats.flake.outputs.exports
    forEachSystem (system: let
      nixCatsBuilder =
        utils.baseBuilder luaPath {
          # we pass in the things to make a pkgs variable to build nvim with later
          inherit nixpkgs system dependencyOverlays extra_pkg_config;
          # and also our categoryDefinitions and packageDefinitions
        }
        categoryDefinitions
        packageDefinitions;
      defaultPackage = nixCatsBuilder defaultPackageName;

      # this pkgs variable is just for using utils such as pkgs.mkShell within this outputs set.
      pkgs = import nixpkgs {inherit system;};
      # The one used to build neovim is resolved inside the builder
      # and is passed to our categoryDefinitions and packageDefinitions
    in {
      # these outputs will be wrapped with ${system} by utils.eachSystem

      # this will generate a set of all the packages
      # in the packageDefinitions defined above
      # from the package we give it.
      # and additionally output the original as default.
      packages = utils.mkAllWithDefault defaultPackage;

      # choose your package for devShell
      # and add whatever else you want in it.
      devShells = {
        default = pkgs.mkShell {
          name = defaultPackageName;
          packages = [defaultPackage];
          inputsFrom = [];
          shellHook = ''
          '';
        };
      };
    })
    // (let
      nixosModule = utils.mkNixosModules {
        moduleNamespace = [defaultPackageName];
        inherit
          defaultPackageName
          dependencyOverlays
          luaPath
          categoryDefinitions
          packageDefinitions
          extra_pkg_config
          nixpkgs
          ;
      };
      homeModule = utils.mkHomeModules {
        moduleNamespace = [defaultPackageName];
        inherit
          defaultPackageName
          dependencyOverlays
          luaPath
          categoryDefinitions
          packageDefinitions
          extra_pkg_config
          nixpkgs
          ;
      };
    in {
      # these outputs will be NOT wrapped with ${system}

      # this will make an overlay out of each of the packageDefinitions defined above
      # and set the default overlay to the one named here.
      overlays =
        utils.makeOverlays luaPath {
          inherit nixpkgs dependencyOverlays extra_pkg_config;
        }
        categoryDefinitions
        packageDefinitions
        defaultPackageName;

      nixosModules.default = nixosModule;
      homeModules.default = homeModule;

      inherit utils nixosModule homeModule;
      inherit (utils) templates;
    });
}
