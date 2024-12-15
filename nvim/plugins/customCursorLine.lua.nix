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
    						CursorLine = { bg = "${outputs.colors_opaque.base07}" },
    						CursorLineNr = { fg = "${outputs.colors_opaque.base09}", bg = "${outputs.colors_opaque.base07}" },
    					},
    				},
    				-- change
    				c = {
    					winhl = {
    						CursorLine = { bg = "${outputs.colors_opaque.base09}" },
    						CursorLineNr = { fg = "${outputs.colors_opaque.base09}", bg = "${outputs.colors_opaque.base09}" },
    					},
    				},
    				-- yank
    				y = {
    					winhl = {
    						CursorLine = { bg = "${outputs.colors_opaque.base08}" },
    						CursorLineNr = { fg = "${outputs.colors_opaque.base08}", bg = "${outputs.colors_opaque.base08}" },
    					},
    				},
    			},
    		},
    		i = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors_opaque.base0B}" },
    				CursorLineNr = { fg = "${outputs.colors_opaque.base0B}", bg = "${outputs.colors_opaque.base0B}" },
    			},
    			hl = {
    				Cursor = { bg = "${outputs.colors_opaque.base0B}" },
    			},
    		},
    		c = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors_opaque.base0F}" },
    				CursorLineNr = { fg = "${outputs.colors_opaque.base0F}", bg = "${outputs.colors_opaque.base0F}" },
    			},
    		},
    		n = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors_opaque.base07}" },
    				CursorLineNr = { fg = "${outputs.colors_opaque.base07}", bg = "${outputs.colors_opaque.base07}" },
    			},
    			hl = {
    				Cursor = { bg = "${outputs.colors_opaque.base07}" },
    			},
    		},
    		-- visual
    		[{ "v", "V", "\x16" }] = {
    			winhl = {
    				CursorLineNr = { fg = "${outputs.colors_opaque.base0D}" },
    				Visual = { bg = "${outputs.colors_opaque.base0D}" },
    			},
    			hl = {
    				Cursor = { bg = "${outputs.colors_opaque.base0C}" },
    			},
    		},
    		-- select
    		[{ "s", "S", "\x13" }] = {
    			winhl = {
    				CursorLineNr = { fg = "${outputs.colors_opaque.base0D}" },
    				Visual = { bg = "${outputs.colors_opaque.base0D}" },
    			},
    		},
    		-- replace
    		R = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors_opaque.base08}" },
    				CursorLineNr = { fg = "${outputs.colors_opaque.base08}", bg = "${outputs.colors_opaque.base08}" },
    			},
    		},
    	},
    }
  '';
in
  lua
