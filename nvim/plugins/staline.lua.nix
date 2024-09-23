{colors, ...}: let
  lua = ''
    require("staline").setup({
    	sections = {
    		left = { "mode" },
    		mid = {},
    		right = { "", "cwd", "branch" },
    	},
    	mode_colors = {
    		i = "${colors.outputs.colors.green}",
    		n = "${colors.outputs.colors.beige}",
    		c = "${colors.outputs.colors.orange}",
    		v = "${colors.outputs.colors.blue}",
    		V = "${colors.outputs.colors.blue}",
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
