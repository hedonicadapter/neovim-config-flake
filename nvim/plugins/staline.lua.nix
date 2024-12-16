{colors, ...}: let
  lua = ''
    require("staline").setup({
    	sections = {
    		left = { "mode" },
    		mid = {},
    		right = { "", "cwd", "branch" },
    	},
    	mode_colors = {
    		i = "${colors.outputs.colors.base0F}",
    		n = "${colors.outputs.colors.base03}",
    		c = "${colors.outputs.colors.base0E}",
    		v = "${colors.outputs.colors.base0C}",
    		V = "${colors.outputs.colors.base0C}",
    	},
    	mode_icons = {
    		n = "NORMAL ",
    		i = "INSERT ",
    		c = "COMMAND ",
    		v = "VISUAL ",
    		V = "VISUAL ",
    	},
    	defaults = {
    		true_colors = true,
    		branch_symbol = " ",
    	},
    })
  '';
in
  lua
