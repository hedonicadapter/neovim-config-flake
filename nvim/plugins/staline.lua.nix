{colors, ...}: let
  lua = ''
    require("staline").setup({
    	sections = {
    		left = { "mode" },
    		mid = {},
    		right = { "", "cwd", "branch" },
    	},
    	mode_colors = {
    		i = "${colors.outputs.colors.base0B}",
    		n = "${colors.outputs.colors.base09}",
    		c = "${colors.outputs.colors.base09}",
    		v = "${colors.outputs.colors.base0D}",
    		V = "${colors.outputs.colors.base0D}",
    	},
    	mode_icons = {
    		n = " ",
    		i = " ",
    		c = " ",
    		v = " ",
    		V = " ",
    	},
    	defaults = {
    		true_colors = true,
    		branch_symbol = " ",
    	},
    })
  '';
in
  lua
