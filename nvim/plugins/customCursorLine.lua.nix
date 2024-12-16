{outputs, ...}: let
  n = outputs.colors_opaque.base03;
  i = outputs.colors_opaque.base0F;
  c = outputs.colors_opaque.base0E;
  v = outputs.colors_opaque.base0C;
  y = outputs.colors_opaque.base0D;
  s = outputs.colors_opaque.base05;
  r = outputs.colors_opaque.base0E;

  contrast = 5;

  lua = ''
    return {
    	name = "customCursorLine",
    	init = function()
    		vim.opt.cursorline = true
    	end,
    	modes = {
    		no = {
    			operators = {
    				-- change
    				[{ "c", "C" }] = {
              winhl = {
                CursorLine = { bg = "${outputs.colors.darken c contrast}", fg = "${outputs.colors_opaque.base07}"},
                CursorLineNr = { fg = "${c}", bg = "${outputs.colors.darken c contrast}" },
              },
              hl = {
                Cursor = { bg = "${c}", fg = "${outputs.colors_opaque.base07}" },
              },
    				},
    				-- yank
    				y = {
              winhl = {
                CursorLine = { bg = "${outputs.colors.darken y contrast}", fg = "${outputs.colors_opaque.base00}"},
                CursorLineNr = { fg = "${y}", bg = "${outputs.colors.darken y contrast}" },
              },
              hl = {
                Cursor = { bg = "${y}", fg = "${outputs.colors_opaque.base00}" },
              },
    				},
    			},
    		},
    		i = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors.darken i contrast}", fg = "${outputs.colors_opaque.base00}"},
    				CursorLineNr = { fg = "${i}", bg = "${outputs.colors.darken i contrast}" },
    			},
    			hl = {
    				Cursor = { bg = "${i}", fg = "${outputs.colors_opaque.base00}" },
    			},
    		},
        [{ "c", "C" }] = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors.darken c contrast}", fg = "${outputs.colors_opaque.base07}"},
    				CursorLineNr = { fg = "${c}", bg = "${outputs.colors.darken c contrast}" },
    			},
    			hl = {
    				Cursor = { bg = "${c}", fg = "${outputs.colors_opaque.base07}" },
    			},
    		},
    		n = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors.darken n contrast}", fg = "${outputs.colors_opaque.base07}"},
    				CursorLineNr = { fg = "${n}", bg = "${outputs.colors.darken n contrast}" },
    			},
    			hl = {
    				Cursor = { bg = "${n}", fg = "${outputs.colors_opaque.base07}" },
    			},
    		},
    		-- visual
    		[{ "v", "V", "\x16" }] = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors.darken v contrast}", fg = "${outputs.colors_opaque.base00}"},
    				CursorLineNr = { fg = "${v}", bg = "${outputs.colors.darken v contrast}" },
    			},
    			hl = {
    				Cursor = { bg = "${v}", fg = "${outputs.colors_opaque.base00}" },
    			},
    		},
    		-- select
    		[{ "s", "S", "\x13" }] = {
    			winhl = {
    				CursorLine = { bg = "${outputs.colors.darken s contrast}", fg = "${outputs.colors_opaque.base00}"},
    				CursorLineNr = { fg = "${s}", bg = "${outputs.colors.darken s contrast}" },
    			},
    			hl = {
    				Cursor = { bg = "${s}", fg = "${outputs.colors_opaque.base00}" },
    			},
    		},
    		-- replace
    		R = {
          winhl = {
            CursorLine = { bg = "${outputs.colors.darken r contrast}", fg = "${outputs.colors_opaque.base07}"},
            CursorLineNr = { fg = "${r}", bg = "${outputs.colors.darken r contrast}" },
          },
          hl = {
            Cursor = { bg = "${r}", fg = "${outputs.colors_opaque.base07}" },
          },
    		},
    	},
    }
  '';
in
  lua
