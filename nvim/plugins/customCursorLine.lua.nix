{outputs, ...}: let
  lua = ''
    return {
    	name = "customCursorLine",
    	init = function()
    		vim.opt.cursorline = true
    	end,
    	modes = {
    		no = {
    			operators = {
    				-- switch case
    				[{ "gu", "gU", "g~", "~" }] = {
    					winhl = {
    						CursorLine = { bg = "${outputs.darken outputs.colors_opaque.base07 0.5}" },
    						CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base09 0.3}", bg = "${outputs.darken outputs.colors_opaque.base07 0.5}" },
    					},
    				},
    				-- change
    				c = {
    					winhl = {
    						CursorLine = { bg = "${outputs.darken outputs.colors_opaque.base09 0.5}" },
    						CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base09 0.3}", bg = "${outputs.darken outputs.colors_opaque.base09 0.5}" },
    					},
    				},
    				-- yank
    				y = {
    					winhl = {
    						CursorLine = { bg = "${outputs.darken outputs.colors_opaque.base08 0.5}" },
    						CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base08 0.3}", bg = "${outputs.darken outputs.colors_opaque.base08 0.5}" },
    					},
    				},
    			},
    		},
    		i = {
    			winhl = {
    				CursorLine = { bg = "${outputs.darken outputs.colors_opaque.base0B 0.5}" },
    				CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base0B 0.3}", bg = "${outputs.darken outputs.colors_opaque.base0B 0.5}" },
    			},
    			hl = {
    				Cursor = { bg = "${outputs.darken outputs.colors_opaque.base0B 0.5}" },
    			},
    		},
    		c = {
    			winhl = {
    				CursorLine = { bg = "${outputs.darken outputs.colors_opaque.base0F 0.5}" },
    				CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base0F 0.3}", bg = "${outputs.darken outputs.colors_opaque.base0F 0.5}" },
    			},
    		},
    		n = {
    			winhl = {
    				CursorLine = { bg = "${outputs.darken outputs.colors_opaque.base07 0.5}" },
    				CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base07 0.3}", bg = "${outputs.darken outputs.colors_opaque.base07 0.5}" },
    			},
    			hl = {
    				Cursor = { bg = "${outputs.darken outputs.colors_opaque.base07 0.5}" },
    			},
    		},
    		-- visual
    		[{ "v", "V", "\x16" }] = {
    			winhl = {
    				CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base0D 0.3}" },
    				Visual = { bg = "${outputs.darken outputs.colors_opaque.base0D 0.5}" },
    			},
    			hl = {
    				Cursor = { bg = "${outputs.darken outputs.colors_opaque.base0C 0.5}" },
    			},
    		},
    		-- select
    		[{ "s", "S", "\x13" }] = {
    			winhl = {
    				CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base0D 0.3}" },
    				Visual = { bg = "${outputs.darken outputs.colors_opaque.base0D 0.5}" },
    			},
    		},
    		-- replace
    		R = {
    			winhl = {
    				CursorLine = { bg = "${outputs.darken outputs.colors_opaque.base08 0.5}" },
    				CursorLineNr = { fg = "${outputs.darken outputs.colors_opaque.base08 0.3}", bg = "${outputs.darken outputs.colors_opaque.base08 0.5}" },
    			},
    		},
    	},
    }
  '';
in
  lua
