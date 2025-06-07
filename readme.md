--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.004  000.004: --- NVIM STARTING ---
000.291  000.287: event init
000.423  000.132: early init
000.569  000.146: locale set
000.681  000.113: init first window
001.710  001.028: inits 1
001.734  000.025: window checked
001.739  000.005: parsing arguments
003.268  000.138  000.138: require('vim.shared')
003.530  000.099  000.099: require('vim.inspect')
003.644  000.089  000.089: require('vim._options')
003.651  000.370  000.183: require('vim._editor')
003.654  000.589  000.081: require('vim._init_packages')
003.665  001.337: init lua interpreter
010.994  007.329: nvim_ui_attach
011.750  000.756: nvim_set_client_info
011.757  000.007: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.199  000.196: event init
000.348  000.149: early init
000.438  000.090: locale set
000.526  000.088: init first window
001.197  000.671: inits 1
001.231  000.034: window checked
001.235  000.005: parsing arguments
001.976  000.066  000.066: require('vim.shared')
002.104  000.050  000.050: require('vim.inspect')
002.164  000.049  000.049: require('vim._options')
002.166  000.186  000.087: require('vim._editor')
002.168  000.277  000.026: require('vim._init_packages')
002.174  000.661: init lua interpreter
002.276  000.102: expanding arguments
002.303  000.028: inits 2
002.650  000.346: init highlight
002.651  000.001: waiting for UI
002.774  000.123: done waiting for UI
002.777  000.003: clear screen
002.965  000.024  000.024: require('vim.keymap')
004.606  000.317  000.317: sourcing nvim_exec2()
004.996  002.217  001.876: require('vim._defaults')
005.000  000.007: init default mappings & autocommands
007.742  000.058  000.058: sourcing nvim_exec2() called at /nix/store/i6brhj75gx2d2fcilrq95c7av2y4r5lf-neovim-0.11.1-nvim/nvim-setup.lua:0
007.766  001.200  001.141: require('nixCats')
008.149  003.005  001.805: sourcing /nix/store/i6brhj75gx2d2fcilrq95c7av2y4r5lf-neovim-0.11.1-nvim/nvim-setup.lua
008.165  000.160: --cmd commands
016.124  000.092  000.092: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
016.811  000.082  000.082: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
019.358  001.488  001.488: require('nixCatsUtils')
024.552  000.011  000.011: require('vim.F')
024.610  003.529  003.518: require('vim.diagnostic')
024.681  000.020  000.020: sourcing nvim_exec2() called at VIMINIT:0
025.118  005.243  001.694: require('luaConf.keys')
026.706  001.584  001.584: require('luaConf.options')
028.713  000.830  000.830: require('lze.c.loader')
028.723  001.103  000.273: require('lze.h.colorscheme')
029.204  000.477  000.477: require('lze.h.cmd')
029.665  000.455  000.455: require('lze.h.event')
029.874  000.203  000.203: require('lze.h.ft')
030.244  000.366  000.366: require('lze.h.keys')
030.447  000.197  000.197: require('lze.h.dep_of')
030.671  000.218  000.218: require('lze.h.on_plugin')
030.880  000.203  000.203: require('lze.h.on_require')
030.887  003.430  000.207: require('lze.h')
030.990  004.047  000.617: require('lze.c.handler')
031.000  004.286  000.238: require('lze')
031.243  000.239  000.239: require('nixCatsUtils.lzUtils')
031.416  000.155  000.155: require('lzextras')
031.755  000.334  000.334: require('lzextras.src.lsp')
034.439  001.443  001.443: require('oil')
034.693  000.243  000.243: require('oil.ringbuf')
035.090  000.393  000.393: require('oil.config')
038.291  002.796  002.796: require('vim.filetype')
041.109  000.484  000.484: require('oil.log')
041.151  001.320  000.836: require('oil.fs')
043.201  000.311  000.311: require('oil.constants')
043.226  002.070  001.758: require('oil.util')
043.675  000.363  000.363: require('lze.c.parse')
044.238  000.543  000.543: require('luaConf.plugins.mini')
044.737  000.483  000.483: require('luaConf.plugins.auto-session')
045.341  000.590  000.590: require('luaConf.plugins.cokeline')
045.807  000.455  000.455: require('luaConf.plugins.reactive')
048.080  000.449  000.449: require('nui.object')
051.593  000.825  000.825: require('vim.version')
054.007  003.899  003.074: require('nui.utils')
054.036  004.235  000.336: require('nui.text')
054.055  004.559  000.324: require('nui.line')
054.092  005.497  000.938: require('nui.popup.border')
054.408  000.313  000.313: require('nui.utils.buf_storage')
055.194  000.778  000.778: require('nui.utils.autocmd')
055.666  000.440  000.440: require('nui.utils.keymap')
056.032  000.360  000.360: require('nui.layout.utils')
056.158  008.054  000.664: require('nui.popup')
056.958  000.320  000.320: require('nui.split.utils')
056.982  000.818  000.498: require('nui.split')
057.346  000.359  000.359: require('nui.layout.float')
057.675  000.324  000.324: require('nui.layout.split')
057.695  010.953  000.948: require('nui.layout')
057.797  011.975  001.022: require('luaConf.plugins.telescope')
058.174  000.365  000.365: require('luaConf.plugins.treesitter')
058.511  000.296  000.296: require('luaConf.plugins.completion')
058.888  000.280  000.280: require('luaConf.plugins.toggleterm')
059.199  000.280  000.280: require('luaConf.plugins.codecompanion')
059.499  000.234  000.234: require('luaConf.plugins.spider')
059.816  000.308  000.308: require('luaConf.plugins.staline')
060.090  000.263  000.263: require('luaConf.plugins.colorizer')
060.522  000.295  000.295: require('luaConf.plugins.render-markdown')
060.844  000.308  000.308: require('luaConf.plugins.image')
061.135  000.278  000.278: require('luaConf.plugins.img-clip')
068.276  000.060  000.060: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
068.872  037.096  011.455: require('luaConf.plugins')
088.160  000.215  000.215: require('vim.fs')
088.306  001.336  001.121: require('vim.lsp.log')
090.866  002.552  002.552: require('vim.lsp.protocol')
096.988  006.106  006.106: require('vim.lsp.util')
098.252  000.546  000.546: require('vim.lsp.sync')
098.266  001.262  000.716: require('vim.lsp._changetracking')
099.493  000.445  000.445: require('vim.lsp._transport')
099.516  001.243  000.798: require('vim.lsp.rpc')
099.614  014.665  002.167: require('vim.lsp')
099.737  015.564  000.899: require('lspconfig.util')
099.948  000.206  000.206: require('lspconfig.async')
099.952  016.585  000.814: require('lspconfig.configs')
099.962  017.104  000.519: require('lspconfig')
100.648  000.682  000.682: require('vim.iter')
104.922  036.043  018.258: require('luaConf.LSPs')
105.989  001.053  001.053: require('luaConf.debug')
107.345  000.041  000.041: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
111.459  003.752  003.752: require('conform')
111.632  005.633  001.840: require('luaConf.format')
111.637  092.251  000.585: require('luaConf')
111.665  009.587: sourcing vimrc file(s)
113.043  000.558  000.558: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
113.056  000.699  000.141: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
113.716  000.101  000.101: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
113.834  000.678  000.576: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
116.637  000.091  000.091: sourcing /nix/store/aad6xxxnx1ncw1j306rg5rgws2wr27jm-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
116.919  000.074  000.074: sourcing /nix/store/aad6xxxnx1ncw1j306rg5rgws2wr27jm-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
118.126  000.745  000.745: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
118.902  000.219  000.219: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
120.358  000.213  000.213: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
120.539  001.603  001.390: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
120.718  000.148  000.148: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
120.765  000.012  000.012: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
121.197  000.311  000.311: sourcing /nix/store/i6brhj75gx2d2fcilrq95c7av2y4r5lf-neovim-0.11.1-nvim/nvim-rplugin.vim
121.607  000.812  000.501: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
121.724  000.078  000.078: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
121.812  000.025  000.025: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
121.952  000.103  000.103: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
122.017  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
122.201  000.150  000.150: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
122.374  000.129  000.129: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
122.552  000.121  000.121: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
122.710  000.114  000.114: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
122.802  000.054  000.054: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
122.843  005.303: loading rtp plugins
124.059  000.059  000.059: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
127.886  000.103  000.103: require('eyeliner.config')
128.295  000.133  000.133: require('eyeliner.utils')
128.302  000.314  000.182: require('eyeliner.shared')
128.623  000.061  000.061: require('eyeliner.string')
128.629  000.228  000.167: require('eyeliner.liner')
128.632  000.328  000.100: require('eyeliner.always-on')
128.788  000.154  000.154: require('eyeliner.on-key')
128.793  000.898  000.101: require('eyeliner.main')
128.796  004.557  003.557: require('eyeliner')
128.959  004.754  000.198: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
130.067  000.252  000.252: require('img-clip.debug')
130.588  000.512  000.512: require('img-clip.config')
130.916  000.320  000.320: require('img-clip.util')
131.713  000.234  000.234: require('img-clip.clipboard')
132.179  000.252  000.252: require('img-clip.fs')
132.184  000.467  000.215: require('img-clip.markup')
132.189  001.100  000.400: require('img-clip.paste')
132.192  001.271  000.171: require('img-clip')
132.209  002.551  000.196: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
134.798  002.105  002.105: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
136.134  000.313  000.313: require('treesitter-context.config')
136.169  001.054  000.741: require('treesitter-context')
136.254  001.165  000.111: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
136.542  000.073  000.073: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
137.197  000.419  000.419: require('reactive.commands')
137.510  000.308  000.308: require('reactive.highlight')
138.286  000.320  000.320: require('reactive.util')
138.298  000.783  000.464: require('reactive.snapshot')
138.952  000.255  000.255: require('reactive.preset')
138.965  000.631  000.377: require('reactive.state')
139.110  002.367  000.226: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
139.856  000.548  000.548: require('snacks')
139.860  000.572  000.025: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
141.239  001.107  001.107: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
141.501  000.114  000.114: sourcing /nix/store/mgkjwp97ix2xrzgl1jg5x7vyx7lfr5cd-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
142.153  004.443: loading packages
142.156  000.003: loading after plugins
142.189  000.033: inits 3
148.607  006.418: reading ShaDa
151.038  000.555  000.555: require('cokeline.lazy')
151.048  001.410  000.855: require('cokeline')
152.218  000.420  000.420: require('cokeline.sliders')
152.259  001.203  000.783: require('cokeline.config')
152.688  000.418  000.418: require('cokeline.state')
154.039  000.503  000.503: require('cokeline.hlgroups')
155.769  000.257  000.257: require('plenary.functional')
155.999  000.224  000.224: require('plenary.compat')
156.028  001.982  001.501: require('plenary.iterators')
156.033  003.336  000.852: require('cokeline.components')
156.739  000.450  000.450: require('cokeline.history')
157.560  000.812  000.812: require('cokeline.mappings')
160.669  002.499  002.499: require('cokeline.hover')
161.428  000.728  000.728: require('cokeline.augroups')
161.666  002.203: opening buffers
167.289  004.506  004.506: require('colorUtils')
171.078  000.567  000.567: require('staline.utils')
171.187  001.307  000.740: require('staline.config')
171.214  003.898  002.591: require('staline')
178.600  001.216  001.216: require('ufo.utils')
178.619  006.401  005.186: require('ufo')
180.622  000.487  000.487: require('ufo.lib.disposable')
181.384  000.755  000.755: require('ufo.lib.log')
181.408  001.855  000.613: require('ufo.lib.event')
183.787  000.484  000.484: require('promise-async.utils')
184.359  000.564  000.564: require('promise-async.error')
184.865  000.495  000.495: require('promise-async.loop')
184.878  002.680  001.138: require('promise')
184.883  003.469  000.788: require('ufo.provider')
186.449  000.613  000.613: require('ufo.config')
187.680  000.668  000.668: require('promise-async.compat')
187.700  001.245  000.577: require('async')
190.534  000.845  000.845: require('ufo.model.buffer')
191.165  000.622  000.622: require('ufo.model.foldedline')
193.574  000.891  000.891: require('ufo.highlight')
194.302  000.717  000.717: require('ufo.render.extmark')
201.851  000.513  000.513: require('vim.treesitter.language')
202.155  000.293  000.293: require('vim.func')
202.920  000.736  000.736: require('vim.func._memoize')
203.120  003.594  002.051: require('vim.treesitter.query')
203.734  000.609  000.609: require('vim.treesitter._range')
203.808  006.007  001.803: require('vim.treesitter.languagetree')
203.823  007.223  001.216: require('vim.treesitter')
203.913  008.967  001.745: require('vim.treesitter.highlighter')
203.922  009.611  000.643: require('ufo.render.treesitter')
204.492  000.568  000.568: require('ufo.render.match')
204.509  013.337  001.552: require('ufo.render')
204.531  015.864  001.060: require('ufo.model.foldbuffer')
205.216  000.680  000.680: require('ufo.bufmanager')
206.959  000.070  000.070: require('ffi')
207.061  000.720  000.650: require('ufo.wffi')
207.068  001.847  001.126: require('ufo.fold.driver')
207.086  019.379  000.988: require('ufo.fold.manager')
207.795  000.701  000.701: require('ufo.lib.debounce')
207.811  022.925  000.988: require('ufo.fold')
209.933  000.800  000.800: require('ufo.model.window')
209.951  002.137  001.336: require('ufo.decorator')
212.014  000.859  000.859: require('ufo.preview.floatwin')
212.600  000.580  000.580: require('ufo.preview.scrollbar')
213.122  000.516  000.516: require('ufo.preview.winbar')
213.694  000.567  000.567: require('ufo.preview.keymap')
213.707  003.753  001.230: require('ufo.preview')
213.715  035.092  000.954: require('ufo.main')
213.760  000.034  000.034: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
213.847  000.008  000.008: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
213.857  000.004  000.004: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
213.922  000.036  000.036: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
214.066  000.024  000.024: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
215.508  000.734  000.734: require('ts-error-translator')
218.566  001.616  001.616: require('vim.lsp.completion')
218.678  003.152  001.536: require('vim.lsp.handlers')
223.721  004.381  004.381: require('spider')
224.257  000.526  000.526: require('spider.config')
231.448  003.066  003.066: require('nvim-web-devicons.icons-default')
231.715  005.469  002.402: require('nvim-web-devicons')
231.740  006.389  000.920: require('cokeline.buffers')
231.750  006.888  000.499: require('cokeline.tabs')
236.266  008.915: BufEnter autocommands
236.283  000.018: editing files in windows
239.235  002.116  002.116: require('base16-colorscheme')
239.575  000.269  000.269: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
243.014  000.553  000.553: require('twilight.util')
243.039  001.155  000.602: require('twilight.config')
243.914  000.871  000.871: require('twilight.view')
243.922  002.649  000.623: require('twilight')
244.091  000.020  000.020: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
244.186  000.087  000.087: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
251.631  006.024  006.024: require('mini.starter')
264.518  000.023  000.023: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
267.572  000.159  000.159: require('auto-session.logger')
267.618  000.948  000.789: require('auto-session.lib')
267.932  000.309  000.309: require('auto-session.config')
268.464  000.525  000.525: require('auto-session.autocmds')
268.481  002.465  000.683: require('auto-session')
270.963  000.376  000.376: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
279.186  000.333  000.333: require('telescope._extensions')
279.197  005.466  005.134: require('telescope')
283.487  000.649  000.649: require('plenary.bit')
283.546  001.818  001.170: require('plenary.path')
283.589  002.213  000.395: require('plenary.strings')
283.900  000.308  000.308: require('telescope.deprecated')
285.721  000.638  000.638: require('plenary.log')
285.779  001.007  000.369: require('telescope.log')
287.780  000.912  000.912: require('plenary.job')
288.176  000.384  000.384: require('telescope.state')
288.223  002.440  001.144: require('telescope.utils')
288.235  004.331  000.883: require('telescope.sorters')
293.656  012.920  006.069: require('telescope.config')
294.866  000.494  000.494: require('plenary.window.border')
295.061  000.190  000.190: require('plenary.window')
295.265  000.201  000.201: require('plenary.popup.utils')
295.285  001.616  000.731: require('plenary.popup')
295.957  000.667  000.667: require('telescope.pickers.scroller')
296.431  000.459  000.459: require('telescope.actions.state')
296.923  000.488  000.488: require('telescope.actions.utils')
297.930  000.425  000.425: require('telescope.actions.mt')
297.972  001.042  000.617: require('telescope.actions.set')
298.807  000.455  000.455: require('telescope.config.resolve')
298.814  000.838  000.383: require('telescope.pickers.entry_display')
299.117  000.301  000.301: require('telescope.from_entry')
299.574  020.369  002.038: require('telescope.actions')
302.094  000.552  000.552: require('fzf_lib')
302.110  001.068  000.516: require('telescope._extensions.fzf')
303.133  000.531  000.531: require('telescope-undo.actions')
303.144  001.019  000.488: require('telescope._extensions.undo')
304.023  000.408  000.408: require('auto-session.session-lens.actions')
304.034  000.698  000.290: require('auto-session.session-lens')
304.053  000.810  000.112: require('telescope._extensions.session-lens')
307.094  001.033  001.033: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
307.155  000.034  000.034: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
307.256  000.068  000.068: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
312.910  007.898  006.763: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
319.844  000.861  000.861: require('vim.provider')
321.067  001.205  001.205: require('vim.provider.python')
322.697  000.541  000.541: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
322.831  004.184  001.577: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
327.271  036.146: VimEnter autocommands
328.381  000.969  000.969: require('vim.termcap')
328.513  000.068  000.068: require('vim.text')
328.549  000.240: UIEnter autocommands
328.554  000.006: before starting main loop
330.356  001.802: first screen update
330.364  000.008: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.167  000.165: event init
000.261  000.093: early init
000.332  000.072: locale set
000.400  000.067: init first window
000.928  000.528: inits 1
000.941  000.013: window checked
000.943  000.003: parsing arguments
001.646  000.058  000.058: require('vim.shared')
001.796  000.050  000.050: require('vim.inspect')
001.855  000.048  000.048: require('vim._options')
001.858  000.207  000.109: require('vim._editor')
001.859  000.294  000.029: require('vim._init_packages')
001.866  000.628: init lua interpreter
004.007  002.141: nvim_ui_attach
004.391  000.385: nvim_set_client_info
004.394  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.142  000.139: event init
000.236  000.094: early init
000.311  000.075: locale set
000.412  000.101: init first window
001.003  000.592: inits 1
001.024  000.021: window checked
001.027  000.003: parsing arguments
001.666  000.057  000.057: require('vim.shared')
001.797  000.049  000.049: require('vim.inspect')
001.858  000.047  000.047: require('vim._options')
001.863  000.193  000.097: require('vim._editor')
001.864  000.276  000.026: require('vim._init_packages')
001.870  000.567: init lua interpreter
001.945  000.075: expanding arguments
001.970  000.026: inits 2
002.293  000.323: init highlight
002.294  000.001: waiting for UI
002.403  000.108: done waiting for UI
002.406  000.003: clear screen
002.584  000.021  000.021: require('vim.keymap')
003.573  000.190  000.190: sourcing nvim_exec2()
003.787  001.378  001.167: require('vim._defaults')
003.791  000.006: init default mappings & autocommands
005.358  000.055  000.055: sourcing nvim_exec2() called at /nix/store/chx9xv2hhbngaiq30sz5zzcwamqdskpv-neovim-0.11.1-nvim/nvim-setup.lua:0
005.371  000.515  000.460: require('nixCats')
005.579  001.670  001.155: sourcing /nix/store/chx9xv2hhbngaiq30sz5zzcwamqdskpv-neovim-0.11.1-nvim/nvim-setup.lua
005.601  000.140: --cmd commands
008.848  000.089  000.089: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
009.420  000.051  000.051: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.914  000.198  000.198: require('nixCatsUtils')
013.068  000.009  000.009: require('vim.F')
013.123  002.296  002.287: require('vim.diagnostic')
013.248  000.018  000.018: sourcing nvim_exec2() called at VIMINIT:0
013.623  003.640  001.326: require('luaConf.keys')
014.190  000.562  000.562: require('luaConf.options')
015.697  000.548  000.548: require('lze.c.loader')
015.703  000.784  000.235: require('lze.h.colorscheme')
015.889  000.184  000.184: require('lze.h.cmd')
016.152  000.259  000.259: require('lze.h.event')
016.343  000.189  000.189: require('lze.h.ft')
016.595  000.248  000.248: require('lze.h.keys')
016.726  000.128  000.128: require('lze.h.dep_of')
016.847  000.119  000.119: require('lze.h.on_plugin')
016.983  000.134  000.134: require('lze.h.on_require')
016.986  002.199  000.155: require('lze.h')
017.021  002.652  000.453: require('lze.c.handler')
017.026  002.832  000.180: require('lze')
017.072  000.044  000.044: require('nixCatsUtils.lzUtils')
017.210  000.127  000.127: require('lzextras')
017.450  000.237  000.237: require('lzextras.src.lsp')
019.174  001.402  001.402: require('oil')
019.401  000.220  000.220: require('oil.ringbuf')
019.783  000.379  000.379: require('oil.config')
022.591  002.577  002.577: require('vim.filetype')
024.063  000.263  000.263: require('oil.log')
024.081  000.767  000.504: require('oil.fs')
025.215  000.194  000.194: require('oil.constants')
025.232  001.148  000.955: require('oil.util')
025.494  000.209  000.209: require('lze.c.parse')
025.658  000.154  000.154: require('luaConf.plugins.mini')
025.743  000.058  000.058: require('luaConf.plugins.auto-session')
025.997  000.244  000.244: require('luaConf.plugins.cokeline')
026.143  000.138  000.138: require('luaConf.plugins.reactive')
027.162  000.245  000.245: require('nui.object')
029.533  000.522  000.522: require('vim.version')
031.245  002.701  002.179: require('nui.utils')
031.258  002.966  000.265: require('nui.text')
031.268  003.159  000.193: require('nui.line')
031.299  003.768  000.609: require('nui.popup.border')
031.458  000.157  000.157: require('nui.utils.buf_storage')
031.826  000.365  000.365: require('nui.utils.autocmd')
032.081  000.252  000.252: require('nui.utils.keymap')
032.380  000.295  000.295: require('nui.layout.utils')
032.458  005.292  000.455: require('nui.popup')
033.118  000.270  000.270: require('nui.split.utils')
033.141  000.680  000.410: require('nui.split')
033.423  000.279  000.279: require('nui.layout.float')
033.721  000.294  000.294: require('nui.layout.split')
033.746  007.340  000.550: require('nui.layout')
033.794  007.644  000.304: require('luaConf.plugins.telescope')
033.988  000.184  000.184: require('luaConf.plugins.treesitter')
034.163  000.134  000.134: require('luaConf.plugins.completion')
034.391  000.097  000.097: require('luaConf.plugins.toggleterm')
034.497  000.071  000.071: require('luaConf.plugins.codecompanion')
034.657  000.064  000.064: require('luaConf.plugins.spider')
034.761  000.094  000.094: require('luaConf.plugins.staline')
034.860  000.090  000.090: require('luaConf.plugins.colorizer')
035.072  000.081  000.081: require('luaConf.plugins.render-markdown')
035.179  000.097  000.097: require('luaConf.plugins.image')
035.251  000.064  000.064: require('luaConf.plugins.img-clip')
039.355  000.116  000.116: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
039.773  022.312  006.280: require('luaConf.plugins')
053.578  000.165  000.165: require('vim.fs')
053.633  000.976  000.811: require('vim.lsp.log')
056.357  002.719  002.719: require('vim.lsp.protocol')
058.922  002.512  002.512: require('vim.lsp.util')
059.904  000.462  000.462: require('vim.lsp.sync')
059.913  000.983  000.521: require('vim.lsp._changetracking')
060.977  000.393  000.393: require('vim.lsp._transport')
061.049  001.133  000.740: require('vim.lsp.rpc')
061.159  010.260  001.939: require('vim.lsp')
061.275  011.237  000.977: require('lspconfig.util')
061.500  000.221  000.221: require('lspconfig.async')
061.505  012.063  000.605: require('lspconfig.configs')
061.515  012.604  000.540: require('lspconfig')
062.241  000.722  000.722: require('vim.iter')
065.740  025.963  012.637: require('luaConf.LSPs')
066.388  000.638  000.638: require('luaConf.debug')
067.466  000.059  000.059: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
072.684  004.765  004.765: require('conform')
072.866  006.470  001.646: require('luaConf.format')
072.870  062.951  000.126: require('luaConf')
072.881  003.991: sourcing vimrc file(s)
074.334  000.477  000.477: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
074.343  000.601  000.124: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
074.869  000.118  000.118: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
074.984  000.579  000.461: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
076.870  000.041  000.041: sourcing /nix/store/vmdkpwc15jl03dai43w6c8ba0qack7fj-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
077.020  000.033  000.033: sourcing /nix/store/vmdkpwc15jl03dai43w6c8ba0qack7fj-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
077.910  000.612  000.612: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
078.802  000.213  000.213: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
080.229  000.224  000.224: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
080.471  001.634  001.410: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
080.687  000.182  000.182: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
080.761  000.015  000.015: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
080.968  000.021  000.021: sourcing /nix/store/chx9xv2hhbngaiq30sz5zzcwamqdskpv-neovim-0.11.1-nvim/nvim-rplugin.vim
081.501  000.700  000.679: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
081.701  000.124  000.124: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
081.828  000.026  000.026: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
081.991  000.125  000.125: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
082.060  000.023  000.023: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
082.355  000.259  000.259: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
082.493  000.089  000.089: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
082.611  000.081  000.081: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
082.777  000.117  000.117: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
082.869  000.047  000.047: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
082.903  004.520: loading rtp plugins
083.882  000.042  000.042: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
087.272  000.089  000.089: require('eyeliner.config')
087.804  000.215  000.215: require('eyeliner.utils')
087.828  000.441  000.226: require('eyeliner.shared')
088.264  000.068  000.068: require('eyeliner.string')
088.270  000.262  000.194: require('eyeliner.liner')
088.273  000.440  000.178: require('eyeliner.always-on')
088.470  000.194  000.194: require('eyeliner.on-key')
088.475  001.196  000.121: require('eyeliner.main')
088.477  004.429  003.143: require('eyeliner')
088.621  004.605  000.176: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
089.203  000.140  000.140: require('img-clip.debug')
089.518  000.310  000.310: require('img-clip.config')
089.737  000.215  000.215: require('img-clip.util')
090.302  000.212  000.212: require('img-clip.clipboard')
090.765  000.245  000.245: require('img-clip.fs')
090.770  000.465  000.220: require('img-clip.markup')
090.777  000.929  000.252: require('img-clip.paste')
090.780  001.039  000.110: require('img-clip')
090.793  001.820  000.115: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
093.197  002.042  002.042: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
094.298  000.193  000.193: require('treesitter-context.config')
094.334  000.729  000.536: require('treesitter-context')
094.417  000.837  000.108: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
094.654  000.063  000.063: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
095.491  000.520  000.520: require('reactive.commands')
095.806  000.309  000.309: require('reactive.highlight')
096.707  000.313  000.313: require('reactive.util')
096.721  000.912  000.599: require('reactive.snapshot')
097.348  000.243  000.243: require('reactive.preset')
097.355  000.601  000.358: require('reactive.state')
097.495  002.559  000.217: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
098.170  000.515  000.515: require('snacks')
098.174  000.537  000.022: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
099.316  000.889  000.889: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
099.540  000.087  000.087: sourcing /nix/store/cwx8kyzwabc9jazjqvrlhd2d4ml4iblw-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
100.157  003.773: loading packages
100.160  000.003: loading after plugins
100.189  000.029: inits 3
105.637  005.448: reading ShaDa
107.085  000.141  000.141: require('cokeline.lazy')
107.097  000.399  000.259: require('cokeline')
107.556  000.147  000.147: require('cokeline.sliders')
107.589  000.489  000.341: require('cokeline.config')
107.735  000.136  000.136: require('cokeline.state')
108.357  000.248  000.248: require('cokeline.hlgroups')
109.525  000.329  000.329: require('plenary.functional')
109.751  000.220  000.220: require('plenary.compat')
109.782  001.406  000.856: require('plenary.iterators')
109.789  002.050  000.397: require('cokeline.components')
110.090  000.245  000.245: require('cokeline.history')
110.476  000.382  000.382: require('cokeline.mappings')
112.978  002.120  002.120: require('cokeline.hover')
113.487  000.472  000.472: require('cokeline.augroups')
113.692  001.763: opening buffers
119.032  000.580  000.580: require('ufo.utils')
119.045  004.424  003.844: require('ufo')
120.065  000.250  000.250: require('ufo.lib.disposable')
120.458  000.389  000.389: require('ufo.lib.log')
120.464  000.929  000.291: require('ufo.lib.event')
121.598  000.216  000.216: require('promise-async.utils')
121.917  000.315  000.315: require('promise-async.error')
122.198  000.271  000.271: require('promise-async.loop')
122.209  001.410  000.609: require('promise')
122.219  001.753  000.343: require('ufo.provider')
123.297  000.390  000.390: require('ufo.config')
123.940  000.321  000.321: require('promise-async.compat')
123.946  000.644  000.322: require('async')
125.372  000.447  000.447: require('ufo.model.buffer')
125.703  000.327  000.327: require('ufo.model.foldedline')
126.624  000.345  000.345: require('ufo.highlight')
127.013  000.385  000.385: require('ufo.render.extmark')
132.862  000.376  000.376: require('vim.treesitter.language')
133.123  000.253  000.253: require('vim.func')
133.427  000.298  000.298: require('vim.func._memoize')
133.482  002.139  001.213: require('vim.treesitter.query')
133.852  000.368  000.368: require('vim.treesitter._range')
133.876  004.774  002.268: require('vim.treesitter.languagetree')
133.886  005.568  000.794: require('vim.treesitter')
133.905  006.488  000.920: require('vim.treesitter.highlighter')
133.911  006.895  000.406: require('ufo.render.treesitter')
134.200  000.284  000.284: require('ufo.render.match')
134.208  008.501  000.593: require('ufo.render')
134.217  009.779  000.504: require('ufo.model.foldbuffer')
134.610  000.390  000.390: require('ufo.bufmanager')
136.039  000.065  000.065: require('ffi')
136.114  000.610  000.545: require('ufo.wffi')
136.120  001.505  000.895: require('ufo.fold.driver')
136.144  012.195  000.520: require('ufo.fold.manager')
136.960  000.791  000.791: require('ufo.lib.debounce')
136.998  014.777  000.757: require('ufo.fold')
138.766  000.610  000.610: require('ufo.model.window')
138.784  001.759  001.149: require('ufo.decorator')
140.255  000.593  000.593: require('ufo.preview.floatwin')
140.629  000.369  000.369: require('ufo.preview.scrollbar')
140.938  000.305  000.305: require('ufo.preview.winbar')
141.259  000.318  000.318: require('ufo.preview.keymap')
141.270  002.482  000.898: require('ufo.preview')
141.278  022.229  000.530: require('ufo.main')
141.327  000.038  000.038: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
141.429  000.009  000.009: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
141.439  000.004  000.004: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
141.461  000.019  000.019: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
141.596  000.026  000.026: sourcing nvim_exec2() called at BufEnter Autocommands for "*":0
146.098  003.660  003.660: require('spider')
146.549  000.404  000.404: require('spider.config')
150.861  003.380  003.380: require('colorUtils')
152.198  000.270  000.270: require('staline.utils')
152.231  000.655  000.385: require('staline.config')
152.236  001.357  000.702: require('staline')
153.194  000.374  000.374: require('ts-error-translator')
154.880  000.867  000.867: require('vim.lsp.completion')
154.964  001.758  000.891: require('vim.lsp.handlers')
158.948  002.025  002.025: require('nvim-web-devicons.icons-default')
159.141  003.064  001.039: require('nvim-web-devicons')
159.154  003.548  000.484: require('cokeline.buffers')
159.160  003.812  000.264: require('cokeline.tabs')
162.404  007.219: BufEnter autocommands
162.408  000.004: editing files in windows
168.077  004.871  004.871: require('mini.starter')
178.773  000.024  000.024: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
180.905  000.103  000.103: require('auto-session.logger')
180.931  000.748  000.645: require('auto-session.lib')
181.141  000.208  000.208: require('auto-session.config')
181.532  000.387  000.387: require('auto-session.autocmds')
181.544  002.138  000.795: require('auto-session')
183.934  000.364  000.364: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
190.493  000.352  000.352: require('telescope._extensions')
190.502  004.112  003.760: require('telescope')
194.485  000.416  000.416: require('plenary.bit')
194.553  001.379  000.964: require('plenary.path')
194.569  001.748  000.369: require('plenary.strings')
194.855  000.284  000.284: require('telescope.deprecated')
196.373  000.550  000.550: require('plenary.log')
196.413  000.843  000.294: require('telescope.log')
198.295  000.787  000.787: require('plenary.job')
198.630  000.330  000.330: require('telescope.state')
198.669  002.253  001.136: require('telescope.utils')
198.681  003.822  000.726: require('telescope.sorters')
202.791  010.656  004.801: require('telescope.config')
204.397  000.677  000.677: require('plenary.window.border')
205.337  000.936  000.936: require('plenary.window')
205.683  000.341  000.341: require('plenary.popup.utils')
205.709  002.905  000.951: require('plenary.popup')
206.158  000.444  000.444: require('telescope.pickers.scroller')
206.596  000.433  000.433: require('telescope.actions.state')
207.005  000.403  000.403: require('telescope.actions.utils')
208.013  000.470  000.470: require('telescope.actions.mt')
208.057  001.048  000.579: require('telescope.actions.set')
208.895  000.436  000.436: require('telescope.config.resolve')
208.900  000.840  000.404: require('telescope.pickers.entry_display')
209.182  000.279  000.279: require('telescope.from_entry')
209.856  019.350  002.342: require('telescope.actions')
212.439  000.487  000.487: require('fzf_lib')
212.448  001.010  000.523: require('telescope._extensions.fzf')
213.159  000.346  000.346: require('telescope-undo.actions')
213.168  000.701  000.355: require('telescope._extensions.undo')
213.734  000.213  000.213: require('auto-session.session-lens.actions')
213.740  000.383  000.169: require('auto-session.session-lens')
213.748  000.446  000.063: require('telescope._extensions.session-lens')
216.681  002.210  002.210: require('base16-colorscheme')
216.971  000.263  000.263: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
220.797  000.527  000.527: require('twilight.util')
220.861  001.089  000.563: require('twilight.config')
221.710  000.846  000.846: require('twilight.view')
221.715  002.540  000.605: require('twilight')
221.876  000.016  000.016: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
221.928  000.045  000.045: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
224.217  000.346  000.346: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
224.244  000.012  000.012: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
224.430  000.132  000.132: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
229.080  005.819  005.330: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
233.557  000.317  000.317: require('vim.provider')
234.087  000.523  000.523: require('vim.provider.python')
235.830  000.275  000.275: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
235.978  002.780  001.666: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
240.668  031.572: VimEnter autocommands
241.156  000.448  000.448: require('vim.termcap')
241.208  000.021  000.021: require('vim.text')
241.233  000.095: UIEnter autocommands
241.238  000.005: before starting main loop
242.887  001.649: first screen update
242.892  000.005: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.213  000.209: event init
000.339  000.126: early init
000.437  000.099: locale set
000.523  000.086: init first window
001.296  000.773: inits 1
001.313  000.017: window checked
001.317  000.004: parsing arguments
002.417  000.105  000.105: require('vim.shared')
002.610  000.076  000.076: require('vim.inspect')
002.703  000.076  000.076: require('vim._options')
002.708  000.284  000.132: require('vim._editor')
002.710  000.435  000.047: require('vim._init_packages')
002.717  000.964: init lua interpreter
004.928  002.211: nvim_ui_attach
005.614  000.686: nvim_set_client_info
005.619  000.005: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.159  000.157: event init
000.254  000.095: early init
000.328  000.074: locale set
000.395  000.067: init first window
000.892  000.497: inits 1
000.913  000.021: window checked
000.916  000.003: parsing arguments
001.577  000.056  000.056: require('vim.shared')
001.702  000.048  000.048: require('vim.inspect')
001.773  000.059  000.059: require('vim._options')
001.775  000.194  000.086: require('vim._editor')
001.777  000.290  000.040: require('vim._init_packages')
001.782  000.577: init lua interpreter
001.868  000.086: expanding arguments
001.895  000.027: inits 2
002.253  000.358: init highlight
002.254  000.002: waiting for UI
002.373  000.119: done waiting for UI
002.377  000.004: clear screen
002.550  000.020  000.020: require('vim.keymap')
003.602  000.167  000.167: sourcing nvim_exec2()
003.836  001.456  001.270: require('vim._defaults')
003.840  000.007: init default mappings & autocommands
005.180  000.027  000.027: sourcing nvim_exec2() called at /nix/store/a4h8md6975f48b66r8i0vs6kps0hmnd0-neovim-0.11.1-nvim/nvim-setup.lua:0
005.188  000.421  000.394: require('nixCats')
005.450  001.480  001.059: sourcing /nix/store/a4h8md6975f48b66r8i0vs6kps0hmnd0-neovim-0.11.1-nvim/nvim-setup.lua
005.457  000.137: --cmd commands
008.356  000.074  000.074: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.683  000.034  000.034: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.104  000.154  000.154: require('nixCatsUtils')
012.171  000.008  000.008: require('vim.F')
012.234  002.496  002.487: require('vim.diagnostic')
012.291  000.017  000.017: sourcing nvim_exec2() called at VIMINIT:0
012.685  003.536  001.023: require('luaConf.keys')
013.556  000.866  000.866: require('luaConf.options')
014.870  000.536  000.536: require('lze.c.loader')
014.876  000.714  000.178: require('lze.h.colorscheme')
015.192  000.314  000.314: require('lze.h.cmd')
015.482  000.287  000.287: require('lze.h.event')
015.619  000.134  000.134: require('lze.h.ft')
015.861  000.239  000.239: require('lze.h.keys')
016.001  000.137  000.137: require('lze.h.dep_of')
016.194  000.189  000.189: require('lze.h.on_plugin')
016.368  000.170  000.170: require('lze.h.on_require')
016.373  002.341  000.158: require('lze.h')
016.404  002.683  000.341: require('lze.c.handler')
016.409  002.847  000.165: require('lze')
016.459  000.048  000.048: require('nixCatsUtils.lzUtils')
016.599  000.124  000.124: require('lzextras')
016.846  000.243  000.243: require('lzextras.src.lsp')
018.443  001.266  001.266: require('oil')
018.664  000.216  000.216: require('oil.ringbuf')
019.036  000.369  000.369: require('oil.config')
021.609  002.367  002.367: require('vim.filetype')
023.671  000.356  000.356: require('oil.log')
023.704  000.956  000.601: require('oil.fs')
024.899  000.183  000.183: require('oil.constants')
024.912  001.203  001.020: require('oil.util')
025.133  000.183  000.183: require('lze.c.parse')
025.238  000.097  000.097: require('luaConf.plugins.mini')
025.289  000.041  000.041: require('luaConf.plugins.auto-session')
025.515  000.219  000.219: require('luaConf.plugins.cokeline')
025.646  000.123  000.123: require('luaConf.plugins.reactive')
026.647  000.247  000.247: require('nui.object')
028.933  000.532  000.532: require('vim.version')
031.034  003.058  002.526: require('nui.utils')
031.059  003.280  000.221: require('nui.text')
031.137  003.535  000.256: require('nui.line')
031.171  004.147  000.612: require('nui.popup.border')
031.364  000.190  000.190: require('nui.utils.buf_storage')
031.754  000.387  000.387: require('nui.utils.autocmd')
031.985  000.228  000.228: require('nui.utils.keymap')
032.269  000.281  000.281: require('nui.layout.utils')
032.290  005.638  000.405: require('nui.popup')
032.900  000.249  000.249: require('nui.split.utils')
032.917  000.625  000.376: require('nui.split')
033.230  000.310  000.310: require('nui.layout.float')
033.551  000.317  000.317: require('nui.layout.split')
033.571  007.683  000.546: require('nui.layout')
033.646  007.993  000.311: require('luaConf.plugins.telescope')
033.766  000.108  000.108: require('luaConf.plugins.treesitter')
033.922  000.107  000.107: require('luaConf.plugins.completion')
034.063  000.054  000.054: require('luaConf.plugins.toggleterm')
034.153  000.083  000.083: require('luaConf.plugins.codecompanion')
034.279  000.068  000.068: require('luaConf.plugins.spider')
034.352  000.066  000.066: require('luaConf.plugins.staline')
034.451  000.092  000.092: require('luaConf.plugins.colorizer')
034.614  000.085  000.085: require('luaConf.plugins.render-markdown')
034.725  000.103  000.103: require('luaConf.plugins.image')
034.806  000.075  000.075: require('luaConf.plugins.img-clip')
038.209  000.039  000.039: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
038.558  021.703  005.789: require('luaConf.plugins')
051.769  000.066  000.066: require('vim.fs')
051.818  000.592  000.526: require('vim.lsp.log')
053.717  001.895  001.895: require('vim.lsp.protocol')
057.145  003.421  003.421: require('vim.lsp.util')
058.208  000.476  000.476: require('vim.lsp.sync')
058.217  001.061  000.584: require('vim.lsp._changetracking')
059.218  000.371  000.371: require('vim.lsp._transport')
059.283  001.062  000.691: require('vim.lsp.rpc')
059.363  010.083  002.052: require('vim.lsp')
059.474  010.912  000.829: require('lspconfig.util')
059.685  000.207  000.207: require('lspconfig.async')
059.690  011.776  000.657: require('lspconfig.configs')
059.699  012.358  000.582: require('lspconfig')
060.426  000.723  000.723: require('vim.iter')
063.477  024.915  011.833: require('luaConf.LSPs')
064.034  000.547  000.547: require('luaConf.debug')
064.984  000.041  000.041: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
069.031  003.711  003.711: require('conform')
069.198  005.158  001.406: require('luaConf.format')
069.202  060.095  000.107: require('luaConf')
069.214  003.400: sourcing vimrc file(s)
070.341  000.465  000.465: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
070.347  000.570  000.106: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
070.836  000.089  000.089: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
070.946  000.536  000.446: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
073.000  000.031  000.031: sourcing /nix/store/7fg8br6v3k04h3flzvxkskmnxrqkmcyz-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
073.150  000.035  000.035: sourcing /nix/store/7fg8br6v3k04h3flzvxkskmnxrqkmcyz-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
073.956  000.537  000.537: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
074.712  000.206  000.206: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
076.111  000.226  000.226: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
076.294  001.547  001.321: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
076.472  000.144  000.144: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
076.523  000.012  000.012: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
076.660  000.009  000.009: sourcing /nix/store/a4h8md6975f48b66r8i0vs6kps0hmnd0-neovim-0.11.1-nvim/nvim-rplugin.vim
076.902  000.346  000.336: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
077.021  000.083  000.083: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
077.107  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
077.284  000.138  000.138: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
077.366  000.025  000.025: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
077.564  000.158  000.158: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
077.689  000.065  000.065: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
077.845  000.098  000.098: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
077.979  000.092  000.092: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
078.099  000.075  000.075: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
078.134  004.200: loading rtp plugins
079.090  000.039  000.039: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
082.625  000.089  000.089: require('eyeliner.config')
083.004  000.137  000.137: require('eyeliner.utils')
083.010  000.287  000.150: require('eyeliner.shared')
083.323  000.062  000.062: require('eyeliner.string')
083.328  000.226  000.164: require('eyeliner.liner')
083.331  000.319  000.093: require('eyeliner.always-on')
083.490  000.157  000.157: require('eyeliner.on-key')
083.495  000.864  000.101: require('eyeliner.main')
083.497  004.244  003.292: require('eyeliner')
083.665  004.445  000.201: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
084.240  000.161  000.161: require('img-clip.debug')
084.596  000.352  000.352: require('img-clip.config')
084.795  000.194  000.194: require('img-clip.util')
085.336  000.206  000.206: require('img-clip.clipboard')
085.782  000.262  000.262: require('img-clip.fs')
085.787  000.448  000.186: require('img-clip.markup')
085.792  000.882  000.227: require('img-clip.paste')
085.794  000.996  000.115: require('img-clip')
085.808  001.816  000.113: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
088.188  001.988  001.988: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
089.365  000.234  000.234: require('treesitter-context.config')
089.394  000.829  000.595: require('treesitter-context')
089.490  000.944  000.115: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
089.736  000.055  000.055: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
090.412  000.452  000.452: require('reactive.commands')
090.715  000.293  000.293: require('reactive.highlight')
091.484  000.321  000.321: require('reactive.util')
091.497  000.779  000.458: require('reactive.snapshot')
092.159  000.272  000.272: require('reactive.preset')
092.166  000.637  000.365: require('reactive.state')
092.356  002.422  000.261: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
093.089  000.565  000.565: require('snacks')
093.093  000.587  000.022: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
094.245  000.903  000.903: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
094.469  000.087  000.087: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
095.121  003.700: loading packages
095.124  000.003: loading after plugins
095.154  000.030: inits 3
099.988  004.834: reading ShaDa
100.559  000.571: opening buffers
105.703  004.385  004.385: require('spider')
105.966  000.255  000.255: require('spider.config')
109.871  003.155  003.155: require('colorUtils')
111.292  000.277  000.277: require('staline.utils')
111.327  000.661  000.383: require('staline.config')
111.334  001.439  000.779: require('staline')
112.398  000.405  000.405: require('ts-error-translator')
114.135  000.866  000.866: require('vim.lsp.completion')
114.218  001.800  000.934: require('vim.lsp.handlers')
114.519  002.521: BufEnter autocommands
114.524  000.004: editing files in windows
120.597  005.273  005.273: require('mini.starter')
130.846  000.032  000.032: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
133.981  000.114  000.114: require('auto-session.logger')
134.008  000.843  000.729: require('auto-session.lib')
134.283  000.272  000.272: require('auto-session.config')
134.774  000.484  000.484: require('auto-session.autocmds')
134.801  002.467  000.868: require('auto-session')
137.147  000.388  000.388: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
143.460  000.309  000.309: require('telescope._extensions')
143.474  003.918  003.609: require('telescope')
148.761  000.506  000.506: require('plenary.bit')
149.099  000.331  000.331: require('plenary.functional')
149.270  000.078  000.078: require('ffi')
149.355  002.474  001.560: require('plenary.path')
149.381  002.999  000.525: require('plenary.strings')
149.727  000.344  000.344: require('telescope.deprecated')
152.576  001.300  001.300: require('plenary.log')
152.708  001.687  000.387: require('telescope.log')
155.061  000.200  000.200: require('plenary.compat')
155.073  000.823  000.624: require('plenary.job')
155.368  000.293  000.293: require('telescope.state')
155.394  002.682  001.566: require('telescope.utils')
155.418  005.687  001.318: require('telescope.sorters')
157.561  012.035  003.006: require('telescope.config')
158.504  000.434  000.434: require('plenary.window.border')
158.700  000.190  000.190: require('plenary.window')
158.888  000.184  000.184: require('plenary.popup.utils')
158.894  001.326  000.518: require('plenary.popup')
159.254  000.358  000.358: require('telescope.pickers.scroller')
159.548  000.290  000.290: require('telescope.actions.state')
159.895  000.344  000.344: require('telescope.actions.utils')
160.809  000.395  000.395: require('telescope.actions.mt')
160.851  000.954  000.559: require('telescope.actions.set')
161.623  000.401  000.401: require('telescope.config.resolve')
161.627  000.773  000.372: require('telescope.pickers.entry_display')
161.910  000.281  000.281: require('telescope.from_entry')
162.227  018.746  002.385: require('telescope.actions')
164.512  000.504  000.504: require('fzf_lib')
164.520  000.965  000.461: require('telescope._extensions.fzf')
165.155  000.310  000.310: require('telescope-undo.actions')
165.162  000.632  000.322: require('telescope._extensions.undo')
165.623  000.124  000.124: require('auto-session.session-lens.actions')
165.630  000.288  000.164: require('auto-session.session-lens')
165.633  000.361  000.073: require('telescope._extensions.session-lens')
167.631  001.287  001.287: require('base16-colorscheme')
167.853  000.198  000.198: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
170.424  000.379  000.379: require('twilight.util')
170.443  000.768  000.389: require('twilight.config')
170.955  000.510  000.510: require('twilight.view')
170.960  001.682  000.404: require('twilight')
171.088  000.012  000.012: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
171.138  000.043  000.043: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
174.251  000.421  000.421: require('vim.treesitter.language')
174.549  000.290  000.290: require('vim.func')
174.892  000.337  000.337: require('vim.func._memoize')
174.955  002.140  001.093: require('vim.treesitter.query')
175.348  000.390  000.390: require('vim.treesitter._range')
175.370  003.609  001.078: require('vim.treesitter.languagetree')
175.379  004.224  000.615: require('vim.treesitter')
176.396  000.368  000.368: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
176.432  000.015  000.015: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
176.500  000.054  000.054: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
180.279  004.765  004.327: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
184.862  000.348  000.348: require('vim.provider')
185.280  000.410  000.410: require('vim.provider.python')
186.360  000.178  000.178: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
186.457  001.997  001.061: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
190.951  029.439: VimEnter autocommands
191.516  000.489  000.489: require('vim.termcap')
191.571  000.028  000.028: require('vim.text')
191.596  000.128: UIEnter autocommands
191.600  000.004: before starting main loop
192.978  001.378: first screen update
192.984  000.006: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.164  000.162: event init
000.257  000.093: early init
000.323  000.066: locale set
000.389  000.066: init first window
000.927  000.538: inits 1
000.940  000.013: window checked
000.984  000.044: parsing arguments
001.629  000.060  000.060: require('vim.shared')
001.752  000.048  000.048: require('vim.inspect')
001.812  000.049  000.049: require('vim._options')
001.814  000.181  000.084: require('vim._editor')
001.816  000.270  000.029: require('vim._init_packages')
001.822  000.568: init lua interpreter
003.628  001.806: nvim_ui_attach
004.020  000.392: nvim_set_client_info
004.023  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.006  000.006: --- NVIM STARTING ---
000.142  000.136: event init
000.237  000.095: early init
000.300  000.063: locale set
000.369  000.068: init first window
000.859  000.490: inits 1
000.879  000.020: window checked
000.915  000.035: parsing arguments
001.665  000.059  000.059: require('vim.shared')
001.790  000.048  000.048: require('vim.inspect')
001.848  000.046  000.046: require('vim._options')
001.850  000.181  000.086: require('vim._editor')
001.852  000.266  000.026: require('vim._init_packages')
001.857  000.677: init lua interpreter
001.948  000.090: expanding arguments
001.973  000.025: inits 2
002.303  000.330: init highlight
002.304  000.001: waiting for UI
002.401  000.097: done waiting for UI
002.405  000.004: clear screen
002.568  000.020  000.020: require('vim.keymap')
003.665  000.162  000.162: sourcing nvim_exec2()
003.889  001.480  001.298: require('vim._defaults')
003.892  000.006: init default mappings & autocommands
005.157  000.025  000.025: sourcing nvim_exec2() called at /nix/store/a4h8md6975f48b66r8i0vs6kps0hmnd0-neovim-0.11.1-nvim/nvim-setup.lua:0
005.165  000.415  000.390: require('nixCats')
005.433  001.451  001.036: sourcing /nix/store/a4h8md6975f48b66r8i0vs6kps0hmnd0-neovim-0.11.1-nvim/nvim-setup.lua
005.441  000.098: --cmd commands
008.243  000.077  000.077: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.635  000.067  000.067: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.077  000.137  000.137: require('nixCatsUtils')
011.944  000.007  000.007: require('vim.F')
011.994  002.177  002.170: require('vim.diagnostic')
012.115  000.013  000.013: sourcing nvim_exec2() called at VIMINIT:0
012.416  003.276  001.086: require('luaConf.keys')
012.954  000.535  000.535: require('luaConf.options')
014.189  000.506  000.506: require('lze.c.loader')
014.195  000.667  000.161: require('lze.h.colorscheme')
014.477  000.280  000.280: require('lze.h.cmd')
014.757  000.276  000.276: require('lze.h.event')
014.916  000.155  000.155: require('lze.h.ft')
015.190  000.271  000.271: require('lze.h.keys')
015.365  000.170  000.170: require('lze.h.dep_of')
015.493  000.125  000.125: require('lze.h.on_plugin')
015.665  000.169  000.169: require('lze.h.on_require')
015.668  002.247  000.134: require('lze.h')
015.704  002.614  000.367: require('lze.c.handler')
015.709  002.751  000.137: require('lze')
015.765  000.055  000.055: require('nixCatsUtils.lzUtils')
015.909  000.133  000.133: require('lzextras')
016.159  000.247  000.247: require('lzextras.src.lsp')
017.743  001.247  001.247: require('oil')
017.955  000.208  000.208: require('oil.ringbuf')
018.331  000.372  000.372: require('oil.config')
020.775  002.208  002.208: require('vim.filetype')
022.432  000.313  000.313: require('oil.log')
022.456  000.794  000.481: require('oil.fs')
023.640  000.182  000.182: require('oil.constants')
023.660  001.201  001.019: require('oil.util')
024.068  000.212  000.212: require('lze.c.parse')
024.187  000.111  000.111: require('luaConf.plugins.mini')
024.239  000.041  000.041: require('luaConf.plugins.auto-session')
024.470  000.224  000.224: require('luaConf.plugins.cokeline')
024.600  000.122  000.122: require('luaConf.plugins.reactive')
025.632  000.245  000.245: require('nui.object')
027.918  000.520  000.520: require('vim.version')
029.750  002.772  002.252: require('nui.utils')
029.818  003.041  000.269: require('nui.text')
029.828  003.233  000.193: require('nui.line')
029.862  003.856  000.623: require('nui.popup.border')
030.038  000.174  000.174: require('nui.utils.buf_storage')
030.418  000.377  000.377: require('nui.utils.autocmd')
030.646  000.225  000.225: require('nui.utils.keymap')
030.912  000.263  000.263: require('nui.layout.utils')
030.936  005.299  000.404: require('nui.popup')
031.584  000.259  000.259: require('nui.split.utils')
031.632  000.694  000.435: require('nui.split')
031.923  000.285  000.285: require('nui.layout.float')
032.220  000.295  000.295: require('nui.layout.split')
032.238  007.367  000.549: require('nui.layout')
032.276  007.669  000.302: require('luaConf.plugins.telescope')
032.398  000.112  000.112: require('luaConf.plugins.treesitter')
032.533  000.094  000.094: require('luaConf.plugins.completion')
032.673  000.057  000.057: require('luaConf.plugins.toggleterm')
032.735  000.054  000.054: require('luaConf.plugins.codecompanion')
032.837  000.048  000.048: require('luaConf.plugins.spider')
032.928  000.068  000.068: require('luaConf.plugins.staline')
032.981  000.048  000.048: require('luaConf.plugins.colorizer')
033.121  000.060  000.060: require('luaConf.plugins.render-markdown')
033.187  000.059  000.059: require('luaConf.plugins.image')
033.241  000.049  000.049: require('luaConf.plugins.img-clip')
036.890  000.043  000.043: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
037.398  021.229  006.127: require('luaConf.plugins')
051.556  000.111  000.111: require('vim.fs')
051.606  000.743  000.631: require('vim.lsp.log')
053.588  001.978  001.978: require('vim.lsp.protocol')
056.257  002.662  002.662: require('vim.lsp.util')
057.187  000.448  000.448: require('vim.lsp.sync')
057.196  000.934  000.486: require('vim.lsp._changetracking')
058.232  000.383  000.383: require('vim.lsp._transport')
058.299  001.099  000.716: require('vim.lsp.rpc')
058.384  009.501  002.086: require('vim.lsp')
058.491  010.301  000.800: require('lspconfig.util')
058.701  000.206  000.206: require('lspconfig.async')
058.711  011.091  000.584: require('lspconfig.configs')
058.729  011.602  000.511: require('lspconfig')
059.415  000.682  000.682: require('vim.iter')
062.860  025.456  013.172: require('luaConf.LSPs')
063.329  000.451  000.451: require('luaConf.debug')
064.380  000.050  000.050: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
068.371  003.637  003.637: require('conform')
068.522  005.187  001.500: require('luaConf.format')
068.526  059.445  000.127: require('luaConf')
068.535  003.368: sourcing vimrc file(s)
069.686  000.466  000.466: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
069.693  000.572  000.106: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
070.181  000.093  000.093: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
070.297  000.541  000.448: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
072.027  000.035  000.035: sourcing /nix/store/7fg8br6v3k04h3flzvxkskmnxrqkmcyz-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
072.174  000.030  000.030: sourcing /nix/store/7fg8br6v3k04h3flzvxkskmnxrqkmcyz-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
073.003  000.557  000.557: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
073.820  000.227  000.227: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
075.329  000.251  000.251: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
075.514  001.646  001.396: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
075.702  000.150  000.150: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
075.752  000.012  000.012: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
075.893  000.009  000.009: sourcing /nix/store/a4h8md6975f48b66r8i0vs6kps0hmnd0-neovim-0.11.1-nvim/nvim-rplugin.vim
076.138  000.351  000.342: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
076.251  000.077  000.077: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
076.320  000.022  000.022: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
076.457  000.100  000.100: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
076.525  000.021  000.021: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
076.737  000.172  000.172: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
076.887  000.075  000.075: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
077.014  000.085  000.085: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
077.172  000.119  000.119: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
077.275  000.058  000.058: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
077.375  003.991: loading rtp plugins
079.017  000.080  000.080: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
083.091  000.140  000.140: require('eyeliner.config')
083.544  000.139  000.139: require('eyeliner.utils')
083.551  000.324  000.185: require('eyeliner.shared')
083.872  000.062  000.062: require('eyeliner.string')
083.878  000.231  000.169: require('eyeliner.liner')
083.881  000.328  000.097: require('eyeliner.always-on')
084.064  000.181  000.181: require('eyeliner.on-key')
084.070  000.972  000.140: require('eyeliner.main')
084.073  004.803  003.691: require('eyeliner')
084.293  005.075  000.272: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
084.859  000.126  000.126: require('img-clip.debug')
085.215  000.352  000.352: require('img-clip.config')
085.428  000.209  000.209: require('img-clip.util')
085.972  000.205  000.205: require('img-clip.clipboard')
086.411  000.238  000.238: require('img-clip.fs')
086.415  000.441  000.202: require('img-clip.markup')
086.420  000.884  000.239: require('img-clip.paste')
086.423  000.992  000.108: require('img-clip')
086.451  001.808  000.129: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
088.707  001.886  001.886: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
089.776  000.188  000.188: require('treesitter-context.config')
089.805  000.701  000.512: require('treesitter-context')
089.884  000.801  000.100: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
090.100  000.043  000.043: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
090.722  000.401  000.401: require('reactive.commands')
091.004  000.277  000.277: require('reactive.highlight')
091.771  000.325  000.325: require('reactive.util')
091.787  000.780  000.455: require('reactive.snapshot')
092.445  000.245  000.245: require('reactive.preset')
092.455  000.627  000.382: require('reactive.state')
092.604  002.310  000.225: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
093.234  000.464  000.464: require('snacks')
093.238  000.490  000.026: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
094.427  000.928  000.928: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
094.650  000.089  000.089: sourcing /nix/store/rb7d2inci5d7w8kljjvl6wk8fkfk0jrr-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
095.279  004.395: loading packages
095.281  000.003: loading after plugins
095.319  000.037: inits 3
099.986  004.667: reading ShaDa
101.442  000.632  000.632: require('oil.actions')
101.777  000.329  000.329: require('oil.layout')
101.781  001.379  000.418: require('oil.keymap_util')
102.032  000.249  000.249: require('oil.loading')
103.875  000.806  000.806: require('oil.cache')
108.878  002.637  002.637: require('nvim-web-devicons.icons-default')
109.169  004.109  001.473: require('nvim-web-devicons')
109.206  005.326  001.217: require('oil.columns')
109.251  007.216  001.084: require('oil.view')
110.460  000.300  000.300: require('oil.git')
110.784  000.318  000.318: require('oil.adapters.files.permissions')
111.068  000.280  000.280: require('oil.adapters.files.trash')
111.098  001.828  000.930: require('oil.adapters.files')
115.136  000.053  000.053: sourcing /nix/store/7fg8br6v3k04h3flzvxkskmnxrqkmcyz-vim-pack-dir/pack/myNeovimPackages/start/oil.nvim/syntax/oil.vim
117.033  000.502  000.502: require('dropbar.hlgroups')
120.326  000.129  000.129: require('dropbar.utils')
120.802  000.467  000.467: require('dropbar.api')
120.927  002.889  002.293: require('dropbar.configs')
120.955  003.917  001.027: require('dropbar.bar')
120.986  004.789  000.370: require('dropbar')
123.516  000.188  000.188: require('dropbar.utils.bar')
126.497  000.384  000.384: require('vim.treesitter.language')
126.755  000.250  000.250: require('vim.func')
127.053  000.291  000.291: require('vim.func._memoize')
127.101  002.014  001.089: require('vim.treesitter.query')
127.461  000.357  000.357: require('vim.treesitter._range')
127.483  003.378  001.007: require('vim.treesitter.languagetree')
127.492  003.941  000.563: require('vim.treesitter')
131.532  011.904: opening buffers
138.372  005.561  005.561: require('colorUtils')
140.273  000.400  000.400: require('staline.utils')
140.330  000.934  000.534: require('staline.config')
140.341  001.944  001.011: require('staline')
145.218  003.852  003.852: require('spider')
145.523  000.297  000.297: require('spider.config')
146.608  000.368  000.368: require('ts-error-translator')
148.454  000.912  000.912: require('vim.lsp.completion')
148.551  001.893  000.981: require('vim.lsp.handlers')
148.737  003.290: BufEnter autocommands
148.742  000.004: editing files in windows
151.177  000.096  000.096: require('auto-session.logger')
151.195  000.674  000.578: require('auto-session.lib')
151.412  000.214  000.214: require('auto-session.config')
151.775  000.359  000.359: require('auto-session.autocmds')
151.788  001.891  000.644: require('auto-session')
154.459  000.502  000.502: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
161.015  000.357  000.357: require('telescope._extensions')
161.030  004.135  003.778: require('telescope')
164.722  000.408  000.408: require('plenary.bit')
164.965  000.233  000.233: require('plenary.functional')
165.003  000.023  000.023: require('ffi')
165.028  001.546  000.882: require('plenary.path')
165.044  001.917  000.371: require('plenary.strings')
165.320  000.274  000.274: require('telescope.deprecated')
166.604  000.401  000.401: require('plenary.log')
166.628  000.673  000.272: require('telescope.log')
168.834  000.209  000.209: require('plenary.compat')
168.846  001.029  000.821: require('plenary.job')
169.144  000.294  000.294: require('telescope.state')
169.170  002.539  001.216: require('telescope.utils')
169.181  003.858  000.646: require('telescope.sorters')
171.534  008.999  002.951: require('telescope.config')
172.483  000.403  000.403: require('plenary.window.border')
172.676  000.189  000.189: require('plenary.window')
172.866  000.186  000.186: require('plenary.popup.utils')
172.903  001.362  000.584: require('plenary.popup')
173.261  000.355  000.355: require('telescope.pickers.scroller')
173.576  000.311  000.311: require('telescope.actions.state')
173.933  000.352  000.352: require('telescope.actions.utils')
174.914  000.458  000.458: require('telescope.actions.mt')
174.948  001.012  000.554: require('telescope.actions.set')
175.895  000.451  000.451: require('telescope.config.resolve')
175.900  000.949  000.497: require('telescope.pickers.entry_display')
176.181  000.278  000.278: require('telescope.from_entry')
176.574  015.536  001.918: require('telescope.actions')
179.034  000.453  000.453: require('fzf_lib')
179.046  000.927  000.475: require('telescope._extensions.fzf')
179.744  000.340  000.340: require('telescope-undo.actions')
179.756  000.696  000.356: require('telescope._extensions.undo')
180.271  000.148  000.148: require('auto-session.session-lens.actions')
180.277  000.361  000.212: require('auto-session.session-lens')
180.281  000.421  000.060: require('telescope._extensions.session-lens')
188.049  006.087  006.087: require('mini.starter')
197.967  000.016  000.016: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
200.450  001.859  001.859: require('base16-colorscheme')
200.678  000.194  000.194: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
203.073  000.446  000.446: require('twilight.util')
203.100  000.916  000.470: require('twilight.config')
203.708  000.604  000.604: require('twilight.view')
203.713  001.917  000.397: require('twilight')
203.851  000.011  000.011: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
203.898  000.040  000.040: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
210.222  000.388  000.388: require('vim.provider')
210.716  000.485  000.485: require('vim.provider.python')
211.736  000.198  000.198: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
211.826  002.077  001.006: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
260.951  075.900: VimEnter autocommands
261.570  000.534  000.534: require('vim.termcap')
261.627  000.029  000.029: require('vim.text')
261.655  000.141: UIEnter autocommands
262.559  000.358  000.358: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
262.571  000.557: before starting main loop
262.820  000.249: first screen update
262.824  000.004: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.156  000.153: event init
000.253  000.097: early init
000.315  000.063: locale set
000.380  000.065: init first window
000.914  000.534: inits 1
000.927  000.013: window checked
000.930  000.003: parsing arguments
001.572  000.060  000.060: require('vim.shared')
001.708  000.056  000.056: require('vim.inspect')
001.767  000.047  000.047: require('vim._options')
001.769  000.191  000.088: require('vim._editor')
001.771  000.281  000.031: require('vim._init_packages')
001.776  000.565: init lua interpreter
003.474  001.698: nvim_ui_attach
003.856  000.382: nvim_set_client_info
003.858  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.142  000.139: event init
000.232  000.090: early init
000.295  000.064: locale set
000.365  000.070: init first window
000.883  000.517: inits 1
000.903  000.020: window checked
000.906  000.003: parsing arguments
001.518  000.062  000.062: require('vim.shared')
001.645  000.047  000.047: require('vim.inspect')
001.702  000.045  000.045: require('vim._options')
001.707  000.185  000.093: require('vim._editor')
001.709  000.274  000.027: require('vim._init_packages')
001.714  000.534: init lua interpreter
001.800  000.086: expanding arguments
001.825  000.025: inits 2
002.144  000.319: init highlight
002.146  000.001: waiting for UI
002.267  000.122: done waiting for UI
002.271  000.004: clear screen
002.427  000.019  000.019: require('vim.keymap')
003.471  000.162  000.162: sourcing nvim_exec2()
003.664  001.390  001.208: require('vim._defaults')
003.667  000.006: init default mappings & autocommands
005.007  000.035  000.035: sourcing nvim_exec2() called at /nix/store/xji0f81wzid3dswzdb4a1bgl76kr1z88-neovim-0.11.1-nvim/nvim-setup.lua:0
005.022  000.556  000.521: require('nixCats')
005.267  001.510  000.955: sourcing /nix/store/xji0f81wzid3dswzdb4a1bgl76kr1z88-neovim-0.11.1-nvim/nvim-setup.lua
005.275  000.098: --cmd commands
008.258  000.050  000.050: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.580  000.033  000.033: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.021  000.160  000.160: require('nixCatsUtils')
011.953  000.009  000.009: require('vim.F')
012.004  002.238  002.228: require('vim.diagnostic')
012.130  000.017  000.017: sourcing nvim_exec2() called at VIMINIT:0
012.516  003.444  001.190: require('luaConf.keys')
013.070  000.550  000.550: require('luaConf.options')
014.526  000.615  000.615: require('lze.c.loader')
014.532  000.840  000.225: require('lze.h.colorscheme')
014.881  000.346  000.346: require('lze.h.cmd')
015.160  000.275  000.275: require('lze.h.event')
015.298  000.135  000.135: require('lze.h.ft')
015.546  000.244  000.244: require('lze.h.keys')
015.673  000.124  000.124: require('lze.h.dep_of')
015.798  000.121  000.121: require('lze.h.on_plugin')
015.933  000.132  000.132: require('lze.h.on_require')
015.936  002.370  000.152: require('lze.h')
015.965  002.743  000.374: require('lze.c.handler')
015.970  002.895  000.152: require('lze')
016.017  000.045  000.045: require('nixCatsUtils.lzUtils')
016.204  000.134  000.134: require('lzextras')
016.450  000.242  000.242: require('lzextras.src.lsp')
017.975  001.197  001.197: require('oil')
018.176  000.195  000.195: require('oil.ringbuf')
018.558  000.378  000.378: require('oil.config')
021.212  002.361  002.361: require('vim.filetype')
022.816  000.256  000.256: require('oil.log')
022.917  000.821  000.566: require('oil.fs')
024.045  000.189  000.189: require('oil.constants')
024.072  001.151  000.962: require('oil.util')
024.285  000.184  000.184: require('lze.c.parse')
024.413  000.101  000.101: require('luaConf.plugins.mini')
024.470  000.046  000.046: require('luaConf.plugins.auto-session')
024.693  000.216  000.216: require('luaConf.plugins.cokeline')
024.825  000.124  000.124: require('luaConf.plugins.reactive')
025.806  000.242  000.242: require('nui.object')
028.062  000.519  000.519: require('vim.version')
029.801  002.674  002.155: require('nui.utils')
029.815  002.883  000.209: require('nui.text')
029.838  003.097  000.214: require('nui.line')
029.912  003.737  000.640: require('nui.popup.border')
030.103  000.164  000.164: require('nui.utils.buf_storage')
030.470  000.364  000.364: require('nui.utils.autocmd')
030.698  000.225  000.225: require('nui.utils.keymap')
030.985  000.283  000.283: require('nui.layout.utils')
031.006  005.195  000.423: require('nui.popup')
031.608  000.252  000.252: require('nui.split.utils')
031.635  000.627  000.375: require('nui.split')
031.915  000.278  000.278: require('nui.layout.float')
032.228  000.309  000.309: require('nui.layout.split')
032.251  007.170  000.519: require('nui.layout')
032.321  007.489  000.319: require('luaConf.plugins.telescope')
032.469  000.137  000.137: require('luaConf.plugins.treesitter')
032.628  000.118  000.118: require('luaConf.plugins.completion')
032.774  000.052  000.052: require('luaConf.plugins.toggleterm')
032.863  000.081  000.081: require('luaConf.plugins.codecompanion')
032.993  000.052  000.052: require('luaConf.plugins.spider')
033.066  000.066  000.066: require('luaConf.plugins.staline')
033.134  000.063  000.063: require('luaConf.plugins.colorizer')
033.279  000.061  000.061: require('luaConf.plugins.render-markdown')
033.352  000.066  000.066: require('luaConf.plugins.image')
033.412  000.055  000.055: require('luaConf.plugins.img-clip')
036.811  000.039  000.039: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
037.162  020.699  005.646: require('luaConf.plugins')
050.480  000.079  000.079: require('vim.fs')
050.530  000.570  000.491: require('vim.lsp.log')
052.852  002.318  002.318: require('vim.lsp.protocol')
055.683  002.823  002.823: require('vim.lsp.util')
056.611  000.433  000.433: require('vim.lsp.sync')
056.620  000.929  000.496: require('vim.lsp._changetracking')
057.629  000.371  000.371: require('vim.lsp._transport')
057.656  001.033  000.661: require('vim.lsp.rpc')
057.747  009.518  001.844: require('vim.lsp')
057.861  010.424  000.907: require('lspconfig.util')
058.070  000.205  000.205: require('lspconfig.async')
058.074  011.506  000.876: require('lspconfig.configs')
058.088  012.044  000.538: require('lspconfig')
058.766  000.674  000.674: require('vim.iter')
062.072  024.906  012.189: require('luaConf.LSPs')
062.601  000.520  000.520: require('luaConf.debug')
063.587  000.040  000.040: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
067.804  003.843  003.843: require('conform')
067.913  005.306  001.423: require('luaConf.format')
067.917  058.891  000.151: require('luaConf')
067.926  003.515: sourcing vimrc file(s)
069.051  000.468  000.468: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
069.057  000.574  000.106: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
069.557  000.102  000.102: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
069.667  000.548  000.446: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
071.417  000.031  000.031: sourcing /nix/store/j7054yx9wwicarw65yc5594b5ir2fvgg-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
071.563  000.032  000.032: sourcing /nix/store/j7054yx9wwicarw65yc5594b5ir2fvgg-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
072.382  000.551  000.551: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
073.299  000.207  000.207: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
074.640  000.204  000.204: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
074.831  001.496  001.291: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
075.104  000.223  000.223: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
075.187  000.019  000.019: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
075.405  000.010  000.010: sourcing /nix/store/xji0f81wzid3dswzdb4a1bgl76kr1z88-neovim-0.11.1-nvim/nvim-rplugin.vim
075.682  000.424  000.413: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
075.796  000.076  000.076: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
075.889  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
076.039  000.112  000.112: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
076.138  000.035  000.035: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
076.331  000.153  000.153: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
076.449  000.072  000.072: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
076.577  000.082  000.082: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
076.726  000.111  000.111: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
076.826  000.057  000.057: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
076.877  004.125: loading rtp plugins
077.831  000.039  000.039: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
081.748  000.092  000.092: require('eyeliner.config')
082.121  000.127  000.127: require('eyeliner.utils')
082.127  000.283  000.157: require('eyeliner.shared')
082.443  000.064  000.064: require('eyeliner.string')
082.449  000.226  000.162: require('eyeliner.liner')
082.452  000.323  000.097: require('eyeliner.always-on')
082.607  000.153  000.153: require('eyeliner.on-key')
082.611  000.858  000.099: require('eyeliner.main')
082.614  004.621  003.671: require('eyeliner')
082.729  004.769  000.148: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
083.274  000.127  000.127: require('img-clip.debug')
083.580  000.302  000.302: require('img-clip.config')
083.771  000.187  000.187: require('img-clip.util')
084.316  000.208  000.208: require('img-clip.clipboard')
084.734  000.231  000.231: require('img-clip.fs')
084.740  000.420  000.189: require('img-clip.markup')
084.745  000.859  000.232: require('img-clip.paste')
084.747  000.973  000.114: require('img-clip')
084.761  001.703  000.115: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
086.966  001.829  001.829: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
088.064  000.253  000.253: require('treesitter-context.config')
088.086  000.743  000.490: require('treesitter-context')
088.167  000.843  000.100: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
088.387  000.050  000.050: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
089.129  000.520  000.520: require('reactive.commands')
089.498  000.348  000.348: require('reactive.highlight')
090.281  000.308  000.308: require('reactive.util')
090.296  000.794  000.485: require('reactive.snapshot')
090.963  000.255  000.255: require('reactive.preset')
090.974  000.642  000.387: require('reactive.state')
091.164  002.583  000.280: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
091.777  000.450  000.450: require('snacks')
091.782  000.477  000.027: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
092.948  000.925  000.925: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
093.176  000.088  000.088: sourcing /nix/store/6w8mp1z8lr88c8i4ddv7ivm40azdhvbq-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
094.125  003.944: loading packages
094.130  000.005: loading after plugins
094.182  000.052: inits 3
098.899  004.717: reading ShaDa
099.463  000.564: opening buffers
103.501  003.308  003.308: require('colorUtils')
104.843  000.281  000.281: require('staline.utils')
104.883  000.651  000.370: require('staline.config')
104.888  001.363  000.712: require('staline')
109.589  004.075  004.075: require('spider')
109.841  000.247  000.247: require('spider.config')
110.846  000.386  000.386: require('ts-error-translator')
112.696  000.979  000.979: require('vim.lsp.completion')
112.809  001.947  000.967: require('vim.lsp.handlers')
113.059  002.271: BufEnter autocommands
113.063  000.004: editing files in windows
119.786  005.042  005.042: require('mini.starter')
129.362  000.024  000.024: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
133.043  000.171  000.171: require('auto-session.logger')
133.090  001.348  001.177: require('auto-session.lib')
133.541  000.445  000.445: require('auto-session.config')
134.276  000.729  000.729: require('auto-session.autocmds')
134.302  004.128  001.607: require('auto-session')
138.109  000.695  000.695: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
147.659  000.325  000.325: require('telescope._extensions')
147.670  005.495  005.170: require('telescope')
152.523  000.739  000.739: require('plenary.bit')
152.914  000.381  000.381: require('plenary.functional')
153.046  000.077  000.077: require('ffi')
153.149  002.633  001.436: require('plenary.path')
153.176  003.011  000.378: require('plenary.strings')
153.499  000.322  000.322: require('telescope.deprecated')
156.281  000.969  000.969: require('plenary.log')
156.381  001.429  000.460: require('telescope.log')
159.073  000.313  000.313: require('plenary.compat')
159.092  001.260  000.947: require('plenary.job')
159.503  000.405  000.405: require('telescope.state')
159.560  003.174  001.508: require('telescope.utils')
159.577  006.074  001.471: require('telescope.sorters')
163.088  013.614  004.207: require('telescope.config')
164.654  000.696  000.696: require('plenary.window.border')
165.016  000.354  000.354: require('plenary.window')
165.314  000.292  000.292: require('plenary.popup.utils')
165.324  002.223  000.880: require('plenary.popup')
165.836  000.507  000.507: require('telescope.pickers.scroller')
166.287  000.444  000.444: require('telescope.actions.state')
166.725  000.430  000.430: require('telescope.actions.utils')
167.665  000.397  000.397: require('telescope.actions.mt')
167.702  000.971  000.574: require('telescope.actions.set')
168.457  000.391  000.391: require('telescope.config.resolve')
168.463  000.758  000.367: require('telescope.pickers.entry_display')
168.737  000.272  000.272: require('telescope.from_entry')
169.088  021.410  002.191: require('telescope.actions')
171.524  000.521  000.521: require('fzf_lib')
171.537  001.008  000.487: require('telescope._extensions.fzf')
172.265  000.347  000.347: require('telescope-undo.actions')
172.275  000.726  000.378: require('telescope._extensions.undo')
172.625  000.103  000.103: require('auto-session.session-lens.actions')
172.630  000.229  000.126: require('auto-session.session-lens')
172.633  000.282  000.053: require('telescope._extensions.session-lens')
173.809  000.451  000.451: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
173.843  000.015  000.015: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
173.908  000.050  000.050: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
177.763  005.005  004.489: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
182.061  000.332  000.332: require('vim.provider')
182.463  000.393  000.393: require('vim.provider.python')
183.425  000.171  000.171: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
183.513  001.825  000.928: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
188.260  029.559: VimEnter autocommands
189.280  000.899  000.899: require('vim.termcap')
189.363  000.041  000.041: require('vim.text')
189.432  000.232: UIEnter autocommands
189.448  000.016: before starting main loop
192.038  002.590: first screen update
192.045  000.007: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.162  000.159: event init
000.255  000.094: early init
000.325  000.070: locale set
000.392  000.067: init first window
000.934  000.542: inits 1
000.947  000.013: window checked
000.949  000.002: parsing arguments
001.708  000.060  000.060: require('vim.shared')
001.863  000.050  000.050: require('vim.inspect')
001.923  000.048  000.048: require('vim._options')
001.925  000.210  000.112: require('vim._editor')
001.927  000.303  000.033: require('vim._init_packages')
001.932  000.680: init lua interpreter
003.709  001.777: nvim_ui_attach
004.091  000.382: nvim_set_client_info
004.094  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.151  000.149: event init
000.241  000.090: early init
000.309  000.067: locale set
000.375  000.066: init first window
000.875  000.500: inits 1
000.894  000.019: window checked
000.897  000.003: parsing arguments
001.521  000.057  000.057: require('vim.shared')
001.646  000.048  000.048: require('vim.inspect')
001.704  000.047  000.047: require('vim._options')
001.707  000.182  000.087: require('vim._editor')
001.708  000.266  000.026: require('vim._init_packages')
001.713  000.551: init lua interpreter
001.782  000.069: expanding arguments
001.807  000.025: inits 2
002.141  000.334: init highlight
002.142  000.001: waiting for UI
002.247  000.105: done waiting for UI
002.251  000.004: clear screen
002.412  000.019  000.019: require('vim.keymap')
003.382  000.165  000.165: sourcing nvim_exec2()
003.558  001.304  001.121: require('vim._defaults')
003.561  000.006: init default mappings & autocommands
004.957  000.038  000.038: sourcing nvim_exec2() called at /nix/store/6fvks9yd96bx9h224rrl5kzbfg23bn2f-neovim-0.11.1-nvim/nvim-setup.lua:0
004.965  000.485  000.447: require('nixCats')
005.180  001.532  001.047: sourcing /nix/store/6fvks9yd96bx9h224rrl5kzbfg23bn2f-neovim-0.11.1-nvim/nvim-setup.lua
005.187  000.093: --cmd commands
007.996  000.052  000.052: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.331  000.033  000.033: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
008.751  000.147  000.147: require('nixCatsUtils')
011.720  000.009  000.009: require('vim.F')
011.782  002.352  002.343: require('vim.diagnostic')
011.842  000.017  000.017: sourcing nvim_exec2() called at VIMINIT:0
012.157  003.360  000.991: require('luaConf.keys')
012.686  000.525  000.525: require('luaConf.options')
013.832  000.430  000.430: require('lze.c.loader')
013.837  000.589  000.159: require('lze.h.colorscheme')
014.142  000.303  000.303: require('lze.h.cmd')
014.441  000.295  000.295: require('lze.h.event')
014.578  000.134  000.134: require('lze.h.ft')
014.821  000.240  000.240: require('lze.h.keys')
014.952  000.128  000.128: require('lze.h.dep_of')
015.070  000.116  000.116: require('lze.h.on_plugin')
015.200  000.128  000.128: require('lze.h.on_require')
015.203  002.059  000.126: require('lze.h')
015.231  002.387  000.328: require('lze.c.handler')
015.235  002.545  000.159: require('lze')
015.282  000.045  000.045: require('nixCatsUtils.lzUtils')
015.427  000.134  000.134: require('lzextras')
015.715  000.283  000.283: require('lzextras.src.lsp')
017.238  001.196  001.196: require('oil')
017.443  000.199  000.199: require('oil.ringbuf')
017.812  000.366  000.366: require('oil.config')
020.001  001.998  001.998: require('vim.filetype')
021.722  000.264  000.264: require('oil.log')
021.740  000.808  000.544: require('oil.fs')
022.823  000.168  000.168: require('oil.constants')
022.836  001.093  000.925: require('oil.util')
023.030  000.170  000.170: require('lze.c.parse')
023.126  000.090  000.090: require('luaConf.plugins.mini')
023.174  000.039  000.039: require('luaConf.plugins.auto-session')
023.406  000.226  000.226: require('luaConf.plugins.cokeline')
023.544  000.131  000.131: require('luaConf.plugins.reactive')
024.732  000.281  000.281: require('nui.object')
027.077  000.523  000.523: require('vim.version')
028.799  002.715  002.193: require('nui.utils')
028.860  002.977  000.261: require('nui.text')
028.876  003.171  000.195: require('nui.line')
028.906  003.792  000.621: require('nui.popup.border')
029.067  000.159  000.159: require('nui.utils.buf_storage')
029.436  000.367  000.367: require('nui.utils.autocmd')
029.668  000.229  000.229: require('nui.utils.keymap')
029.950  000.278  000.278: require('nui.layout.utils')
029.969  005.231  000.407: require('nui.popup')
030.604  000.250  000.250: require('nui.split.utils')
030.621  000.650  000.400: require('nui.split')
030.897  000.273  000.273: require('nui.layout.float')
031.195  000.294  000.294: require('nui.layout.split')
031.216  007.423  000.693: require('nui.layout')
031.252  007.701  000.278: require('luaConf.plugins.telescope')
031.361  000.100  000.100: require('luaConf.plugins.treesitter')
031.499  000.090  000.090: require('luaConf.plugins.completion')
031.637  000.053  000.053: require('luaConf.plugins.toggleterm')
031.698  000.053  000.053: require('luaConf.plugins.codecompanion')
031.807  000.048  000.048: require('luaConf.plugins.spider')
031.881  000.068  000.068: require('luaConf.plugins.staline')
031.954  000.048  000.048: require('luaConf.plugins.colorizer')
032.087  000.052  000.052: require('luaConf.plugins.render-markdown')
032.173  000.080  000.080: require('luaConf.plugins.image')
032.231  000.053  000.053: require('luaConf.plugins.img-clip')
035.595  000.038  000.038: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
035.932  020.202  005.502: require('luaConf.plugins')
048.961  000.056  000.056: require('vim.fs')
049.008  000.662  000.607: require('vim.lsp.log')
050.809  001.796  001.796: require('vim.lsp.protocol')
053.860  003.045  003.045: require('vim.lsp.util')
054.814  000.430  000.430: require('vim.lsp.sync')
054.828  000.960  000.530: require('vim.lsp._changetracking')
055.803  000.360  000.360: require('vim.lsp._transport')
055.898  001.066  000.706: require('vim.lsp.rpc')
056.005  009.365  001.835: require('vim.lsp')
056.165  010.195  000.831: require('lspconfig.util')
056.379  000.210  000.210: require('lspconfig.async')
056.383  011.104  000.698: require('lspconfig.configs')
056.391  011.575  000.472: require('lspconfig')
057.053  000.658  000.658: require('vim.iter')
060.287  024.351  012.118: require('luaConf.LSPs')
060.798  000.502  000.502: require('luaConf.debug')
061.733  000.041  000.041: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
065.505  003.376  003.376: require('conform')
065.590  004.785  001.368: require('luaConf.format')
065.596  056.840  000.108: require('luaConf')
065.601  003.341: sourcing vimrc file(s)
066.804  000.491  000.491: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
066.811  000.611  000.120: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
067.325  000.093  000.093: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
067.451  000.574  000.480: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
069.253  000.051  000.051: sourcing /nix/store/k90s9l910imqd0i7w53m3wsh60v9k6d1-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
069.399  000.032  000.032: sourcing /nix/store/k90s9l910imqd0i7w53m3wsh60v9k6d1-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
070.278  000.611  000.611: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
071.020  000.207  000.207: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
072.380  000.212  000.212: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
072.562  001.506  001.294: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
072.740  000.146  000.146: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
072.790  000.012  000.012: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
072.937  000.009  000.009: sourcing /nix/store/6fvks9yd96bx9h224rrl5kzbfg23bn2f-neovim-0.11.1-nvim/nvim-rplugin.vim
073.186  000.363  000.354: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
073.289  000.068  000.068: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
073.375  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
073.515  000.101  000.101: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
073.582  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
073.780  000.160  000.160: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
073.908  000.082  000.082: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
074.028  000.080  000.080: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
074.177  000.108  000.108: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
074.261  000.046  000.046: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
074.292  003.889: loading rtp plugins
075.249  000.039  000.039: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
078.675  000.088  000.088: require('eyeliner.config')
079.056  000.133  000.133: require('eyeliner.utils')
079.065  000.293  000.159: require('eyeliner.shared')
079.375  000.061  000.061: require('eyeliner.string')
079.380  000.223  000.162: require('eyeliner.liner')
079.383  000.317  000.094: require('eyeliner.always-on')
079.595  000.210  000.210: require('eyeliner.on-key')
079.601  000.921  000.102: require('eyeliner.main')
079.603  004.195  003.186: require('eyeliner')
079.692  004.318  000.122: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
080.247  000.142  000.142: require('img-clip.debug')
080.551  000.300  000.300: require('img-clip.config')
080.742  000.187  000.187: require('img-clip.util')
081.285  000.203  000.203: require('img-clip.clipboard')
081.717  000.235  000.235: require('img-clip.fs')
081.721  000.433  000.198: require('img-clip.markup')
081.726  000.872  000.236: require('img-clip.paste')
081.728  000.983  000.111: require('img-clip')
081.740  001.734  000.122: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
084.022  001.920  001.920: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
085.072  000.183  000.183: require('treesitter-context.config')
085.097  000.679  000.496: require('treesitter-context')
085.176  000.777  000.098: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
085.387  000.043  000.043: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
085.999  000.393  000.393: require('reactive.commands')
086.298  000.294  000.294: require('reactive.highlight')
087.075  000.331  000.331: require('reactive.util')
087.092  000.790  000.459: require('reactive.snapshot')
087.749  000.240  000.240: require('reactive.preset')
087.758  000.615  000.375: require('reactive.state')
087.948  002.368  000.275: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
088.571  000.463  000.463: require('snacks')
088.575  000.484  000.022: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
089.695  000.882  000.882: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
089.917  000.086  000.086: sourcing /nix/store/a0d1mfvjngryi6n5j3jyyd57k67c56xn-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
090.612  003.669: loading packages
090.615  000.003: loading after plugins
090.644  000.029: inits 3
095.165  004.521: reading ShaDa
095.653  000.488: opening buffers
100.060  003.595  003.595: require('spider')
100.355  000.287  000.287: require('spider.config')
104.216  003.056  003.056: require('colorUtils')
105.449  000.270  000.270: require('staline.utils')
105.480  000.623  000.353: require('staline.config')
105.485  001.260  000.637: require('staline')
106.421  000.385  000.385: require('ts-error-translator')
108.185  000.916  000.916: require('vim.lsp.completion')
108.303  001.871  000.955: require('vim.lsp.handlers')
108.585  002.477: BufEnter autocommands
108.589  000.003: editing files in windows
111.656  000.146  000.146: require('auto-session.logger')
111.685  000.879  000.734: require('auto-session.lib')
111.926  000.239  000.239: require('auto-session.config')
112.397  000.467  000.467: require('auto-session.autocmds')
112.414  002.398  000.813: require('auto-session')
114.965  000.427  000.427: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
121.119  000.323  000.323: require('telescope._extensions')
121.127  003.844  003.522: require('telescope')
125.627  000.440  000.440: require('plenary.bit')
125.882  000.247  000.247: require('plenary.functional')
125.952  000.037  000.037: require('ffi')
125.988  001.832  001.108: require('plenary.path')
126.006  002.257  000.425: require('plenary.strings')
126.296  000.288  000.288: require('telescope.deprecated')
128.012  000.592  000.592: require('plenary.log')
128.078  000.985  000.393: require('telescope.log')
130.858  000.207  000.207: require('plenary.compat')
130.910  001.354  001.147: require('plenary.job')
131.298  000.385  000.385: require('telescope.state')
131.375  003.292  001.554: require('telescope.utils')
131.409  005.109  000.832: require('telescope.sorters')
134.285  011.275  003.620: require('telescope.config')
135.208  000.401  000.401: require('plenary.window.border')
135.396  000.184  000.184: require('plenary.window')
135.589  000.190  000.190: require('plenary.popup.utils')
135.595  001.303  000.528: require('plenary.popup')
135.948  000.351  000.351: require('telescope.pickers.scroller')
136.249  000.297  000.297: require('telescope.actions.state')
136.591  000.340  000.340: require('telescope.actions.utils')
137.462  000.398  000.398: require('telescope.actions.mt')
137.485  000.890  000.492: require('telescope.actions.set')
138.242  000.401  000.401: require('telescope.config.resolve')
138.247  000.760  000.359: require('telescope.pickers.entry_display')
138.525  000.275  000.275: require('telescope.from_entry')
138.800  017.662  002.172: require('telescope.actions')
140.866  000.457  000.457: require('fzf_lib')
140.874  000.943  000.486: require('telescope._extensions.fzf')
141.584  000.364  000.364: require('telescope-undo.actions')
141.594  000.711  000.347: require('telescope._extensions.undo')
141.975  000.093  000.093: require('auto-session.session-lens.actions')
141.979  000.228  000.136: require('auto-session.session-lens')
141.982  000.279  000.051: require('telescope._extensions.session-lens')
147.240  004.559  004.559: require('mini.starter')
157.682  000.016  000.016: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
159.350  000.348  000.348: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
159.379  000.014  000.014: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
159.442  000.051  000.051: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
162.894  004.398  003.985: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
166.347  000.368  000.368: require('vim.provider')
166.754  000.399  000.399: require('vim.provider.python')
167.692  000.169  000.169: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
167.779  001.841  000.905: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
171.354  025.686: VimEnter autocommands
171.833  000.427  000.427: require('vim.termcap')
171.878  000.021  000.021: require('vim.text')
171.902  000.099: UIEnter autocommands
171.906  000.005: before starting main loop
173.070  001.164: first screen update
173.073  000.003: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.219  000.217: event init
000.362  000.142: early init
000.474  000.112: locale set
000.550  000.077: init first window
001.123  000.573: inits 1
001.137  000.014: window checked
001.139  000.003: parsing arguments
001.776  000.060  000.060: require('vim.shared')
001.897  000.049  000.049: require('vim.inspect')
001.956  000.048  000.048: require('vim._options')
001.958  000.178  000.082: require('vim._editor')
001.960  000.268  000.029: require('vim._init_packages')
001.965  000.558: init lua interpreter
003.682  001.717: nvim_ui_attach
004.062  000.380: nvim_set_client_info
004.065  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.136  000.133: event init
000.223  000.087: early init
000.283  000.060: locale set
000.347  000.064: init first window
000.840  000.494: inits 1
000.860  000.020: window checked
000.862  000.002: parsing arguments
001.473  000.055  000.055: require('vim.shared')
001.599  000.051  000.051: require('vim.inspect')
001.658  000.048  000.048: require('vim._options')
001.660  000.183  000.084: require('vim._editor')
001.662  000.262  000.023: require('vim._init_packages')
001.667  000.543: init lua interpreter
001.744  000.078: expanding arguments
001.770  000.026: inits 2
002.108  000.337: init highlight
002.109  000.001: waiting for UI
002.214  000.105: done waiting for UI
002.217  000.004: clear screen
002.387  000.026  000.026: require('vim.keymap')
003.422  000.180  000.180: sourcing nvim_exec2()
003.604  001.384  001.178: require('vim._defaults')
003.607  000.006: init default mappings & autocommands
004.926  000.026  000.026: sourcing nvim_exec2() called at /nix/store/3c2qzscyp8d5v58xfym7akf3aqjdr72g-neovim-0.11.1-nvim/nvim-setup.lua:0
004.933  000.405  000.379: require('nixCats')
005.145  001.388  000.983: sourcing /nix/store/3c2qzscyp8d5v58xfym7akf3aqjdr72g-neovim-0.11.1-nvim/nvim-setup.lua
005.151  000.155: --cmd commands
007.904  000.047  000.047: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.223  000.032  000.032: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
008.629  000.146  000.146: require('nixCatsUtils')
011.543  000.011  000.011: require('vim.F')
011.604  002.307  002.297: require('vim.diagnostic')
011.664  000.014  000.014: sourcing nvim_exec2() called at VIMINIT:0
012.088  003.410  001.088: require('luaConf.keys')
012.601  000.508  000.508: require('luaConf.options')
013.834  000.495  000.495: require('lze.c.loader')
013.840  000.662  000.166: require('lze.h.colorscheme')
014.145  000.303  000.303: require('lze.h.cmd')
014.435  000.287  000.287: require('lze.h.event')
014.573  000.134  000.134: require('lze.h.ft')
014.816  000.239  000.239: require('lze.h.keys')
014.946  000.127  000.127: require('lze.h.dep_of')
015.067  000.118  000.118: require('lze.h.on_plugin')
015.202  000.131  000.131: require('lze.h.on_require')
015.205  002.156  000.155: require('lze.h')
015.229  002.478  000.322: require('lze.c.handler')
015.233  002.629  000.151: require('lze')
015.279  000.044  000.044: require('nixCatsUtils.lzUtils')
015.414  000.121  000.121: require('lzextras')
015.658  000.240  000.240: require('lzextras.src.lsp')
017.166  001.172  001.172: require('oil')
017.375  000.205  000.205: require('oil.ringbuf')
017.763  000.384  000.384: require('oil.config')
020.055  002.103  002.103: require('vim.filetype')
021.702  000.262  000.262: require('oil.log')
021.726  000.807  000.544: require('oil.fs')
022.817  000.170  000.170: require('oil.constants')
022.837  001.108  000.938: require('oil.util')
023.047  000.182  000.182: require('lze.c.parse')
023.151  000.097  000.097: require('luaConf.plugins.mini')
023.210  000.050  000.050: require('luaConf.plugins.auto-session')
023.433  000.216  000.216: require('luaConf.plugins.cokeline')
023.563  000.123  000.123: require('luaConf.plugins.reactive')
024.849  000.264  000.264: require('nui.object')
027.177  000.516  000.516: require('vim.version')
028.952  002.696  002.180: require('nui.utils')
028.966  002.910  000.214: require('nui.text')
028.981  003.108  000.198: require('nui.line')
029.011  003.743  000.635: require('nui.popup.border')
029.179  000.165  000.165: require('nui.utils.buf_storage')
029.556  000.374  000.374: require('nui.utils.autocmd')
029.809  000.249  000.249: require('nui.utils.keymap')
030.082  000.269  000.269: require('nui.layout.utils')
030.146  005.290  000.489: require('nui.popup')
030.762  000.250  000.250: require('nui.split.utils')
030.780  000.631  000.381: require('nui.split')
031.065  000.283  000.283: require('nui.layout.float')
031.373  000.304  000.304: require('nui.layout.split')
031.391  007.525  000.753: require('nui.layout')
031.429  007.853  000.328: require('luaConf.plugins.telescope')
031.549  000.111  000.111: require('luaConf.plugins.treesitter')
031.685  000.094  000.094: require('luaConf.plugins.completion')
031.843  000.054  000.054: require('luaConf.plugins.toggleterm')
031.907  000.056  000.056: require('luaConf.plugins.codecompanion')
032.021  000.053  000.053: require('luaConf.plugins.spider')
032.094  000.066  000.066: require('luaConf.plugins.staline')
032.144  000.045  000.045: require('luaConf.plugins.colorizer')
032.280  000.052  000.052: require('luaConf.plugins.render-markdown')
032.355  000.069  000.069: require('luaConf.plugins.image')
032.412  000.051  000.051: require('luaConf.plugins.img-clip')
036.148  000.041  000.041: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
036.501  020.833  005.842: require('luaConf.plugins')
050.130  000.066  000.066: require('vim.fs')
050.183  000.659  000.593: require('vim.lsp.log')
052.227  002.040  002.040: require('vim.lsp.protocol')
055.158  002.924  002.924: require('vim.lsp.util')
056.123  000.460  000.460: require('vim.lsp.sync')
056.144  000.978  000.518: require('vim.lsp._changetracking')
057.132  000.368  000.368: require('vim.lsp._transport')
057.220  001.072  000.704: require('vim.lsp.rpc')
057.354  009.807  002.134: require('vim.lsp')
057.526  010.646  000.839: require('lspconfig.util')
057.813  000.283  000.283: require('lspconfig.async')
057.825  011.375  000.446: require('lspconfig.configs')
057.839  011.991  000.616: require('lspconfig')
058.542  000.699  000.699: require('vim.iter')
061.810  025.305  012.616: require('luaConf.LSPs')
062.269  000.451  000.451: require('luaConf.debug')
063.146  000.041  000.041: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
066.973  003.484  003.484: require('conform')
067.095  004.820  001.295: require('luaConf.format')
067.098  058.465  000.105: require('luaConf')
067.104  003.263: sourcing vimrc file(s)
068.244  000.447  000.447: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
068.250  000.579  000.132: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
068.749  000.093  000.093: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
068.867  000.555  000.462: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
070.662  000.043  000.043: sourcing /nix/store/cyvvxg4fggnd0jg0cyhiai0j4qg0k4wf-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
070.822  000.035  000.035: sourcing /nix/store/cyvvxg4fggnd0jg0cyhiai0j4qg0k4wf-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
071.685  000.575  000.575: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
072.445  000.204  000.204: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
073.831  000.250  000.250: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
074.016  001.535  001.285: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
074.194  000.144  000.144: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
074.246  000.013  000.013: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
074.381  000.009  000.009: sourcing /nix/store/3c2qzscyp8d5v58xfym7akf3aqjdr72g-neovim-0.11.1-nvim/nvim-rplugin.vim
074.622  000.344  000.335: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
074.728  000.068  000.068: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
074.823  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
074.963  000.100  000.100: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
075.030  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
075.215  000.149  000.149: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
075.320  000.059  000.059: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
075.446  000.085  000.085: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
075.575  000.087  000.087: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
075.661  000.047  000.047: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
075.693  003.924: loading rtp plugins
076.654  000.038  000.038: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
080.106  000.089  000.089: require('eyeliner.config')
080.482  000.131  000.131: require('eyeliner.utils')
080.489  000.286  000.155: require('eyeliner.shared')
080.801  000.062  000.062: require('eyeliner.string')
080.806  000.225  000.162: require('eyeliner.liner')
080.809  000.318  000.093: require('eyeliner.always-on')
080.968  000.157  000.157: require('eyeliner.on-key')
080.972  000.859  000.099: require('eyeliner.main')
080.974  004.160  003.211: require('eyeliner')
081.072  004.290  000.131: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
081.603  000.132  000.132: require('img-clip.debug')
081.924  000.316  000.316: require('img-clip.config')
082.118  000.190  000.190: require('img-clip.util')
082.659  000.205  000.205: require('img-clip.clipboard')
083.080  000.232  000.232: require('img-clip.fs')
083.085  000.423  000.191: require('img-clip.markup')
083.090  000.857  000.229: require('img-clip.paste')
083.092  000.971  000.114: require('img-clip')
083.104  001.718  000.109: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
085.580  002.116  002.116: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
086.771  000.203  000.203: require('treesitter-context.config')
086.796  000.753  000.550: require('treesitter-context')
086.883  000.861  000.108: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
087.104  000.048  000.048: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
087.747  000.413  000.413: require('reactive.commands')
088.067  000.315  000.315: require('reactive.highlight')
088.828  000.305  000.305: require('reactive.util')
088.842  000.770  000.466: require('reactive.snapshot')
089.475  000.245  000.245: require('reactive.preset')
089.482  000.613  000.368: require('reactive.state')
089.665  002.366  000.254: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
090.280  000.449  000.449: require('snacks')
090.284  000.471  000.022: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
091.410  000.887  000.887: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
091.633  000.088  000.088: sourcing /nix/store/vla1agm7q8555byqf3vzq1p8irj1gf4w-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
092.297  003.720: loading packages
092.300  000.003: loading after plugins
092.330  000.029: inits 3
096.833  004.504: reading ShaDa
097.344  000.511: opening buffers
101.339  003.323  003.323: require('colorUtils')
102.617  000.275  000.275: require('staline.utils')
102.650  000.631  000.356: require('staline.config')
102.657  001.305  000.674: require('staline')
106.814  003.497  003.497: require('spider')
107.073  000.252  000.252: require('spider.config')
108.149  000.389  000.389: require('ts-error-translator')
109.951  000.944  000.944: require('vim.lsp.completion')
110.072  001.912  000.968: require('vim.lsp.handlers')
110.352  002.329: BufEnter autocommands
110.356  000.004: editing files in windows
116.015  004.918  004.918: require('mini.starter')
125.103  000.016  000.016: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
128.438  000.118  000.118: require('auto-session.logger')
128.468  000.974  000.855: require('auto-session.lib')
128.716  000.244  000.244: require('auto-session.config')
129.177  000.457  000.457: require('auto-session.autocmds')
129.198  002.623  000.948: require('auto-session')
131.638  000.466  000.466: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
137.863  000.344  000.344: require('telescope._extensions')
137.872  003.925  003.581: require('telescope')
142.434  000.452  000.452: require('plenary.bit')
142.695  000.253  000.253: require('plenary.functional')
142.748  000.035  000.035: require('ffi')
142.839  002.140  001.400: require('plenary.path')
142.865  002.547  000.407: require('plenary.strings')
143.163  000.296  000.296: require('telescope.deprecated')
145.191  000.628  000.628: require('plenary.log')
145.266  000.957  000.329: require('telescope.log')
147.891  000.234  000.234: require('plenary.compat')
147.903  000.940  000.706: require('plenary.job')
148.188  000.282  000.282: require('telescope.state')
148.210  002.941  001.719: require('telescope.utils')
148.218  005.052  001.154: require('telescope.sorters')
150.421  010.819  002.924: require('telescope.config')
151.363  000.433  000.433: require('plenary.window.border')
151.595  000.228  000.228: require('plenary.window')
151.853  000.253  000.253: require('plenary.popup.utils')
151.859  001.432  000.518: require('plenary.popup')
152.253  000.391  000.391: require('telescope.pickers.scroller')
152.551  000.293  000.293: require('telescope.actions.state')
152.890  000.336  000.336: require('telescope.actions.utils')
153.775  000.415  000.415: require('telescope.actions.mt')
153.798  000.904  000.489: require('telescope.actions.set')
154.546  000.385  000.385: require('telescope.config.resolve')
154.551  000.750  000.365: require('telescope.pickers.entry_display')
154.829  000.276  000.276: require('telescope.from_entry')
155.228  017.348  002.147: require('telescope.actions')
157.606  000.466  000.466: require('fzf_lib')
157.614  000.941  000.475: require('telescope._extensions.fzf')
158.324  000.315  000.315: require('telescope-undo.actions')
158.331  000.671  000.356: require('telescope._extensions.undo')
158.671  000.098  000.098: require('auto-session.session-lens.actions')
158.676  000.220  000.121: require('auto-session.session-lens')
158.679  000.270  000.051: require('telescope._extensions.session-lens')
159.636  000.374  000.374: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
159.666  000.015  000.015: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
159.789  000.110  000.110: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
163.170  004.424  003.925: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
167.329  000.326  000.326: require('vim.provider')
167.763  000.426  000.426: require('vim.provider.python')
168.787  000.198  000.198: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
168.881  001.920  000.970: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
181.818  033.942: VimEnter autocommands
182.376  000.472  000.472: require('vim.termcap')
182.485  000.024  000.024: require('vim.text')
182.511  000.197: UIEnter autocommands
182.516  000.005: before starting main loop
184.113  001.598: first screen update
184.118  000.005: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.006  000.006: --- NVIM STARTING ---
000.163  000.157: event init
000.255  000.092: early init
000.318  000.063: locale set
000.387  000.069: init first window
001.064  000.678: inits 1
001.078  000.014: window checked
001.081  000.003: parsing arguments
001.730  000.065  000.065: require('vim.shared')
001.850  000.048  000.048: require('vim.inspect')
001.908  000.047  000.047: require('vim._options')
001.911  000.177  000.081: require('vim._editor')
001.912  000.271  000.029: require('vim._init_packages')
001.918  000.567: init lua interpreter
003.662  001.744: nvim_ui_attach
004.305  000.643: nvim_set_client_info
004.311  000.006: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.169  000.166: event init
000.265  000.096: early init
000.346  000.081: locale set
000.414  000.069: init first window
000.928  000.514: inits 1
000.949  000.021: window checked
000.952  000.003: parsing arguments
001.594  000.056  000.056: require('vim.shared')
001.722  000.050  000.050: require('vim.inspect')
001.781  000.048  000.048: require('vim._options')
001.783  000.185  000.086: require('vim._editor')
001.785  000.269  000.029: require('vim._init_packages')
001.790  000.569: init lua interpreter
001.884  000.094: expanding arguments
001.911  000.027: inits 2
002.231  000.320: init highlight
002.232  000.001: waiting for UI
002.369  000.136: done waiting for UI
002.372  000.004: clear screen
002.539  000.022  000.022: require('vim.keymap')
003.603  000.168  000.168: sourcing nvim_exec2()
003.826  001.450  001.260: require('vim._defaults')
003.828  000.006: init default mappings & autocommands
005.288  000.032  000.032: sourcing nvim_exec2() called at /nix/store/jfnj7lajnhfn8bh01g7adaq3apqhml0r-neovim-0.11.1-nvim/nvim-setup.lua:0
005.297  000.562  000.529: require('nixCats')
005.548  001.622  001.060: sourcing /nix/store/jfnj7lajnhfn8bh01g7adaq3apqhml0r-neovim-0.11.1-nvim/nvim-setup.lua
005.555  000.105: --cmd commands
008.411  000.066  000.066: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.733  000.033  000.033: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.145  000.142  000.142: require('nixCatsUtils')
011.867  000.008  000.008: require('vim.F')
011.923  002.204  002.196: require('vim.diagnostic')
011.991  000.015  000.015: sourcing nvim_exec2() called at VIMINIT:0
012.386  003.190  000.971: require('luaConf.keys')
013.000  000.610  000.610: require('luaConf.options')
014.345  000.375  000.375: require('lze.c.loader')
014.351  000.651  000.276: require('lze.h.colorscheme')
014.540  000.187  000.187: require('lze.h.cmd')
014.807  000.265  000.265: require('lze.h.event')
014.951  000.140  000.140: require('lze.h.ft')
015.200  000.247  000.247: require('lze.h.keys')
015.326  000.124  000.124: require('lze.h.dep_of')
015.449  000.120  000.120: require('lze.h.on_plugin')
015.582  000.131  000.131: require('lze.h.on_require')
015.585  002.002  000.138: require('lze.h')
015.628  002.477  000.475: require('lze.c.handler')
015.632  002.628  000.151: require('lze')
015.678  000.044  000.044: require('nixCatsUtils.lzUtils')
015.828  000.137  000.137: require('lzextras')
016.073  000.242  000.242: require('lzextras.src.lsp')
017.606  001.219  001.219: require('oil')
017.822  000.211  000.211: require('oil.ringbuf')
018.228  000.403  000.403: require('oil.config')
020.942  002.496  002.496: require('vim.filetype')
022.289  000.265  000.265: require('oil.log')
022.307  000.765  000.500: require('oil.fs')
023.412  000.168  000.168: require('oil.constants')
023.423  001.113  000.946: require('oil.util')
023.623  000.174  000.174: require('lze.c.parse')
023.743  000.113  000.113: require('luaConf.plugins.mini')
023.805  000.052  000.052: require('luaConf.plugins.auto-session')
024.055  000.243  000.243: require('luaConf.plugins.cokeline')
024.207  000.143  000.143: require('luaConf.plugins.reactive')
025.284  000.281  000.281: require('nui.object')
027.622  000.525  000.525: require('vim.version')
029.328  002.640  002.116: require('nui.utils')
029.344  002.855  000.215: require('nui.text')
029.354  003.045  000.190: require('nui.line')
029.425  003.774  000.729: require('nui.popup.border')
029.588  000.160  000.160: require('nui.utils.buf_storage')
030.453  000.862  000.862: require('nui.utils.autocmd')
030.689  000.232  000.232: require('nui.utils.keymap')
030.956  000.264  000.264: require('nui.layout.utils')
030.974  005.685  000.393: require('nui.popup')
031.577  000.242  000.242: require('nui.split.utils')
031.594  000.618  000.376: require('nui.split')
031.893  000.296  000.296: require('nui.layout.float')
032.200  000.304  000.304: require('nui.layout.split')
032.218  007.742  000.558: require('nui.layout')
032.264  008.050  000.308: require('luaConf.plugins.telescope')
032.376  000.103  000.103: require('luaConf.plugins.treesitter')
032.510  000.094  000.094: require('luaConf.plugins.completion')
032.645  000.052  000.052: require('luaConf.plugins.toggleterm')
032.709  000.057  000.057: require('luaConf.plugins.codecompanion')
032.820  000.052  000.052: require('luaConf.plugins.spider')
032.892  000.065  000.065: require('luaConf.plugins.staline')
032.942  000.045  000.045: require('luaConf.plugins.colorizer')
033.084  000.060  000.060: require('luaConf.plugins.render-markdown')
033.151  000.061  000.061: require('luaConf.plugins.image')
033.206  000.050  000.050: require('luaConf.plugins.img-clip')
036.838  000.039  000.039: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
037.191  021.107  005.449: require('luaConf.plugins')
052.492  000.087  000.087: require('vim.fs')
052.599  000.833  000.746: require('vim.lsp.log')
055.489  002.884  002.884: require('vim.lsp.protocol')
057.292  001.797  001.797: require('vim.lsp.util')
058.214  000.443  000.443: require('vim.lsp.sync')
058.223  000.925  000.482: require('vim.lsp._changetracking')
059.196  000.363  000.363: require('vim.lsp._transport')
059.252  001.025  000.662: require('vim.lsp.rpc')
059.330  009.219  001.755: require('vim.lsp')
059.486  010.080  000.861: require('lspconfig.util')
059.701  000.209  000.209: require('lspconfig.async')
059.705  010.962  000.673: require('lspconfig.configs')
059.714  011.483  000.521: require('lspconfig')
060.394  000.676  000.676: require('vim.iter')
063.467  026.271  014.112: require('luaConf.LSPs')
064.178  000.703  000.703: require('luaConf.debug')
065.080  000.041  000.041: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
068.974  003.507  003.507: require('conform')
069.075  004.891  001.342: require('luaConf.format')
069.079  059.930  000.106: require('luaConf')
069.087  003.361: sourcing vimrc file(s)
070.204  000.461  000.461: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
070.210  000.566  000.105: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
070.701  000.095  000.095: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
070.813  000.542  000.446: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
072.488  000.031  000.031: sourcing /nix/store/x85cgjyi1zadldlsixbkb7slk0rainsr-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
072.634  000.032  000.032: sourcing /nix/store/x85cgjyi1zadldlsixbkb7slk0rainsr-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
073.451  000.545  000.545: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
074.209  000.208  000.208: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
075.543  000.200  000.200: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
075.723  001.478  001.278: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
075.955  000.198  000.198: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
076.010  000.015  000.015: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
076.147  000.009  000.009: sourcing /nix/store/jfnj7lajnhfn8bh01g7adaq3apqhml0r-neovim-0.11.1-nvim/nvim-rplugin.vim
076.407  000.363  000.354: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
076.515  000.071  000.071: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
076.604  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
076.743  000.100  000.100: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
076.810  000.021  000.021: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
076.996  000.149  000.149: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
077.106  000.060  000.060: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
077.232  000.086  000.086: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
077.357  000.086  000.086: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
077.443  000.049  000.049: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
077.475  003.764: loading rtp plugins
078.437  000.038  000.038: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
081.893  000.105  000.105: require('eyeliner.config')
082.260  000.126  000.126: require('eyeliner.utils')
082.267  000.277  000.151: require('eyeliner.shared')
082.576  000.062  000.062: require('eyeliner.string')
082.581  000.221  000.159: require('eyeliner.liner')
082.584  000.315  000.094: require('eyeliner.always-on')
082.744  000.158  000.158: require('eyeliner.on-key')
082.748  000.849  000.098: require('eyeliner.main')
082.752  004.154  003.200: require('eyeliner')
082.868  004.302  000.148: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
083.407  000.128  000.128: require('img-clip.debug')
083.713  000.301  000.301: require('img-clip.config')
083.936  000.220  000.220: require('img-clip.util')
084.503  000.221  000.221: require('img-clip.clipboard')
084.937  000.238  000.238: require('img-clip.fs')
084.944  000.438  000.200: require('img-clip.markup')
084.948  000.897  000.238: require('img-clip.paste')
084.951  001.011  000.114: require('img-clip')
084.962  001.779  000.119: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
087.338  002.026  002.026: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
088.393  000.192  000.192: require('treesitter-context.config')
088.415  000.694  000.503: require('treesitter-context')
088.489  000.787  000.093: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
088.700  000.041  000.041: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
089.313  000.396  000.396: require('reactive.commands')
089.597  000.279  000.279: require('reactive.highlight')
090.358  000.308  000.308: require('reactive.util')
090.372  000.772  000.463: require('reactive.snapshot')
091.003  000.239  000.239: require('reactive.preset')
091.012  000.605  000.366: require('reactive.state')
091.230  002.339  000.287: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
091.904  000.510  000.510: require('snacks')
091.908  000.538  000.027: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
093.039  000.888  000.888: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
093.258  000.086  000.086: sourcing /nix/store/vzhx9216vy4hn394gmd7wln46n13rs2z-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
093.895  003.596: loading packages
093.899  000.003: loading after plugins
093.928  000.029: inits 3
098.500  004.572: reading ShaDa
098.890  000.390: opening buffers
103.089  003.502  003.502: require('spider')
103.350  000.254  000.254: require('spider.config')
107.129  003.061  003.061: require('colorUtils')
108.557  000.318  000.318: require('staline.utils')
108.615  000.800  000.482: require('staline.config')
108.645  001.506  000.706: require('staline')
109.673  000.417  000.417: require('ts-error-translator')
111.650  000.965  000.965: require('vim.lsp.completion')
111.755  002.070  001.104: require('vim.lsp.handlers')
112.028  002.329: BufEnter autocommands
112.032  000.004: editing files in windows
114.606  000.113  000.113: require('auto-session.logger')
114.630  000.815  000.702: require('auto-session.lib')
114.869  000.236  000.236: require('auto-session.config')
115.330  000.457  000.457: require('auto-session.autocmds')
115.344  002.305  000.798: require('auto-session')
117.648  000.424  000.424: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
123.946  000.340  000.340: require('telescope._extensions')
123.954  004.004  003.665: require('telescope')
128.624  000.562  000.562: require('plenary.bit')
128.941  000.312  000.312: require('plenary.functional')
129.038  000.061  000.061: require('ffi')
129.109  002.337  001.402: require('plenary.path')
129.133  002.718  000.382: require('plenary.strings')
129.426  000.291  000.291: require('telescope.deprecated')
131.674  000.611  000.611: require('plenary.log')
131.715  000.907  000.295: require('telescope.log')
133.354  000.191  000.191: require('plenary.compat')
133.370  000.784  000.593: require('plenary.job')
133.646  000.273  000.273: require('telescope.state')
133.674  001.956  000.899: require('telescope.utils')
133.681  004.252  001.389: require('telescope.sorters')
135.939  010.220  002.959: require('telescope.config')
136.951  000.465  000.465: require('plenary.window.border')
137.145  000.188  000.188: require('plenary.window')
137.340  000.191  000.191: require('plenary.popup.utils')
137.345  001.400  000.556: require('plenary.popup')
137.724  000.376  000.376: require('telescope.pickers.scroller')
138.064  000.336  000.336: require('telescope.actions.state')
138.434  000.366  000.366: require('telescope.actions.utils')
139.321  000.396  000.396: require('telescope.actions.mt')
139.354  000.917  000.520: require('telescope.actions.set')
140.116  000.402  000.402: require('telescope.config.resolve')
140.120  000.763  000.361: require('telescope.pickers.entry_display')
140.393  000.270  000.270: require('telescope.from_entry')
140.632  016.668  002.019: require('telescope.actions')
144.035  001.592  001.592: require('fzf_lib')
144.053  002.050  000.458: require('telescope._extensions.fzf')
144.752  000.318  000.318: require('telescope-undo.actions')
144.761  000.666  000.348: require('telescope._extensions.undo')
145.138  000.093  000.093: require('auto-session.session-lens.actions')
145.142  000.222  000.129: require('auto-session.session-lens')
145.145  000.273  000.051: require('telescope._extensions.session-lens')
150.418  004.629  004.629: require('mini.starter')
159.965  000.016  000.016: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
162.172  000.353  000.353: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
162.203  000.014  000.014: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
162.265  000.050  000.050: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
166.246  004.930  004.512: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
169.671  000.341  000.341: require('vim.provider')
170.093  000.416  000.416: require('vim.provider.python')
171.050  000.167  000.167: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
171.141  001.853  000.929: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
174.670  024.818: VimEnter autocommands
175.168  000.441  000.441: require('vim.termcap')
175.216  000.022  000.022: require('vim.text')
175.240  000.106: UIEnter autocommands
175.245  000.005: before starting main loop
176.340  001.095: first screen update
176.343  000.003: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.004  000.004: --- NVIM STARTING ---
000.179  000.175: event init
000.273  000.094: early init
000.339  000.066: locale set
000.421  000.082: init first window
001.021  000.600: inits 1
001.035  000.013: window checked
001.037  000.003: parsing arguments
001.718  000.059  000.059: require('vim.shared')
001.842  000.052  000.052: require('vim.inspect')
001.901  000.049  000.049: require('vim._options')
001.904  000.182  000.081: require('vim._editor')
001.906  000.267  000.026: require('vim._init_packages')
001.911  000.607: init lua interpreter
003.561  001.650: nvim_ui_attach
003.939  000.378: nvim_set_client_info
003.942  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.142  000.139: event init
000.227  000.085: early init
000.285  000.059: locale set
000.351  000.066: init first window
000.818  000.467: inits 1
000.837  000.018: window checked
000.839  000.002: parsing arguments
001.465  000.054  000.054: require('vim.shared')
001.587  000.047  000.047: require('vim.inspect')
001.645  000.047  000.047: require('vim._options')
001.648  000.178  000.084: require('vim._editor')
001.649  000.258  000.025: require('vim._init_packages')
001.654  000.557: init lua interpreter
001.725  000.071: expanding arguments
001.751  000.026: inits 2
002.076  000.324: init highlight
002.077  000.001: waiting for UI
002.164  000.087: done waiting for UI
002.167  000.003: clear screen
002.328  000.021  000.021: require('vim.keymap')
003.674  000.261  000.261: sourcing nvim_exec2()
003.909  001.739  001.458: require('vim._defaults')
003.913  000.007: init default mappings & autocommands
005.355  000.043  000.043: sourcing nvim_exec2() called at /nix/store/4asxszg3gb88wpk3fqbsi53fimqkkvg8-neovim-0.11.1-nvim/nvim-setup.lua:0
005.364  000.479  000.436: require('nixCats')
005.608  001.580  001.101: sourcing /nix/store/4asxszg3gb88wpk3fqbsi53fimqkkvg8-neovim-0.11.1-nvim/nvim-setup.lua
005.615  000.122: --cmd commands
008.437  000.052  000.052: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.771  000.040  000.040: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.329  000.223  000.223: require('nixCatsUtils')
012.530  000.009  000.009: require('vim.F')
012.631  002.400  002.391: require('vim.diagnostic')
012.696  000.017  000.017: sourcing nvim_exec2() called at VIMINIT:0
013.123  003.735  001.317: require('luaConf.keys')
013.759  000.632  000.632: require('luaConf.options')
014.879  000.352  000.352: require('lze.c.loader')
014.884  000.510  000.158: require('lze.h.colorscheme')
015.161  000.275  000.275: require('lze.h.cmd')
015.587  000.422  000.422: require('lze.h.event')
015.739  000.148  000.148: require('lze.h.ft')
015.989  000.247  000.247: require('lze.h.keys')
016.115  000.122  000.122: require('lze.h.dep_of')
016.237  000.120  000.120: require('lze.h.on_plugin')
016.370  000.130  000.130: require('lze.h.on_require')
016.372  002.105  000.129: require('lze.h')
016.407  002.437  000.332: require('lze.c.handler')
016.411  002.648  000.212: require('lze')
016.458  000.045  000.045: require('nixCatsUtils.lzUtils')
016.627  000.133  000.133: require('lzextras')
016.908  000.278  000.278: require('lzextras.src.lsp')
018.811  001.454  001.454: require('oil')
019.048  000.230  000.230: require('oil.ringbuf')
019.520  000.468  000.468: require('oil.config')
022.215  002.363  002.363: require('vim.filetype')
024.112  000.312  000.312: require('oil.log')
024.136  000.996  000.684: require('oil.fs')
025.261  000.188  000.188: require('oil.constants')
025.281  001.141  000.953: require('oil.util')
025.491  000.176  000.176: require('lze.c.parse')
025.598  000.101  000.101: require('luaConf.plugins.mini')
025.648  000.041  000.041: require('luaConf.plugins.auto-session')
025.872  000.216  000.216: require('luaConf.plugins.cokeline')
026.003  000.124  000.124: require('luaConf.plugins.reactive')
026.961  000.241  000.241: require('nui.object')
029.229  000.530  000.530: require('vim.version')
030.947  002.645  002.114: require('nui.utils')
030.976  002.871  000.226: require('nui.text')
030.984  003.057  000.186: require('nui.line')
031.016  003.675  000.618: require('nui.popup.border')
031.210  000.191  000.191: require('nui.utils.buf_storage')
031.572  000.358  000.358: require('nui.utils.autocmd')
031.804  000.229  000.229: require('nui.utils.keymap')
032.067  000.260  000.260: require('nui.layout.utils')
032.099  005.134  000.420: require('nui.popup')
032.708  000.241  000.241: require('nui.split.utils')
032.770  000.669  000.427: require('nui.split')
033.055  000.281  000.281: require('nui.layout.float')
033.379  000.322  000.322: require('nui.layout.split')
033.402  007.163  000.516: require('nui.layout')
033.439  007.430  000.267: require('luaConf.plugins.telescope')
033.549  000.100  000.100: require('luaConf.plugins.treesitter')
033.678  000.092  000.092: require('luaConf.plugins.completion')
033.811  000.052  000.052: require('luaConf.plugins.toggleterm')
033.873  000.055  000.055: require('luaConf.plugins.codecompanion')
033.981  000.052  000.052: require('luaConf.plugins.spider')
034.068  000.068  000.068: require('luaConf.plugins.staline')
034.119  000.046  000.046: require('luaConf.plugins.colorizer')
034.256  000.059  000.059: require('luaConf.plugins.render-markdown')
034.324  000.063  000.063: require('luaConf.plugins.image')
034.402  000.074  000.074: require('luaConf.plugins.img-clip')
037.867  000.075  000.075: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
038.372  021.453  005.977: require('luaConf.plugins')
052.084  000.063  000.063: require('vim.fs')
052.151  000.630  000.567: require('vim.lsp.log')
054.059  001.904  001.904: require('vim.lsp.protocol')
056.386  002.319  002.319: require('vim.lsp.util')
057.553  000.535  000.535: require('vim.lsp.sync')
057.561  001.170  000.635: require('vim.lsp._changetracking')
059.386  000.575  000.575: require('vim.lsp._transport')
059.475  001.910  001.335: require('vim.lsp.rpc')
059.574  009.810  001.877: require('vim.lsp')
059.681  010.737  000.927: require('lspconfig.util')
059.948  000.263  000.263: require('lspconfig.async')
059.953  011.559  000.559: require('lspconfig.configs')
059.963  012.063  000.504: require('lspconfig')
060.687  000.720  000.720: require('vim.iter')
063.720  025.343  012.560: require('luaConf.LSPs')
064.290  000.561  000.561: require('luaConf.debug')
065.274  000.038  000.038: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
069.125  003.475  003.475: require('conform')
069.224  004.927  001.414: require('luaConf.format')
069.227  059.893  000.138: require('luaConf')
069.233  003.411: sourcing vimrc file(s)
070.339  000.448  000.448: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
070.344  000.554  000.106: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
070.857  000.100  000.100: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
070.992  000.587  000.487: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
072.724  000.035  000.035: sourcing /nix/store/3c4c1mlpk359kcaa193lqzxsr2hhc59v-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
072.872  000.034  000.034: sourcing /nix/store/3c4c1mlpk359kcaa193lqzxsr2hhc59v-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
073.699  000.548  000.548: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
074.433  000.204  000.204: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
075.772  000.201  000.201: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
075.955  001.486  001.286: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
076.134  000.146  000.146: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
076.183  000.013  000.013: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
076.319  000.009  000.009: sourcing /nix/store/4asxszg3gb88wpk3fqbsi53fimqkkvg8-neovim-0.11.1-nvim/nvim-rplugin.vim
076.555  000.338  000.329: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
076.658  000.067  000.067: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
076.749  000.025  000.025: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
076.892  000.101  000.101: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
076.958  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
077.232  000.237  000.237: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
077.343  000.060  000.060: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
077.488  000.099  000.099: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
077.620  000.089  000.089: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
077.716  000.047  000.047: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
077.749  003.826: loading rtp plugins
078.649  000.037  000.037: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
082.432  000.087  000.087: require('eyeliner.config')
082.810  000.133  000.133: require('eyeliner.utils')
082.817  000.283  000.149: require('eyeliner.shared')
083.165  000.098  000.098: require('eyeliner.string')
083.171  000.264  000.167: require('eyeliner.liner')
083.174  000.355  000.091: require('eyeliner.always-on')
083.336  000.161  000.161: require('eyeliner.on-key')
083.341  000.903  000.105: require('eyeliner.main')
083.343  004.536  003.546: require('eyeliner')
083.453  004.678  000.142: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
083.981  000.129  000.129: require('img-clip.debug')
084.283  000.297  000.297: require('img-clip.config')
084.494  000.208  000.208: require('img-clip.util')
085.038  000.202  000.202: require('img-clip.clipboard')
085.489  000.230  000.230: require('img-clip.fs')
085.494  000.453  000.223: require('img-clip.markup')
085.499  000.888  000.232: require('img-clip.paste')
085.502  001.004  000.116: require('img-clip')
085.514  001.747  000.109: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
087.887  002.015  002.015: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
088.968  000.192  000.192: require('treesitter-context.config')
088.993  000.694  000.501: require('treesitter-context')
089.069  000.790  000.096: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
089.323  000.040  000.040: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
089.940  000.396  000.396: require('reactive.commands')
090.220  000.276  000.276: require('reactive.highlight')
090.974  000.323  000.323: require('reactive.util')
090.986  000.761  000.438: require('reactive.snapshot')
091.685  000.249  000.249: require('reactive.preset')
091.692  000.666  000.417: require('reactive.state')
091.838  002.320  000.221: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
092.465  000.462  000.462: require('snacks')
092.469  000.484  000.022: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
093.790  001.079  001.079: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
094.044  000.092  000.092: sourcing /nix/store/6p53zgrnifmf23919iil96md40n6g96a-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
094.898  003.867: loading packages
094.902  000.004: loading after plugins
094.951  000.050: inits 3
099.608  004.656: reading ShaDa
100.155  000.547: opening buffers
104.514  003.318  003.318: require('colorUtils')
105.778  000.271  000.271: require('staline.utils')
105.812  000.632  000.361: require('staline.config')
105.817  001.288  000.655: require('staline')
110.849  004.366  004.366: require('spider')
111.159  000.294  000.294: require('spider.config')
112.213  000.381  000.381: require('ts-error-translator')
114.001  000.935  000.935: require('vim.lsp.completion')
114.107  001.883  000.948: require('vim.lsp.handlers')
114.418  002.732: BufEnter autocommands
114.427  000.010: editing files in windows
116.406  000.122  000.122: require('auto-session.logger')
116.437  000.771  000.650: require('auto-session.lib')
116.684  000.244  000.244: require('auto-session.config')
117.171  000.483  000.483: require('auto-session.autocmds')
117.188  002.223  000.724: require('auto-session')
119.844  000.553  000.553: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
126.437  000.342  000.342: require('telescope._extensions')
126.446  004.038  003.697: require('telescope')
131.036  000.455  000.455: require('plenary.bit')
131.329  000.286  000.286: require('plenary.functional')
131.386  000.032  000.032: require('ffi')
131.429  001.906  001.132: require('plenary.path')
131.450  002.313  000.406: require('plenary.strings')
131.720  000.268  000.268: require('telescope.deprecated')
133.192  000.476  000.476: require('plenary.log')
133.224  000.760  000.284: require('telescope.log')
135.324  000.323  000.323: require('plenary.compat')
135.346  001.130  000.807: require('plenary.job')
135.761  000.409  000.409: require('telescope.state')
135.836  002.609  001.070: require('telescope.utils')
135.858  004.134  000.765: require('telescope.sorters')
143.282  014.879  008.164: require('telescope.config')
144.847  000.615  000.615: require('plenary.window.border')
145.177  000.323  000.323: require('plenary.window')
145.456  000.273  000.273: require('plenary.popup.utils')
145.464  002.166  000.956: require('plenary.popup')
145.975  000.508  000.508: require('telescope.pickers.scroller')
146.419  000.438  000.438: require('telescope.actions.state')
146.918  000.494  000.494: require('telescope.actions.utils')
148.210  000.581  000.581: require('telescope.actions.mt')
148.247  001.324  000.743: require('telescope.actions.set')
149.364  000.593  000.593: require('telescope.config.resolve')
149.370  001.119  000.526: require('telescope.pickers.entry_display')
149.773  000.399  000.399: require('telescope.from_entry')
150.111  023.658  002.330: require('telescope.actions')
153.490  000.721  000.721: require('fzf_lib')
153.504  001.447  000.726: require('telescope._extensions.fzf')
154.458  000.467  000.467: require('telescope-undo.actions')
154.469  000.951  000.484: require('telescope._extensions.undo')
155.076  000.163  000.163: require('auto-session.session-lens.actions')
155.083  000.345  000.182: require('auto-session.session-lens')
155.102  000.432  000.087: require('telescope._extensions.session-lens')
163.816  007.585  007.585: require('mini.starter')
174.772  000.023  000.023: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
179.611  000.587  000.587: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
179.655  000.020  000.020: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
179.753  000.078  000.078: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
184.807  006.619  005.935: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
188.876  000.497  000.497: require('vim.provider')
189.499  000.611  000.611: require('vim.provider.python')
191.037  000.304  000.304: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
191.258  002.947  001.535: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
196.677  031.772: VimEnter autocommands
197.418  000.649  000.649: require('vim.termcap')
197.484  000.031  000.031: require('vim.text')
197.534  000.177: UIEnter autocommands
197.542  000.009: before starting main loop
199.256  001.713: first screen update
199.262  000.007: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.004  000.004: --- NVIM STARTING ---
000.236  000.232: event init
000.378  000.143: early init
000.466  000.087: locale set
000.541  000.075: init first window
001.241  000.700: inits 1
001.255  000.014: window checked
001.259  000.003: parsing arguments
001.892  000.057  000.057: require('vim.shared')
002.016  000.048  000.048: require('vim.inspect')
002.075  000.048  000.048: require('vim._options')
002.078  000.182  000.086: require('vim._editor')
002.080  000.266  000.027: require('vim._init_packages')
002.085  000.560: init lua interpreter
003.630  001.546: nvim_ui_attach
004.027  000.397: nvim_set_client_info
004.029  000.002: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.143  000.140: event init
000.231  000.088: early init
000.292  000.061: locale set
000.356  000.064: init first window
000.873  000.517: inits 1
000.894  000.021: window checked
000.897  000.003: parsing arguments
001.537  000.061  000.061: require('vim.shared')
001.667  000.049  000.049: require('vim.inspect')
001.728  000.047  000.047: require('vim._options')
001.733  000.191  000.095: require('vim._editor')
001.734  000.277  000.025: require('vim._init_packages')
001.740  000.566: init lua interpreter
001.822  000.082: expanding arguments
001.848  000.026: inits 2
002.181  000.334: init highlight
002.182  000.001: waiting for UI
002.296  000.113: done waiting for UI
002.299  000.003: clear screen
002.459  000.020  000.020: require('vim.keymap')
003.496  000.186  000.186: sourcing nvim_exec2()
003.792  001.491  001.284: require('vim._defaults')
003.797  000.008: init default mappings & autocommands
005.121  000.027  000.027: sourcing nvim_exec2() called at /nix/store/rgp07j4rlc6k7v6hv3bw3mw7xivnb559-neovim-0.11.1-nvim/nvim-setup.lua:0
005.130  000.443  000.416: require('nixCats')
005.376  001.483  001.040: sourcing /nix/store/rgp07j4rlc6k7v6hv3bw3mw7xivnb559-neovim-0.11.1-nvim/nvim-setup.lua
005.383  000.103: --cmd commands
008.245  000.072  000.072: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.576  000.040  000.040: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.181  000.226  000.226: require('nixCatsUtils')
012.107  000.008  000.008: require('vim.F')
012.155  002.224  002.216: require('vim.diagnostic')
012.211  000.014  000.014: sourcing nvim_exec2() called at VIMINIT:0
012.607  003.351  001.113: require('luaConf.keys')
013.138  000.528  000.528: require('luaConf.options')
014.303  000.457  000.457: require('lze.c.loader')
014.308  000.617  000.160: require('lze.h.colorscheme')
014.604  000.294  000.294: require('lze.h.cmd')
014.892  000.285  000.285: require('lze.h.event')
015.032  000.136  000.136: require('lze.h.ft')
015.273  000.239  000.239: require('lze.h.keys')
015.404  000.128  000.128: require('lze.h.dep_of')
015.525  000.118  000.118: require('lze.h.on_plugin')
015.664  000.136  000.136: require('lze.h.on_require')
015.667  002.080  000.126: require('lze.h')
015.698  002.415  000.335: require('lze.c.handler')
015.702  002.560  000.145: require('lze')
015.750  000.045  000.045: require('nixCatsUtils.lzUtils')
015.886  000.124  000.124: require('lzextras')
016.131  000.241  000.241: require('lzextras.src.lsp')
017.655  001.207  001.207: require('oil')
017.857  000.197  000.197: require('oil.ringbuf')
018.225  000.364  000.364: require('oil.config')
020.646  002.201  002.201: require('vim.filetype')
022.289  000.270  000.270: require('oil.log')
022.316  000.768  000.498: require('oil.fs')
023.520  000.180  000.180: require('oil.constants')
023.536  001.218  001.038: require('oil.util')
023.786  000.185  000.185: require('lze.c.parse')
023.887  000.091  000.091: require('luaConf.plugins.mini')
023.947  000.051  000.051: require('luaConf.plugins.auto-session')
024.177  000.223  000.223: require('luaConf.plugins.cokeline')
024.309  000.123  000.123: require('luaConf.plugins.reactive')
025.345  000.244  000.244: require('nui.object')
027.573  000.517  000.517: require('vim.version')
029.355  002.701  002.184: require('nui.utils')
029.376  002.928  000.227: require('nui.text')
029.386  003.114  000.186: require('nui.line')
029.501  003.796  000.681: require('nui.popup.border')
029.674  000.169  000.169: require('nui.utils.buf_storage')
030.044  000.366  000.366: require('nui.utils.autocmd')
030.274  000.227  000.227: require('nui.utils.keymap')
030.541  000.264  000.264: require('nui.layout.utils')
030.560  005.211  000.389: require('nui.popup')
031.172  000.248  000.248: require('nui.split.utils')
031.188  000.626  000.378: require('nui.split')
031.469  000.279  000.279: require('nui.layout.float')
031.777  000.304  000.304: require('nui.layout.split')
031.821  007.270  000.606: require('nui.layout')
031.869  007.553  000.283: require('luaConf.plugins.telescope')
031.981  000.102  000.102: require('luaConf.plugins.treesitter')
032.084  000.095  000.095: require('luaConf.plugins.completion')
032.242  000.051  000.051: require('luaConf.plugins.toggleterm')
032.307  000.057  000.057: require('luaConf.plugins.codecompanion')
032.412  000.050  000.050: require('luaConf.plugins.spider')
032.485  000.067  000.067: require('luaConf.plugins.staline')
032.618  000.051  000.051: require('luaConf.plugins.colorizer')
032.689  000.057  000.057: require('luaConf.plugins.render-markdown')
032.756  000.061  000.061: require('luaConf.plugins.image')
032.812  000.052  000.052: require('luaConf.plugins.img-clip')
036.538  000.038  000.038: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
036.972  020.831  005.970: require('luaConf.plugins')
049.823  000.058  000.058: require('vim.fs')
049.886  000.634  000.575: require('vim.lsp.log')
051.917  002.026  002.026: require('vim.lsp.protocol')
054.808  002.881  002.881: require('vim.lsp.util')
055.710  000.424  000.424: require('vim.lsp.sync')
055.718  000.903  000.479: require('vim.lsp._changetracking')
056.715  000.384  000.384: require('vim.lsp._transport')
056.736  001.014  000.630: require('vim.lsp.rpc')
056.837  009.279  001.821: require('vim.lsp')
056.938  010.067  000.788: require('lspconfig.util')
057.146  000.204  000.204: require('lspconfig.async')
057.150  010.890  000.620: require('lspconfig.configs')
057.159  011.462  000.572: require('lspconfig')
057.818  000.655  000.655: require('vim.iter')
060.570  023.593  011.476: require('luaConf.LSPs')
061.025  000.444  000.444: require('luaConf.debug')
061.909  000.038  000.038: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
065.844  003.598  003.598: require('conform')
066.051  005.019  001.383: require('luaConf.format')
066.055  056.856  000.120: require('luaConf')
066.066  003.489: sourcing vimrc file(s)
067.235  000.465  000.465: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
067.241  000.572  000.107: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
067.740  000.095  000.095: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
067.865  000.562  000.467: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
069.594  000.035  000.035: sourcing /nix/store/jqhbizvi4wk77gdpf13986qgcniiq12m-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
069.743  000.034  000.034: sourcing /nix/store/jqhbizvi4wk77gdpf13986qgcniiq12m-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
070.576  000.561  000.561: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
071.361  000.222  000.222: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
072.739  000.228  000.228: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
072.923  001.525  001.297: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
073.103  000.146  000.146: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
073.160  000.013  000.013: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
073.296  000.009  000.009: sourcing /nix/store/rgp07j4rlc6k7v6hv3bw3mw7xivnb559-neovim-0.11.1-nvim/nvim-rplugin.vim
073.543  000.350  000.341: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
073.659  000.079  000.079: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
073.749  000.025  000.025: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
073.890  000.102  000.102: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
073.957  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
074.143  000.150  000.150: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
074.256  000.066  000.066: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
074.387  000.092  000.092: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
074.513  000.087  000.087: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
074.607  000.052  000.052: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
074.661  003.902: loading rtp plugins
075.625  000.038  000.038: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
079.035  000.084  000.084: require('eyeliner.config')
079.408  000.130  000.130: require('eyeliner.utils')
079.415  000.282  000.152: require('eyeliner.shared')
079.849  000.098  000.098: require('eyeliner.string')
079.854  000.310  000.212: require('eyeliner.liner')
079.858  000.441  000.131: require('eyeliner.always-on')
080.033  000.173  000.173: require('eyeliner.on-key')
080.038  000.998  000.102: require('eyeliner.main')
080.040  004.251  003.169: require('eyeliner')
080.173  004.417  000.166: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
080.742  000.154  000.154: require('img-clip.debug')
081.089  000.343  000.343: require('img-clip.config')
081.292  000.199  000.199: require('img-clip.util')
081.833  000.204  000.204: require('img-clip.clipboard')
082.267  000.238  000.238: require('img-clip.fs')
082.272  000.436  000.197: require('img-clip.markup')
082.278  000.874  000.235: require('img-clip.paste')
082.281  000.985  000.111: require('img-clip')
082.293  001.796  000.114: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
084.463  001.777  001.777: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
085.500  000.189  000.189: require('treesitter-context.config')
085.524  000.670  000.480: require('treesitter-context')
085.596  000.761  000.091: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
085.811  000.043  000.043: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
086.425  000.388  000.388: require('reactive.commands')
086.726  000.297  000.297: require('reactive.highlight')
087.481  000.305  000.305: require('reactive.util')
087.496  000.766  000.461: require('reactive.snapshot')
088.147  000.254  000.254: require('reactive.preset')
088.155  000.631  000.377: require('reactive.state')
088.341  002.335  000.254: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
088.976  000.470  000.470: require('snacks')
088.981  000.493  000.022: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
090.118  000.896  000.896: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
090.341  000.087  000.087: sourcing /nix/store/ncxh9c1ml2rhz496axnm1yz44l6p1azs-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
090.984  003.679: loading packages
090.987  000.003: loading after plugins
091.016  000.029: inits 3
095.594  004.577: reading ShaDa
096.168  000.574: opening buffers
100.235  003.327  003.327: require('colorUtils')
101.510  000.271  000.271: require('staline.utils')
101.554  000.638  000.367: require('staline.config')
101.567  001.313  000.675: require('staline')
106.217  004.003  004.003: require('spider')
106.472  000.249  000.249: require('spider.config')
107.515  000.385  000.385: require('ts-error-translator')
109.289  000.916  000.916: require('vim.lsp.completion')
109.391  001.865  000.949: require('vim.lsp.handlers')
109.771  002.462: BufEnter autocommands
109.775  000.004: editing files in windows
111.889  000.143  000.143: require('auto-session.logger')
111.915  000.823  000.679: require('auto-session.lib')
112.156  000.238  000.238: require('auto-session.config')
112.710  000.551  000.551: require('auto-session.autocmds')
112.732  002.414  000.802: require('auto-session')
115.084  000.435  000.435: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
121.739  000.337  000.337: require('telescope._extensions')
121.747  004.402  004.066: require('telescope')
126.019  000.432  000.432: require('plenary.bit')
126.272  000.247  000.247: require('plenary.functional')
126.320  000.029  000.029: require('ffi')
126.357  001.790  001.081: require('plenary.path')
126.378  002.201  000.411: require('plenary.strings')
126.658  000.277  000.277: require('telescope.deprecated')
128.377  000.532  000.532: require('plenary.log')
128.419  000.840  000.308: require('telescope.log')
131.180  000.214  000.214: require('plenary.compat')
131.228  001.376  001.162: require('plenary.job')
131.646  000.415  000.415: require('telescope.state')
131.787  003.365  001.575: require('telescope.utils')
131.830  005.169  000.963: require('telescope.sorters')
135.092  011.600  003.954: require('telescope.config')
136.020  000.401  000.401: require('plenary.window.border')
136.210  000.185  000.185: require('plenary.window')
136.397  000.184  000.184: require('plenary.popup.utils')
136.402  001.303  000.533: require('plenary.popup')
136.750  000.345  000.345: require('telescope.pickers.scroller')
137.036  000.283  000.283: require('telescope.actions.state')
137.369  000.329  000.329: require('telescope.actions.utils')
138.226  000.390  000.390: require('telescope.actions.mt')
138.249  000.877  000.487: require('telescope.actions.set')
139.010  000.395  000.395: require('telescope.config.resolve')
139.014  000.763  000.368: require('telescope.pickers.entry_display')
139.287  000.270  000.270: require('telescope.from_entry')
139.527  017.770  001.999: require('telescope.actions')
141.814  000.550  000.550: require('fzf_lib')
141.825  001.119  000.569: require('telescope._extensions.fzf')
142.526  000.337  000.337: require('telescope-undo.actions')
142.558  000.724  000.387: require('telescope._extensions.undo')
142.940  000.093  000.093: require('auto-session.session-lens.actions')
142.945  000.222  000.129: require('auto-session.session-lens')
142.947  000.273  000.051: require('telescope._extensions.session-lens')
149.202  005.219  005.219: require('mini.starter')
158.845  000.015  000.015: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
161.381  000.459  000.459: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
161.429  000.022  000.022: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
161.513  000.055  000.055: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
165.264  005.071  004.535: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
168.724  000.417  000.417: require('vim.provider')
169.224  000.488  000.488: require('vim.provider.python')
170.284  000.184  000.184: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
170.374  002.108  001.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
175.036  025.713: VimEnter autocommands
175.559  000.449  000.449: require('vim.termcap')
175.608  000.023  000.023: require('vim.text')
175.635  000.126: UIEnter autocommands
175.641  000.006: before starting main loop
176.833  001.192: first screen update
176.836  000.003: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.148  000.145: event init
000.239  000.091: early init
000.298  000.059: locale set
000.362  000.064: init first window
000.875  000.513: inits 1
000.887  000.012: window checked
000.890  000.002: parsing arguments
001.503  000.058  000.058: require('vim.shared')
001.626  000.047  000.047: require('vim.inspect')
001.685  000.046  000.046: require('vim._options')
001.690  000.182  000.089: require('vim._editor')
001.691  000.265  000.025: require('vim._init_packages')
001.696  000.541: init lua interpreter
003.305  001.609: nvim_ui_attach
003.682  000.377: nvim_set_client_info
003.684  000.002: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.006  000.006: --- NVIM STARTING ---
000.136  000.130: event init
000.221  000.085: early init
000.280  000.059: locale set
000.342  000.062: init first window
000.842  000.500: inits 1
000.862  000.020: window checked
000.865  000.002: parsing arguments
001.461  000.056  000.056: require('vim.shared')
001.590  000.048  000.048: require('vim.inspect')
001.650  000.046  000.046: require('vim._options')
001.654  000.189  000.096: require('vim._editor')
001.656  000.272  000.027: require('vim._init_packages')
001.661  000.524: init lua interpreter
001.728  000.068: expanding arguments
001.754  000.025: inits 2
002.082  000.328: init highlight
002.083  000.001: waiting for UI
002.170  000.087: done waiting for UI
002.173  000.004: clear screen
002.333  000.022  000.022: require('vim.keymap')
003.304  000.177  000.177: sourcing nvim_exec2()
003.478  001.302  001.104: require('vim._defaults')
003.481  000.005: init default mappings & autocommands
004.720  000.026  000.026: sourcing nvim_exec2() called at /nix/store/x9dha76i0ilwfz00yj5wniv7mjqngb5v-neovim-0.11.1-nvim/nvim-setup.lua:0
004.728  000.447  000.421: require('nixCats')
004.934  001.368  000.920: sourcing /nix/store/x9dha76i0ilwfz00yj5wniv7mjqngb5v-neovim-0.11.1-nvim/nvim-setup.lua
004.940  000.092: --cmd commands
007.647  000.046  000.046: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
007.973  000.039  000.039: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
008.364  000.138  000.138: require('nixCatsUtils')
011.315  000.008  000.008: require('vim.F')
011.360  002.158  002.150: require('vim.diagnostic')
011.470  000.013  000.013: sourcing nvim_exec2() called at VIMINIT:0
011.812  003.402  001.231: require('luaConf.keys')
012.285  000.469  000.469: require('luaConf.options')
013.428  000.428  000.428: require('lze.c.loader')
013.433  000.584  000.156: require('lze.h.colorscheme')
013.726  000.291  000.291: require('lze.h.cmd')
014.009  000.280  000.280: require('lze.h.event')
014.151  000.139  000.139: require('lze.h.ft')
014.397  000.243  000.243: require('lze.h.keys')
014.568  000.168  000.168: require('lze.h.dep_of')
014.697  000.125  000.125: require('lze.h.on_plugin')
014.836  000.137  000.137: require('lze.h.on_require')
014.839  002.098  000.132: require('lze.h')
014.868  002.443  000.345: require('lze.c.handler')
014.873  002.584  000.141: require('lze')
014.923  000.048  000.048: require('nixCatsUtils.lzUtils')
015.055  000.122  000.122: require('lzextras')
015.298  000.240  000.240: require('lzextras.src.lsp')
016.817  001.202  001.202: require('oil')
017.020  000.198  000.198: require('oil.ringbuf')
017.388  000.365  000.365: require('oil.config')
019.746  002.159  002.159: require('vim.filetype')
021.366  000.259  000.259: require('oil.log')
021.387  000.753  000.494: require('oil.fs')
022.484  000.170  000.170: require('oil.constants')
022.507  001.117  000.947: require('oil.util')
022.736  000.189  000.189: require('lze.c.parse')
022.840  000.096  000.096: require('luaConf.plugins.mini')
022.913  000.045  000.045: require('luaConf.plugins.auto-session')
023.145  000.223  000.223: require('luaConf.plugins.cokeline')
023.275  000.122  000.122: require('luaConf.plugins.reactive')
024.242  000.243  000.243: require('nui.object')
026.576  000.538  000.538: require('vim.version')
028.249  002.609  002.070: require('nui.utils')
028.268  002.824  000.215: require('nui.text')
028.276  003.011  000.187: require('nui.line')
028.405  003.713  000.702: require('nui.popup.border')
028.584  000.176  000.176: require('nui.utils.buf_storage')
028.947  000.360  000.360: require('nui.utils.autocmd')
029.181  000.230  000.230: require('nui.utils.keymap')
029.443  000.259  000.259: require('nui.layout.utils')
029.461  005.215  000.477: require('nui.popup')
030.130  000.319  000.319: require('nui.split.utils')
030.201  000.737  000.418: require('nui.split')
030.486  000.281  000.281: require('nui.layout.float')
030.812  000.323  000.323: require('nui.layout.split')
030.831  007.318  000.520: require('nui.layout')
030.910  007.629  000.310: require('luaConf.plugins.telescope')
031.033  000.113  000.113: require('luaConf.plugins.treesitter')
031.129  000.089  000.089: require('luaConf.plugins.completion')
031.280  000.051  000.051: require('luaConf.plugins.toggleterm')
031.413  000.061  000.061: require('luaConf.plugins.codecompanion')
031.465  000.045  000.045: require('luaConf.plugins.spider')
031.537  000.066  000.066: require('luaConf.plugins.staline')
031.585  000.043  000.043: require('luaConf.plugins.colorizer')
031.725  000.062  000.062: require('luaConf.plugins.render-markdown')
031.812  000.064  000.064: require('luaConf.plugins.image')
031.867  000.050  000.050: require('luaConf.plugins.img-clip')
035.039  000.039  000.039: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
035.381  020.073  005.292: require('luaConf.plugins')
047.934  000.065  000.065: require('vim.fs')
047.982  000.633  000.568: require('vim.lsp.log')
049.813  001.827  001.827: require('vim.lsp.protocol')
052.886  003.066  003.066: require('vim.lsp.util')
053.819  000.429  000.429: require('vim.lsp.sync')
053.827  000.934  000.505: require('vim.lsp._changetracking')
054.903  000.461  000.461: require('vim.lsp._transport')
055.020  001.189  000.729: require('vim.lsp.rpc')
055.136  009.547  001.899: require('vim.lsp')
055.251  010.338  000.790: require('lspconfig.util')
055.467  000.211  000.211: require('lspconfig.async')
055.471  011.296  000.747: require('lspconfig.configs')
055.481  011.744  000.448: require('lspconfig')
056.147  000.663  000.663: require('vim.iter')
059.255  023.870  011.463: require('luaConf.LSPs')
059.793  000.531  000.531: require('luaConf.debug')
060.706  000.038  000.038: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
064.548  003.505  003.505: require('conform')
064.625  004.826  001.283: require('luaConf.format')
064.629  056.260  000.096: require('luaConf')
064.636  003.213: sourcing vimrc file(s)
065.733  000.446  000.446: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
065.738  000.548  000.101: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
066.239  000.104  000.104: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
066.349  000.550  000.445: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
068.049  000.031  000.031: sourcing /nix/store/wvdiabpxsvbmki9fs4xsips198xq394d-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
068.197  000.033  000.033: sourcing /nix/store/wvdiabpxsvbmki9fs4xsips198xq394d-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
069.047  000.582  000.582: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
069.794  000.211  000.211: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
071.176  000.213  000.213: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
071.357  001.527  001.314: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
071.536  000.146  000.146: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
071.587  000.012  000.012: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
071.723  000.009  000.009: sourcing /nix/store/x9dha76i0ilwfz00yj5wniv7mjqngb5v-neovim-0.11.1-nvim/nvim-rplugin.vim
071.958  000.339  000.329: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
072.062  000.067  000.067: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
072.150  000.025  000.025: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
072.291  000.102  000.102: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
072.399  000.021  000.021: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
072.666  000.229  000.229: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
072.775  000.056  000.056: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
072.930  000.094  000.094: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
073.059  000.086  000.086: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
073.148  000.046  000.046: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
073.180  003.841: loading rtp plugins
074.096  000.038  000.038: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
077.422  000.079  000.079: require('eyeliner.config')
077.786  000.127  000.127: require('eyeliner.utils')
077.792  000.275  000.148: require('eyeliner.shared')
078.102  000.062  000.062: require('eyeliner.string')
078.107  000.225  000.163: require('eyeliner.liner')
078.110  000.316  000.091: require('eyeliner.always-on')
078.268  000.157  000.157: require('eyeliner.on-key')
078.273  000.846  000.098: require('eyeliner.main')
078.275  004.017  003.092: require('eyeliner')
078.351  004.124  000.107: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
078.915  000.127  000.127: require('img-clip.debug')
079.210  000.291  000.291: require('img-clip.config')
079.396  000.182  000.182: require('img-clip.util')
079.935  000.205  000.205: require('img-clip.clipboard')
080.362  000.235  000.235: require('img-clip.fs')
080.367  000.429  000.193: require('img-clip.markup')
080.372  000.866  000.233: require('img-clip.paste')
080.374  000.976  000.109: require('img-clip')
080.385  001.687  000.111: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
082.860  002.094  002.094: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
083.992  000.195  000.195: require('treesitter-context.config')
084.014  000.746  000.551: require('treesitter-context')
084.147  000.911  000.164: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
084.362  000.041  000.041: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
085.019  000.404  000.404: require('reactive.commands')
085.307  000.283  000.283: require('reactive.highlight')
086.041  000.303  000.303: require('reactive.util')
086.054  000.744  000.441: require('reactive.snapshot')
086.718  000.277  000.277: require('reactive.preset')
086.726  000.643  000.366: require('reactive.state')
086.857  002.269  000.195: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
087.468  000.453  000.453: require('snacks')
087.472  000.474  000.021: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
088.633  000.914  000.914: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
088.857  000.088  000.088: sourcing /nix/store/5yv2b2jw9p28z4qw75palwqly0jzwag8-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
089.482  003.664: loading packages
089.485  000.003: loading after plugins
089.515  000.030: inits 3
094.579  005.064: reading ShaDa
095.074  000.495: opening buffers
099.287  003.480  003.480: require('spider')
099.542  000.249  000.249: require('spider.config')
103.452  003.177  003.177: require('colorUtils')
104.763  000.288  000.288: require('staline.utils')
104.799  000.668  000.380: require('staline.config')
104.804  001.322  000.654: require('staline')
105.966  000.429  000.429: require('ts-error-translator')
107.865  000.993  000.993: require('vim.lsp.completion')
107.966  001.984  000.991: require('vim.lsp.handlers')
108.270  002.554: BufEnter autocommands
108.274  000.004: editing files in windows
113.675  004.729  004.729: require('mini.starter')
123.773  000.016  000.016: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
126.529  000.131  000.131: require('auto-session.logger')
126.555  000.895  000.764: require('auto-session.lib')
126.795  000.237  000.237: require('auto-session.config')
127.243  000.444  000.444: require('auto-session.autocmds')
127.259  002.403  000.827: require('auto-session')
129.964  000.444  000.444: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
136.166  000.309  000.309: require('telescope._extensions')
136.174  003.917  003.608: require('telescope')
140.724  000.575  000.575: require('plenary.bit')
141.030  000.300  000.300: require('plenary.functional')
141.122  000.059  000.059: require('ffi')
141.199  002.140  001.206: require('plenary.path')
141.222  002.530  000.390: require('plenary.strings')
141.500  000.277  000.277: require('telescope.deprecated')
143.658  000.745  000.745: require('plenary.log')
143.712  001.050  000.305: require('telescope.log')
145.464  000.190  000.190: require('plenary.compat')
145.475  000.774  000.584: require('plenary.job')
145.752  000.275  000.275: require('telescope.state')
145.775  002.059  001.010: require('telescope.utils')
145.784  004.281  001.172: require('telescope.sorters')
148.148  010.190  003.103: require('telescope.config')
149.058  000.391  000.391: require('plenary.window.border')
149.247  000.185  000.185: require('plenary.window')
149.435  000.185  000.185: require('plenary.popup.utils')
149.440  001.286  000.525: require('plenary.popup')
149.765  000.323  000.323: require('telescope.pickers.scroller')
150.046  000.278  000.278: require('telescope.actions.state')
150.377  000.328  000.328: require('telescope.actions.utils')
151.233  000.389  000.389: require('telescope.actions.mt')
151.254  000.874  000.485: require('telescope.actions.set')
151.988  000.384  000.384: require('telescope.config.resolve')
151.993  000.737  000.353: require('telescope.pickers.entry_display')
152.265  000.270  000.270: require('telescope.from_entry')
152.594  016.404  002.118: require('telescope.actions')
154.841  000.454  000.454: require('fzf_lib')
154.848  000.886  000.433: require('telescope._extensions.fzf')
155.473  000.307  000.307: require('telescope-undo.actions')
155.479  000.623  000.316: require('telescope._extensions.undo')
155.804  000.092  000.092: require('auto-session.session-lens.actions')
155.808  000.212  000.120: require('auto-session.session-lens')
155.811  000.260  000.049: require('telescope._extensions.session-lens')
157.166  000.348  000.348: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
157.195  000.014  000.014: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
157.259  000.051  000.051: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
160.786  004.456  004.043: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
164.656  000.335  000.335: require('vim.provider')
165.062  000.398  000.398: require('vim.provider.python')
166.017  000.173  000.173: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
166.104  001.825  000.919: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
171.154  026.915: VimEnter autocommands
171.630  000.425  000.425: require('vim.termcap')
171.676  000.022  000.022: require('vim.text')
171.699  000.099: UIEnter autocommands
171.704  000.004: before starting main loop
172.671  000.967: first screen update
172.674  000.003: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.158  000.155: event init
000.250  000.093: early init
000.315  000.064: locale set
000.382  000.067: init first window
000.896  000.513: inits 1
000.910  000.014: window checked
000.912  000.003: parsing arguments
001.552  000.058  000.058: require('vim.shared')
001.673  000.050  000.050: require('vim.inspect')
001.734  000.050  000.050: require('vim._options')
001.737  000.181  000.082: require('vim._editor')
001.738  000.273  000.034: require('vim._init_packages')
001.743  000.558: init lua interpreter
003.395  001.651: nvim_ui_attach
003.776  000.381: nvim_set_client_info
003.778  000.002: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.136  000.133: event init
000.219  000.084: early init
000.280  000.061: locale set
000.349  000.069: init first window
000.816  000.468: inits 1
000.836  000.019: window checked
000.838  000.002: parsing arguments
001.462  000.063  000.063: require('vim.shared')
001.578  000.047  000.047: require('vim.inspect')
001.637  000.049  000.049: require('vim._options')
001.640  000.174  000.079: require('vim._editor')
001.641  000.259  000.023: require('vim._init_packages')
001.646  000.549: init lua interpreter
001.713  000.067: expanding arguments
001.737  000.024: inits 2
002.107  000.370: init highlight
002.110  000.003: waiting for UI
002.225  000.115: done waiting for UI
002.230  000.004: clear screen
002.422  000.022  000.022: require('vim.keymap')
003.696  000.259  000.259: sourcing nvim_exec2()
003.941  001.708  001.426: require('vim._defaults')
003.946  000.008: init default mappings & autocommands
005.271  000.027  000.027: sourcing nvim_exec2() called at /nix/store/04kqqqhw62dj5p14k00j20lka19v4hfh-neovim-0.11.1-nvim/nvim-setup.lua:0
005.280  000.444  000.417: require('nixCats')
005.527  001.462  001.018: sourcing /nix/store/04kqqqhw62dj5p14k00j20lka19v4hfh-neovim-0.11.1-nvim/nvim-setup.lua
005.533  000.125: --cmd commands
008.359  000.049  000.049: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.693  000.043  000.043: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.103  000.143  000.143: require('nixCatsUtils')
011.898  000.010  000.010: require('vim.F')
011.986  002.241  002.231: require('vim.diagnostic')
012.065  000.013  000.013: sourcing nvim_exec2() called at VIMINIT:0
012.393  003.241  000.988: require('luaConf.keys')
012.979  000.583  000.583: require('luaConf.options')
014.156  000.428  000.428: require('lze.c.loader')
014.161  000.594  000.166: require('lze.h.colorscheme')
014.463  000.299  000.299: require('lze.h.cmd')
014.754  000.288  000.288: require('lze.h.event')
014.946  000.189  000.189: require('lze.h.ft')
015.235  000.283  000.283: require('lze.h.keys')
015.366  000.128  000.128: require('lze.h.dep_of')
015.502  000.134  000.134: require('lze.h.on_plugin')
015.676  000.171  000.171: require('lze.h.on_require')
015.679  002.243  000.158: require('lze.h')
015.724  002.584  000.341: require('lze.c.handler')
015.729  002.745  000.162: require('lze')
015.776  000.046  000.046: require('nixCatsUtils.lzUtils')
015.914  000.126  000.126: require('lzextras')
016.157  000.240  000.240: require('lzextras.src.lsp')
018.037  001.398  001.398: require('oil')
018.264  000.220  000.220: require('oil.ringbuf')
018.638  000.370  000.370: require('oil.config')
021.076  002.143  002.143: require('vim.filetype')
022.782  000.266  000.266: require('oil.log')
022.806  000.855  000.589: require('oil.fs')
023.934  000.170  000.170: require('oil.constants')
023.950  001.141  000.970: require('oil.util')
024.192  000.208  000.208: require('lze.c.parse')
024.336  000.137  000.137: require('luaConf.plugins.mini')
024.419  000.074  000.074: require('luaConf.plugins.auto-session')
024.661  000.233  000.233: require('luaConf.plugins.cokeline')
024.795  000.126  000.126: require('luaConf.plugins.reactive')
025.825  000.264  000.264: require('nui.object')
028.231  000.604  000.604: require('vim.version')
030.124  002.895  002.291: require('nui.utils')
030.146  003.121  000.226: require('nui.text')
030.160  003.398  000.277: require('nui.line')
030.248  004.053  000.656: require('nui.popup.border')
030.480  000.227  000.227: require('nui.utils.buf_storage')
031.038  000.553  000.553: require('nui.utils.autocmd')
031.287  000.244  000.244: require('nui.utils.keymap')
031.569  000.279  000.279: require('nui.layout.utils')
031.607  005.777  000.420: require('nui.popup')
032.271  000.253  000.253: require('nui.split.utils')
032.290  000.680  000.427: require('nui.split')
032.573  000.280  000.280: require('nui.layout.float')
032.887  000.311  000.311: require('nui.layout.split')
032.954  007.901  000.589: require('nui.layout')
033.004  008.202  000.301: require('luaConf.plugins.telescope')
033.123  000.109  000.109: require('luaConf.plugins.treesitter')
033.278  000.097  000.097: require('luaConf.plugins.completion')
033.415  000.052  000.052: require('luaConf.plugins.toggleterm')
033.484  000.059  000.059: require('luaConf.plugins.codecompanion')
033.590  000.048  000.048: require('luaConf.plugins.spider')
033.667  000.071  000.071: require('luaConf.plugins.staline')
033.781  000.049  000.049: require('luaConf.plugins.colorizer')
033.865  000.054  000.054: require('luaConf.plugins.render-markdown')
033.934  000.064  000.064: require('luaConf.plugins.image')
033.989  000.050  000.050: require('luaConf.plugins.img-clip')
037.343  000.040  000.040: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
037.685  021.517  005.717: require('luaConf.plugins')
050.973  000.203  000.203: require('vim.fs')
051.039  000.748  000.545: require('vim.lsp.log')
052.812  001.768  001.768: require('vim.lsp.protocol')
055.856  003.037  003.037: require('vim.lsp.util')
057.037  000.465  000.465: require('vim.lsp.sync')
057.046  001.182  000.718: require('vim.lsp._changetracking')
058.039  000.377  000.377: require('vim.lsp._transport')
058.123  001.073  000.695: require('vim.lsp.rpc')
058.221  009.656  001.847: require('vim.lsp')
058.324  010.462  000.807: require('lspconfig.util')
058.582  000.254  000.254: require('lspconfig.async')
058.587  011.291  000.575: require('lspconfig.configs')
058.597  011.836  000.545: require('lspconfig')
059.325  000.724  000.724: require('vim.iter')
062.379  024.691  012.131: require('luaConf.LSPs')
062.974  000.586  000.586: require('luaConf.debug')
063.921  000.038  000.038: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
067.774  003.517  003.517: require('conform')
067.864  004.883  001.328: require('luaConf.format')
067.867  058.760  000.102: require('luaConf')
067.876  003.346: sourcing vimrc file(s)
069.035  000.492  000.492: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
069.044  000.599  000.107: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
069.664  000.134  000.134: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
069.777  000.652  000.517: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
071.489  000.032  000.032: sourcing /nix/store/l0j7axb77gpwdv1fmcdknrpz4izlq963-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
071.636  000.034  000.034: sourcing /nix/store/l0j7axb77gpwdv1fmcdknrpz4izlq963-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
072.469  000.548  000.548: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
073.241  000.214  000.214: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
074.655  000.266  000.266: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
074.961  001.684  001.418: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
075.145  000.148  000.148: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
075.197  000.013  000.013: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
075.334  000.010  000.010: sourcing /nix/store/04kqqqhw62dj5p14k00j20lka19v4hfh-neovim-0.11.1-nvim/nvim-rplugin.vim
075.573  000.343  000.333: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
075.678  000.069  000.069: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
075.762  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
075.909  000.105  000.105: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
075.974  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
076.165  000.153  000.153: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
076.298  000.082  000.082: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
076.420  000.082  000.082: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
076.549  000.091  000.091: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
076.634  000.047  000.047: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
076.666  003.850: loading rtp plugins
077.699  000.040  000.040: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
081.125  000.085  000.085: require('eyeliner.config')
081.510  000.134  000.134: require('eyeliner.utils')
081.517  000.281  000.147: require('eyeliner.shared')
081.829  000.060  000.060: require('eyeliner.string')
081.835  000.227  000.166: require('eyeliner.liner')
081.838  000.319  000.092: require('eyeliner.always-on')
081.993  000.154  000.154: require('eyeliner.on-key')
081.998  000.852  000.099: require('eyeliner.main')
082.000  004.136  003.198: require('eyeliner')
082.187  004.356  000.221: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
082.754  000.161  000.161: require('img-clip.debug')
083.331  000.571  000.571: require('img-clip.config')
083.610  000.264  000.264: require('img-clip.util')
084.257  000.236  000.236: require('img-clip.clipboard')
084.688  000.230  000.230: require('img-clip.fs')
084.693  000.432  000.202: require('img-clip.markup')
084.698  000.955  000.287: require('img-clip.paste')
084.700  001.085  000.131: require('img-clip')
084.716  002.209  000.128: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
087.015  001.911  001.911: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
088.122  000.189  000.189: require('treesitter-context.config')
088.148  000.710  000.521: require('treesitter-context')
088.230  000.814  000.104: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
088.448  000.044  000.044: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
089.083  000.413  000.413: require('reactive.commands')
089.365  000.277  000.277: require('reactive.highlight')
090.115  000.309  000.309: require('reactive.util')
090.143  000.775  000.466: require('reactive.snapshot')
090.783  000.242  000.242: require('reactive.preset')
090.790  000.615  000.373: require('reactive.state')
090.972  002.329  000.249: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
091.606  000.470  000.470: require('snacks')
091.610  000.495  000.024: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
092.828  000.911  000.911: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
093.069  000.090  000.090: sourcing /nix/store/gcmi081g3p84wnwkwdrcysjramk39pld-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
093.692  003.827: loading packages
093.694  000.002: loading after plugins
093.723  000.028: inits 3
098.404  004.682: reading ShaDa
098.923  000.519: opening buffers
103.270  003.567  003.567: require('spider')
103.532  000.255  000.255: require('spider.config')
107.354  003.092  003.092: require('colorUtils')
108.609  000.273  000.273: require('staline.utils')
108.714  000.701  000.428: require('staline.config')
108.720  001.354  000.654: require('staline')
109.672  000.381  000.381: require('ts-error-translator')
111.547  001.014  001.014: require('vim.lsp.completion')
111.648  001.964  000.951: require('vim.lsp.handlers')
111.989  002.452: BufEnter autocommands
111.993  000.004: editing files in windows
114.608  000.119  000.119: require('auto-session.logger')
114.654  000.848  000.729: require('auto-session.lib')
114.928  000.271  000.271: require('auto-session.config')
115.400  000.468  000.468: require('auto-session.autocmds')
115.417  002.377  000.790: require('auto-session')
117.911  000.400  000.400: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
124.055  000.317  000.317: require('telescope._extensions')
124.067  003.904  003.587: require('telescope')
129.326  000.498  000.498: require('plenary.bit')
129.593  000.259  000.259: require('plenary.functional')
129.652  000.040  000.040: require('ffi')
129.685  002.051  001.253: require('plenary.path')
129.704  002.619  000.568: require('plenary.strings')
129.999  000.293  000.293: require('telescope.deprecated')
131.548  000.495  000.495: require('plenary.log')
131.590  000.825  000.330: require('telescope.log')
133.773  000.278  000.278: require('plenary.compat')
133.823  001.229  000.951: require('plenary.job')
134.174  000.347  000.347: require('telescope.state')
134.264  002.671  001.095: require('telescope.utils')
134.291  004.288  000.792: require('telescope.sorters')
138.137  012.053  004.854: require('telescope.config')
139.286  000.442  000.442: require('plenary.window.border')
139.485  000.194  000.194: require('plenary.window')
139.676  000.187  000.187: require('plenary.popup.utils')
139.681  001.528  000.704: require('plenary.popup')
140.027  000.344  000.344: require('telescope.pickers.scroller')
140.332  000.302  000.302: require('telescope.actions.state')
140.669  000.334  000.334: require('telescope.actions.utils')
141.575  000.403  000.403: require('telescope.actions.mt')
141.600  000.928  000.524: require('telescope.actions.set')
142.351  000.395  000.395: require('telescope.config.resolve')
142.359  000.756  000.361: require('telescope.pickers.entry_display')
142.658  000.295  000.295: require('telescope.from_entry')
143.026  018.952  002.412: require('telescope.actions')
145.268  000.508  000.508: require('fzf_lib')
145.276  000.970  000.462: require('telescope._extensions.fzf')
145.941  000.324  000.324: require('telescope-undo.actions')
145.947  000.661  000.337: require('telescope._extensions.undo')
146.411  000.105  000.105: require('auto-session.session-lens.actions')
146.416  000.232  000.126: require('auto-session.session-lens')
146.419  000.282  000.051: require('telescope._extensions.session-lens')
151.976  004.854  004.854: require('mini.starter')
161.754  000.017  000.017: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
163.961  000.366  000.366: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
164.011  000.015  000.015: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
164.077  000.051  000.051: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
167.887  004.807  004.375: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
171.412  000.342  000.342: require('vim.provider')
171.814  000.395  000.395: require('vim.provider.python')
172.910  000.232  000.232: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
173.045  002.018  001.049: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
180.537  029.302: VimEnter autocommands
181.090  000.489  000.489: require('vim.termcap')
181.154  000.031  000.031: require('vim.text')
181.177  000.120: UIEnter autocommands
181.182  000.005: before starting main loop
182.269  001.087: first screen update
182.272  000.003: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.159  000.157: event init
000.265  000.106: early init
000.343  000.078: locale set
000.449  000.106: init first window
001.007  000.558: inits 1
001.025  000.018: window checked
001.029  000.003: parsing arguments
001.767  000.063  000.063: require('vim.shared')
001.889  000.051  000.051: require('vim.inspect')
001.950  000.049  000.049: require('vim._options')
001.953  000.181  000.081: require('vim._editor')
001.954  000.271  000.026: require('vim._init_packages')
001.959  000.660: init lua interpreter
003.594  001.635: nvim_ui_attach
004.054  000.459: nvim_set_client_info
004.057  000.004: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.004  000.004: --- NVIM STARTING ---
000.248  000.244: event init
000.406  000.158: early init
000.477  000.071: locale set
000.566  000.089: init first window
001.111  000.545: inits 1
001.132  000.021: window checked
001.135  000.003: parsing arguments
001.763  000.059  000.059: require('vim.shared')
001.888  000.049  000.049: require('vim.inspect')
001.948  000.049  000.049: require('vim._options')
001.950  000.184  000.086: require('vim._editor')
001.952  000.268  000.025: require('vim._init_packages')
001.961  000.558: init lua interpreter
002.038  000.076: expanding arguments
002.063  000.025: inits 2
002.387  000.324: init highlight
002.388  000.001: waiting for UI
002.507  000.119: done waiting for UI
002.510  000.004: clear screen
002.679  000.022  000.022: require('vim.keymap')
003.659  000.166  000.166: sourcing nvim_exec2()
003.866  001.353  001.165: require('vim._defaults')
003.869  000.006: init default mappings & autocommands
005.132  000.027  000.027: sourcing nvim_exec2() called at /nix/store/9jw5dnlwp0avsgws1q1crf55nkcxiw6z-neovim-0.11.1-nvim/nvim-setup.lua:0
005.140  000.441  000.413: require('nixCats')
005.348  001.390  000.949: sourcing /nix/store/9jw5dnlwp0avsgws1q1crf55nkcxiw6z-neovim-0.11.1-nvim/nvim-setup.lua
005.355  000.096: --cmd commands
008.156  000.055  000.055: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.477  000.032  000.032: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
008.992  000.161  000.161: require('nixCatsUtils')
011.887  000.013  000.013: require('vim.F')
011.949  002.335  002.322: require('vim.diagnostic')
012.088  000.019  000.019: sourcing nvim_exec2() called at VIMINIT:0
012.400  003.354  001.001: require('luaConf.keys')
013.015  000.611  000.611: require('luaConf.options')
014.338  000.394  000.394: require('lze.c.loader')
014.344  000.617  000.224: require('lze.h.colorscheme')
014.543  000.197  000.197: require('lze.h.cmd')
014.832  000.285  000.285: require('lze.h.event')
014.972  000.137  000.137: require('lze.h.ft')
015.214  000.240  000.240: require('lze.h.keys')
015.344  000.127  000.127: require('lze.h.dep_of')
015.464  000.118  000.118: require('lze.h.on_plugin')
015.602  000.134  000.134: require('lze.h.on_require')
015.605  001.990  000.134: require('lze.h')
015.633  002.458  000.469: require('lze.c.handler')
015.637  002.618  000.160: require('lze')
015.685  000.045  000.045: require('nixCatsUtils.lzUtils')
015.829  000.131  000.131: require('lzextras')
016.068  000.235  000.235: require('lzextras.src.lsp')
017.694  001.327  001.327: require('oil')
018.002  000.295  000.295: require('oil.ringbuf')
018.474  000.468  000.468: require('oil.config')
021.487  002.724  002.724: require('vim.filetype')
022.880  000.304  000.304: require('oil.log')
022.900  000.825  000.522: require('oil.fs')
024.023  000.171  000.171: require('oil.constants')
024.039  001.136  000.965: require('oil.util')
024.259  000.185  000.185: require('lze.c.parse')
024.377  000.111  000.111: require('luaConf.plugins.mini')
024.444  000.055  000.055: require('luaConf.plugins.auto-session')
024.713  000.261  000.261: require('luaConf.plugins.cokeline')
024.933  000.210  000.210: require('luaConf.plugins.reactive')
026.087  000.251  000.251: require('nui.object')
028.355  000.508  000.508: require('vim.version')
030.123  002.682  002.174: require('nui.utils')
030.143  002.900  000.218: require('nui.text')
030.151  003.092  000.191: require('nui.line')
030.232  003.770  000.678: require('nui.popup.border')
030.397  000.162  000.162: require('nui.utils.buf_storage')
030.777  000.377  000.377: require('nui.utils.autocmd')
031.011  000.230  000.230: require('nui.utils.keymap')
031.302  000.288  000.288: require('nui.layout.utils')
031.322  005.230  000.403: require('nui.popup')
031.982  000.256  000.256: require('nui.split.utils')
032.014  000.689  000.434: require('nui.split')
032.312  000.295  000.295: require('nui.layout.float')
032.613  000.297  000.297: require('nui.layout.split')
032.684  007.384  000.622: require('nui.layout')
032.744  007.802  000.418: require('luaConf.plugins.telescope')
032.907  000.149  000.149: require('luaConf.plugins.treesitter')
033.081  000.136  000.136: require('luaConf.plugins.completion')
033.275  000.058  000.058: require('luaConf.plugins.toggleterm')
033.365  000.082  000.082: require('luaConf.plugins.codecompanion')
033.481  000.057  000.057: require('luaConf.plugins.spider')
033.564  000.076  000.076: require('luaConf.plugins.staline')
033.708  000.053  000.053: require('luaConf.plugins.colorizer')
033.764  000.051  000.051: require('luaConf.plugins.render-markdown')
033.856  000.086  000.086: require('luaConf.plugins.image')
033.914  000.054  000.054: require('luaConf.plugins.img-clip')
038.200  000.043  000.043: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
038.558  022.480  006.238: require('luaConf.plugins')
052.272  000.060  000.060: require('vim.fs')
052.323  000.668  000.608: require('vim.lsp.log')
055.840  003.512  003.512: require('vim.lsp.protocol')
057.699  001.837  001.837: require('vim.lsp.util')
058.604  000.419  000.419: require('vim.lsp.sync')
058.613  000.908  000.490: require('vim.lsp._changetracking')
059.593  000.362  000.362: require('vim.lsp._transport')
059.650  001.033  000.671: require('vim.lsp.rpc')
059.748  009.787  001.828: require('vim.lsp')
059.864  010.852  001.065: require('lspconfig.util')
060.091  000.220  000.220: require('lspconfig.async')
060.096  011.757  000.685: require('lspconfig.configs')
060.105  012.330  000.573: require('lspconfig')
060.913  000.805  000.805: require('vim.iter')
064.557  025.995  012.860: require('luaConf.LSPs')
065.257  000.682  000.682: require('luaConf.debug')
066.221  000.043  000.043: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
070.357  003.785  003.785: require('conform')
070.518  005.242  001.414: require('luaConf.format')
070.522  061.526  000.130: require('luaConf')
070.530  003.401: sourcing vimrc file(s)
071.650  000.445  000.445: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
071.655  000.553  000.108: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
072.137  000.089  000.089: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
072.252  000.539  000.450: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
073.961  000.032  000.032: sourcing /nix/store/vq8zqqq1z258ms81b8wkal79nhj8zq29-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
074.125  000.037  000.037: sourcing /nix/store/vq8zqqq1z258ms81b8wkal79nhj8zq29-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
075.254  000.809  000.809: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
076.063  000.221  000.221: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
077.481  000.220  000.220: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
077.663  001.565  001.345: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
077.838  000.142  000.142: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
077.886  000.011  000.011: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
078.026  000.009  000.009: sourcing /nix/store/9jw5dnlwp0avsgws1q1crf55nkcxiw6z-neovim-0.11.1-nvim/nvim-rplugin.vim
078.283  000.360  000.351: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
078.388  000.072  000.072: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
078.476  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
078.619  000.105  000.105: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
078.686  000.021  000.021: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
078.896  000.175  000.175: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
079.012  000.071  000.071: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
079.139  000.089  000.089: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
079.260  000.085  000.085: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
079.338  000.044  000.044: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
079.375  003.890: loading rtp plugins
080.347  000.044  000.044: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
083.897  000.098  000.098: require('eyeliner.config')
084.283  000.133  000.133: require('eyeliner.utils')
084.293  000.301  000.168: require('eyeliner.shared')
084.614  000.062  000.062: require('eyeliner.string')
084.619  000.227  000.165: require('eyeliner.liner')
084.622  000.327  000.100: require('eyeliner.always-on')
084.806  000.182  000.182: require('eyeliner.on-key')
084.811  000.908  000.098: require('eyeliner.main')
084.814  004.303  003.297: require('eyeliner')
084.915  004.437  000.134: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
085.458  000.132  000.132: require('img-clip.debug')
085.791  000.329  000.329: require('img-clip.config')
086.003  000.208  000.208: require('img-clip.util')
086.694  000.251  000.251: require('img-clip.clipboard')
087.187  000.250  000.250: require('img-clip.fs')
087.192  000.493  000.244: require('img-clip.markup')
087.196  001.036  000.292: require('img-clip.paste')
087.199  001.193  000.157: require('img-clip')
087.213  001.973  000.111: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
090.176  002.605  002.605: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
091.412  000.206  000.206: require('treesitter-context.config')
091.438  000.770  000.564: require('treesitter-context')
091.517  000.875  000.105: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
091.740  000.044  000.044: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
092.402  000.426  000.426: require('reactive.commands')
092.698  000.291  000.291: require('reactive.highlight')
093.463  000.311  000.311: require('reactive.util')
093.475  000.773  000.462: require('reactive.snapshot')
094.120  000.245  000.245: require('reactive.preset')
094.128  000.619  000.374: require('reactive.state')
094.404  002.457  000.347: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
095.170  000.529  000.529: require('snacks')
095.175  000.555  000.026: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
096.459  001.036  001.036: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
096.729  000.103  000.103: sourcing /nix/store/bh1v3fad0bpvzi9z9aa8c0qcw3749zcb-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
097.400  003.897: loading packages
097.402  000.003: loading after plugins
097.434  000.031: inits 3
101.858  004.424: reading ShaDa
102.310  000.452: opening buffers
106.697  003.351  003.351: require('colorUtils')
108.080  000.298  000.298: require('staline.utils')
108.140  000.704  000.406: require('staline.config')
108.149  001.433  000.729: require('staline')
112.426  003.637  003.637: require('spider')
112.684  000.251  000.251: require('spider.config')
113.725  000.420  000.420: require('ts-error-translator')
115.701  001.013  001.013: require('vim.lsp.completion')
115.801  002.065  001.052: require('vim.lsp.handlers')
116.160  002.693: BufEnter autocommands
116.166  000.006: editing files in windows
118.533  000.120  000.120: require('auto-session.logger')
118.564  000.932  000.812: require('auto-session.lib')
118.828  000.261  000.261: require('auto-session.config')
119.300  000.467  000.467: require('auto-session.autocmds')
119.318  002.631  000.971: require('auto-session')
122.026  000.424  000.424: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
128.375  000.313  000.313: require('telescope._extensions')
128.384  004.065  003.752: require('telescope')
133.825  000.618  000.618: require('plenary.bit')
134.159  000.327  000.327: require('plenary.functional')
134.320  000.101  000.101: require('ffi')
134.479  002.857  001.812: require('plenary.path')
134.512  003.321  000.464: require('plenary.strings')
134.860  000.346  000.346: require('telescope.deprecated')
137.197  000.614  000.614: require('plenary.log')
137.232  000.914  000.300: require('telescope.log')
139.087  000.239  000.239: require('plenary.compat')
139.100  000.998  000.760: require('plenary.job')
139.449  000.345  000.345: require('telescope.state')
139.495  002.260  000.917: require('telescope.utils')
139.508  004.644  001.469: require('telescope.sorters')
141.793  011.483  003.172: require('telescope.config')
142.698  000.398  000.398: require('plenary.window.border')
142.903  000.201  000.201: require('plenary.window')
143.091  000.185  000.185: require('plenary.popup.utils')
143.097  001.297  000.513: require('plenary.popup')
143.451  000.353  000.353: require('telescope.pickers.scroller')
143.739  000.284  000.284: require('telescope.actions.state')
144.218  000.476  000.476: require('telescope.actions.utils')
145.213  000.445  000.445: require('telescope.actions.mt')
145.239  001.017  000.572: require('telescope.actions.set')
146.024  000.409  000.409: require('telescope.config.resolve')
146.030  000.788  000.379: require('telescope.pickers.entry_display')
146.309  000.277  000.277: require('telescope.from_entry')
146.521  018.130  002.156: require('telescope.actions')
149.129  000.537  000.537: require('fzf_lib')
149.139  001.043  000.506: require('telescope._extensions.fzf')
149.805  000.325  000.325: require('telescope-undo.actions')
149.812  000.665  000.340: require('telescope._extensions.undo')
150.338  000.131  000.131: require('auto-session.session-lens.actions')
150.343  000.272  000.141: require('auto-session.session-lens')
150.346  000.324  000.052: require('telescope._extensions.session-lens')
156.659  004.661  004.661: require('mini.starter')
167.050  000.021  000.021: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
167.912  000.849  000.849: require('mini.move')
169.902  001.785  001.785: require('mini.ai')
172.492  002.328  002.328: require('mini.surround')
173.581  000.641  000.641: require('mini.cursorword')
175.454  000.380  000.380: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
175.487  000.016  000.016: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
175.553  000.052  000.052: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
179.532  005.037  004.588: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
183.278  000.352  000.352: require('vim.provider')
183.758  000.471  000.471: require('vim.provider.python')
184.786  000.194  000.194: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
184.894  002.017  001.000: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
189.586  028.799: VimEnter autocommands
190.303  000.609  000.609: require('vim.termcap')
190.365  000.027  000.027: require('vim.text')
190.398  000.176: UIEnter autocommands
190.403  000.006: before starting main loop
191.980  001.577: first screen update
191.986  000.006: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.004  000.004: --- NVIM STARTING ---
000.209  000.205: event init
000.345  000.136: early init
000.437  000.092: locale set
000.539  000.102: init first window
001.594  001.055: inits 1
001.628  000.034: window checked
001.634  000.006: parsing arguments
002.698  000.104  000.104: require('vim.shared')
002.901  000.075  000.075: require('vim.inspect')
003.005  000.086  000.086: require('vim._options')
003.011  000.305  000.144: require('vim._editor')
003.015  000.454  000.045: require('vim._init_packages')
003.023  000.935: init lua interpreter
005.309  002.286: nvim_ui_attach
005.953  000.644: nvim_set_client_info
005.957  000.005: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.150  000.147: event init
000.242  000.093: early init
000.309  000.066: locale set
000.375  000.066: init first window
000.895  000.520: inits 1
000.919  000.024: window checked
000.922  000.004: parsing arguments
001.597  000.058  000.058: require('vim.shared')
001.741  000.054  000.054: require('vim.inspect')
001.802  000.048  000.048: require('vim._options')
001.805  000.203  000.101: require('vim._editor')
001.806  000.291  000.030: require('vim._init_packages')
001.812  000.598: init lua interpreter
001.891  000.079: expanding arguments
001.916  000.026: inits 2
002.262  000.346: init highlight
002.263  000.001: waiting for UI
002.378  000.115: done waiting for UI
002.382  000.004: clear screen
002.572  000.021  000.021: require('vim.keymap')
003.601  000.170  000.170: sourcing nvim_exec2()
003.841  001.456  001.266: require('vim._defaults')
003.844  000.006: init default mappings & autocommands
005.221  000.030  000.030: sourcing nvim_exec2() called at /nix/store/6qr83wns3glph4nv2w03bnvy7yqrqm2w-neovim-0.11.1-nvim/nvim-setup.lua:0
005.228  000.441  000.411: require('nixCats')
005.422  001.441  000.999: sourcing /nix/store/6qr83wns3glph4nv2w03bnvy7yqrqm2w-neovim-0.11.1-nvim/nvim-setup.lua
005.429  000.144: --cmd commands
008.885  000.091  000.091: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
009.395  000.051  000.051: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
009.865  000.161  000.161: require('nixCatsUtils')
012.821  000.008  000.008: require('vim.F')
012.915  002.244  002.236: require('vim.diagnostic')
012.984  000.015  000.015: sourcing nvim_exec2() called at VIMINIT:0
013.385  003.468  001.209: require('luaConf.keys')
014.052  000.663  000.663: require('luaConf.options')
015.219  000.352  000.352: require('lze.c.loader')
015.225  000.533  000.181: require('lze.h.colorscheme')
015.436  000.209  000.209: require('lze.h.cmd')
015.777  000.338  000.338: require('lze.h.event')
015.955  000.175  000.175: require('lze.h.ft')
016.345  000.387  000.387: require('lze.h.keys')
016.484  000.136  000.136: require('lze.h.dep_of')
016.603  000.116  000.116: require('lze.h.on_plugin')
016.744  000.138  000.138: require('lze.h.on_require')
016.747  002.160  000.127: require('lze.h')
016.771  002.494  000.333: require('lze.c.handler')
016.776  002.719  000.225: require('lze')
016.827  000.049  000.049: require('nixCatsUtils.lzUtils')
016.960  000.124  000.124: require('lzextras')
017.200  000.236  000.236: require('lzextras.src.lsp')
018.680  001.171  001.171: require('oil')
018.884  000.200  000.200: require('oil.ringbuf')
019.253  000.365  000.365: require('oil.config')
021.549  002.061  002.061: require('vim.filetype')
023.622  000.402  000.402: require('oil.log')
023.655  001.305  000.903: require('oil.fs')
025.114  000.181  000.181: require('oil.constants')
025.131  001.473  001.292: require('oil.util')
025.424  000.182  000.182: require('lze.c.parse')
025.535  000.104  000.104: require('luaConf.plugins.mini')
025.613  000.043  000.043: require('luaConf.plugins.auto-session')
025.840  000.219  000.219: require('luaConf.plugins.cokeline')
025.976  000.128  000.128: require('luaConf.plugins.reactive')
026.946  000.239  000.239: require('nui.object')
029.195  000.573  000.573: require('vim.version')
031.044  002.824  002.251: require('nui.utils')
031.063  003.034  000.210: require('nui.text')
031.071  003.224  000.189: require('nui.line')
031.168  003.877  000.653: require('nui.popup.border')
031.349  000.177  000.177: require('nui.utils.buf_storage')
031.721  000.369  000.369: require('nui.utils.autocmd')
031.949  000.224  000.224: require('nui.utils.keymap')
032.252  000.275  000.275: require('nui.layout.utils')
032.307  005.356  000.434: require('nui.popup')
032.972  000.289  000.289: require('nui.split.utils')
032.991  000.681  000.392: require('nui.split')
033.275  000.282  000.282: require('nui.layout.float')
033.575  000.297  000.297: require('nui.layout.split')
033.596  007.371  000.516: require('nui.layout')
033.639  007.656  000.285: require('luaConf.plugins.telescope')
033.752  000.102  000.102: require('luaConf.plugins.treesitter')
033.849  000.089  000.089: require('luaConf.plugins.completion')
034.015  000.052  000.052: require('luaConf.plugins.toggleterm')
034.080  000.057  000.057: require('luaConf.plugins.codecompanion')
034.209  000.049  000.049: require('luaConf.plugins.spider')
034.288  000.072  000.072: require('luaConf.plugins.staline')
034.417  000.048  000.048: require('luaConf.plugins.colorizer')
034.469  000.047  000.047: require('luaConf.plugins.render-markdown')
034.541  000.060  000.060: require('luaConf.plugins.image')
034.596  000.050  000.050: require('luaConf.plugins.img-clip')
038.053  000.041  000.041: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
038.392  021.179  005.605: require('luaConf.plugins')
053.055  000.122  000.122: require('vim.fs')
053.141  001.043  000.922: require('vim.lsp.log')
055.093  001.944  001.944: require('vim.lsp.protocol')
057.635  002.535  002.535: require('vim.lsp.util')
059.177  000.781  000.781: require('vim.lsp.sync')
059.187  001.544  000.763: require('vim.lsp._changetracking')
060.722  000.429  000.429: require('vim.lsp._transport')
060.828  001.636  001.207: require('vim.lsp.rpc')
060.982  011.172  002.469: require('vim.lsp')
061.177  012.320  001.148: require('lspconfig.util')
061.404  000.222  000.222: require('lspconfig.async')
061.408  013.164  000.622: require('lspconfig.configs')
061.417  013.655  000.492: require('lspconfig')
062.091  000.669  000.669: require('vim.iter')
066.134  027.738  013.414: require('luaConf.LSPs')
067.024  000.877  000.877: require('luaConf.debug')
067.988  000.042  000.042: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
071.980  003.612  003.612: require('conform')
072.106  005.074  001.420: require('luaConf.format')
072.109  062.241  000.114: require('luaConf')
072.115  004.143: sourcing vimrc file(s)
073.292  000.473  000.473: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
073.299  000.590  000.117: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
073.815  000.103  000.103: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
073.931  000.571  000.468: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
075.795  000.043  000.043: sourcing /nix/store/jsncpsm5a4w3z0rbh7dn72ndgpsr2rap-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
075.949  000.035  000.035: sourcing /nix/store/jsncpsm5a4w3z0rbh7dn72ndgpsr2rap-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
076.799  000.581  000.581: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
077.828  000.356  000.356: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
079.722  000.421  000.421: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
080.137  002.263  001.842: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
080.456  000.269  000.269: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
080.538  000.023  000.023: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
080.811  000.018  000.018: sourcing /nix/store/6qr83wns3glph4nv2w03bnvy7yqrqm2w-neovim-0.11.1-nvim/nvim-rplugin.vim
081.158  000.570  000.552: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
081.272  000.078  000.078: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
081.356  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
081.496  000.102  000.102: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
081.562  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
081.748  000.151  000.151: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
081.860  000.068  000.068: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
081.983  000.086  000.086: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
082.100  000.082  000.082: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
082.184  000.044  000.044: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
082.216  004.143: loading rtp plugins
083.227  000.040  000.040: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
086.813  000.139  000.139: require('eyeliner.config')
087.211  000.140  000.140: require('eyeliner.utils')
087.218  000.292  000.152: require('eyeliner.shared')
087.539  000.063  000.063: require('eyeliner.string')
087.544  000.232  000.169: require('eyeliner.liner')
087.547  000.327  000.095: require('eyeliner.always-on')
087.704  000.155  000.155: require('eyeliner.on-key')
087.708  000.886  000.112: require('eyeliner.main')
087.710  004.315  003.290: require('eyeliner')
087.806  004.444  000.129: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
088.379  000.136  000.136: require('img-clip.debug')
088.772  000.389  000.389: require('img-clip.config')
088.978  000.201  000.201: require('img-clip.util')
089.521  000.205  000.205: require('img-clip.clipboard')
089.946  000.231  000.231: require('img-clip.fs')
089.951  000.427  000.195: require('img-clip.markup')
089.956  000.865  000.233: require('img-clip.paste')
089.958  000.977  000.112: require('img-clip')
089.978  001.826  000.123: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
093.035  002.691  002.691: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
094.819  000.285  000.285: require('treesitter-context.config')
094.849  001.083  000.798: require('treesitter-context')
094.938  001.209  000.125: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
095.174  000.059  000.059: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
095.813  000.413  000.413: require('reactive.commands')
096.103  000.285  000.285: require('reactive.highlight')
096.869  000.330  000.330: require('reactive.util')
096.880  000.774  000.444: require('reactive.snapshot')
097.525  000.242  000.242: require('reactive.preset')
097.532  000.621  000.378: require('reactive.state')
097.737  002.368  000.276: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
098.351  000.457  000.457: require('snacks')
098.356  000.479  000.022: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
099.696  001.073  001.073: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
099.928  000.089  000.089: sourcing /nix/store/v9xmdxlymjm63wrqh41qcrsk0wrjppnv-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
100.559  004.067: loading packages
100.562  000.003: loading after plugins
100.595  000.033: inits 3
105.288  004.693: reading ShaDa
106.296  001.009: opening buffers
108.209  000.727  000.727: require('ts-error-translator')
110.245  000.878  000.878: require('vim.lsp.completion')
110.333  002.105  001.227: require('vim.lsp.handlers')
114.558  003.620  003.620: require('spider')
114.893  000.327  000.327: require('spider.config')
118.867  003.196  003.196: require('colorUtils')
120.632  000.379  000.379: require('staline.utils')
120.709  000.906  000.526: require('staline.config')
120.715  001.828  000.923: require('staline')
121.112  003.014: BufEnter autocommands
121.120  000.007: editing files in windows
123.222  000.127  000.127: require('auto-session.logger')
123.250  000.837  000.709: require('auto-session.lib')
123.488  000.236  000.236: require('auto-session.config')
123.963  000.471  000.471: require('auto-session.autocmds')
123.980  002.236  000.692: require('auto-session')
126.515  000.645  000.645: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
132.950  000.377  000.377: require('telescope._extensions')
132.972  003.976  003.599: require('telescope')
138.376  000.482  000.482: require('plenary.bit')
138.625  000.242  000.242: require('plenary.functional')
138.676  000.032  000.032: require('ffi')
138.749  001.896  001.141: require('plenary.path')
138.769  002.418  000.522: require('plenary.strings')
139.055  000.284  000.284: require('telescope.deprecated')
140.678  000.597  000.597: require('plenary.log')
140.791  000.973  000.376: require('telescope.log')
142.874  000.253  000.253: require('plenary.compat')
142.892  001.014  000.762: require('plenary.job')
143.217  000.321  000.321: require('telescope.state')
143.256  002.461  001.125: require('telescope.utils')
143.266  004.207  000.774: require('telescope.sorters')
148.962  013.574  006.664: require('telescope.config')
150.082  000.429  000.429: require('plenary.window.border')
150.273  000.187  000.187: require('plenary.window')
150.462  000.186  000.186: require('plenary.popup.utils')
150.471  001.495  000.693: require('plenary.popup')
150.855  000.381  000.381: require('telescope.pickers.scroller')
151.152  000.293  000.293: require('telescope.actions.state')
151.498  000.343  000.343: require('telescope.actions.utils')
152.413  000.440  000.440: require('telescope.actions.mt')
152.439  000.938  000.498: require('telescope.actions.set')
153.224  000.387  000.387: require('telescope.config.resolve')
153.229  000.787  000.400: require('telescope.pickers.entry_display')
153.502  000.271  000.271: require('telescope.from_entry')
153.715  020.729  002.648: require('telescope.actions')
156.068  000.507  000.507: require('fzf_lib')
156.084  001.020  000.513: require('telescope._extensions.fzf')
156.789  000.357  000.357: require('telescope-undo.actions')
156.797  000.699  000.341: require('telescope._extensions.undo')
157.277  000.110  000.110: require('auto-session.session-lens.actions')
157.282  000.264  000.155: require('auto-session.session-lens')
157.285  000.320  000.055: require('telescope._extensions.session-lens')
163.058  005.070  005.070: require('mini.starter')
172.945  000.016  000.016: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
173.610  000.655  000.655: require('mini.move')
175.901  002.075  002.075: require('mini.ai')
178.632  002.414  002.414: require('mini.surround')
179.918  000.500  000.500: require('mini.cursorword')
182.899  000.374  000.374: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
182.959  000.020  000.020: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
183.023  000.050  000.050: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
186.925  005.068  004.624: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
190.647  000.406  000.406: require('vim.provider')
191.166  000.510  000.510: require('vim.provider.python')
192.873  000.258  000.258: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
192.967  002.778  001.605: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
197.410  028.089: VimEnter autocommands
197.968  000.481  000.481: require('vim.termcap')
198.066  000.072  000.072: require('vim.text')
198.092  000.130: UIEnter autocommands
198.097  000.005: before starting main loop
199.253  001.156: first screen update
199.257  000.003: --- NVIM STARTED ---

--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.153  000.150: event init
000.254  000.101: early init
000.317  000.063: locale set
000.386  000.069: init first window
000.914  000.528: inits 1
000.929  000.015: window checked
000.931  000.003: parsing arguments
001.559  000.060  000.060: require('vim.shared')
001.688  000.049  000.049: require('vim.inspect')
001.748  000.049  000.049: require('vim._options')
001.752  000.190  000.092: require('vim._editor')
001.756  000.281  000.031: require('vim._init_packages')
001.764  000.552: init lua interpreter
003.592  001.827: nvim_ui_attach
003.979  000.387: nvim_set_client_info
003.981  000.003: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.003  000.003: --- NVIM STARTING ---
000.153  000.150: event init
000.240  000.088: early init
000.305  000.065: locale set
000.371  000.065: init first window
000.853  000.482: inits 1
000.873  000.020: window checked
000.875  000.003: parsing arguments
001.491  000.055  000.055: require('vim.shared')
001.615  000.048  000.048: require('vim.inspect')
001.674  000.048  000.048: require('vim._options')
001.676  000.181  000.086: require('vim._editor')
001.678  000.263  000.027: require('vim._init_packages')
001.683  000.544: init lua interpreter
001.780  000.097: expanding arguments
001.807  000.026: inits 2
002.157  000.350: init highlight
002.158  000.001: waiting for UI
002.262  000.104: done waiting for UI
002.265  000.003: clear screen
002.429  000.022  000.022: require('vim.keymap')
003.366  000.165  000.165: sourcing nvim_exec2()
003.535  001.266  001.079: require('vim._defaults')
003.537  000.005: init default mappings & autocommands
004.921  000.028  000.028: sourcing nvim_exec2() called at /nix/store/6syd1j18xn00yiwksargwcff2aajsxp3-neovim-0.11.1-nvim/nvim-setup.lua:0
004.930  000.552  000.525: require('nixCats')
005.129  001.499  000.946: sourcing /nix/store/6syd1j18xn00yiwksargwcff2aajsxp3-neovim-0.11.1-nvim/nvim-setup.lua
005.136  000.100: --cmd commands
007.952  000.050  000.050: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/ftplugin.vim
008.274  000.033  000.033: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/indent.vim
008.689  000.152  000.152: require('nixCatsUtils')
011.829  000.009  000.009: require('vim.F')
011.928  002.398  002.389: require('vim.diagnostic')
012.010  000.018  000.018: sourcing nvim_exec2() called at VIMINIT:0
012.414  003.680  001.264: require('luaConf.keys')
012.964  000.546  000.546: require('luaConf.options')
014.142  000.441  000.441: require('lze.c.loader')
014.147  000.599  000.158: require('lze.h.colorscheme')
014.427  000.278  000.278: require('lze.h.cmd')
014.790  000.360  000.360: require('lze.h.event')
014.934  000.141  000.141: require('lze.h.ft')
015.177  000.240  000.240: require('lze.h.keys')
015.304  000.124  000.124: require('lze.h.dep_of')
015.423  000.116  000.116: require('lze.h.on_plugin')
015.559  000.133  000.133: require('lze.h.on_require')
015.561  002.118  000.126: require('lze.h')
015.594  002.456  000.337: require('lze.c.handler')
015.598  002.630  000.175: require('lze')
015.646  000.046  000.046: require('nixCatsUtils.lzUtils')
015.812  000.154  000.154: require('lzextras')
016.067  000.252  000.252: require('lzextras.src.lsp')
016.573  000.179  000.179: require('lze.c.parse')
016.677  000.096  000.096: require('luaConf.plugins.mini')
016.724  000.038  000.038: require('luaConf.plugins.auto-session')
016.943  000.213  000.213: require('luaConf.plugins.cokeline')
017.062  000.113  000.113: require('luaConf.plugins.reactive')
018.118  000.251  000.251: require('nui.object')
020.586  000.559  000.559: require('vim.version')
022.843  003.269  002.709: require('nui.utils')
022.875  003.490  000.222: require('nui.text')
022.892  003.697  000.206: require('nui.line')
022.990  004.460  000.764: require('nui.popup.border')
023.247  000.251  000.251: require('nui.utils.buf_storage')
023.864  000.612  000.612: require('nui.utils.autocmd')
024.107  000.239  000.239: require('nui.utils.keymap')
024.394  000.284  000.284: require('nui.layout.utils')
024.470  006.346  000.499: require('nui.popup')
025.263  000.333  000.333: require('nui.split.utils')
025.299  000.826  000.492: require('nui.split')
025.691  000.389  000.389: require('nui.layout.float')
026.262  000.568  000.568: require('nui.layout.split')
026.297  008.992  000.611: require('nui.layout')
026.402  009.334  000.342: require('luaConf.plugins.telescope')
026.567  000.094  000.094: require('luaConf.plugins.treesitter')
026.658  000.083  000.083: require('luaConf.plugins.completion')
026.804  000.044  000.044: require('luaConf.plugins.toggleterm')
026.886  000.055  000.055: require('luaConf.plugins.codecompanion')
026.939  000.046  000.046: require('luaConf.plugins.spider')
027.004  000.060  000.060: require('luaConf.plugins.staline')
027.072  000.039  000.039: require('luaConf.plugins.colorizer')
027.118  000.041  000.041: require('luaConf.plugins.render-markdown')
027.173  000.050  000.050: require('luaConf.plugins.image')
027.288  000.048  000.048: require('luaConf.plugins.img-clip')
030.772  000.040  000.040: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
031.118  015.041  004.469: require('luaConf.plugins')
042.815  000.039  000.039: require('vim.fs')
042.904  000.577  000.538: require('vim.lsp.log')
044.070  001.161  001.161: require('vim.lsp.protocol')
046.620  002.544  002.544: require('vim.lsp.util')
047.814  000.569  000.569: require('vim.lsp.sync')
047.826  001.199  000.630: require('vim.lsp._changetracking')
049.086  000.426  000.426: require('vim.lsp._transport')
049.172  001.342  000.916: require('vim.lsp.rpc')
049.363  008.362  001.538: require('vim.lsp')
049.515  008.990  000.628: require('lspconfig.util')
049.768  000.249  000.249: require('lspconfig.async')
049.773  009.624  000.385: require('lspconfig.configs')
049.791  010.050  000.426: require('lspconfig')
050.785  000.989  000.989: require('vim.iter')
054.691  023.569  012.530: require('luaConf.LSPs')
055.354  000.655  000.655: require('luaConf.debug')
056.335  000.038  000.038: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
060.375  003.609  003.609: require('conform')
060.500  005.139  001.492: require('luaConf.format')
060.503  051.811  000.099: require('luaConf')
060.512  003.330: sourcing vimrc file(s)
061.599  000.438  000.438: sourcing nvim_exec2() called at /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua:0
061.604  000.541  000.103: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/filetype.lua
062.096  000.091  000.091: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/synload.vim
062.208  000.543  000.452: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/syntax/syntax.vim
064.016  000.043  000.043: sourcing /nix/store/bsz8wxk0lza2rzwj3q55khgdiqxsgipx-vim-pack-dir/pack/myNeovimPackages/opt/conform.nvim/plugin/conform.lua
064.231  000.048  000.048: sourcing /nix/store/bsz8wxk0lza2rzwj3q55khgdiqxsgipx-vim-pack-dir/pack/myNeovimPackages/opt/twilight.nvim/plugin/twilight.vim
065.205  000.552  000.552: sourcing /home/hedonicadapter/.nix-profile/share/nvim/site/plugin/fzf.vim
065.981  000.215  000.215: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/gzip.vim
067.322  000.206  000.206: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
067.503  001.485  001.280: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchit.vim
067.683  000.145  000.145: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/matchparen.vim
069.160  000.312  000.312: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/pack/dist/opt/netrw/plugin/netrwPlugin.vim
069.342  001.622  001.310: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/netrwPlugin.vim
069.509  000.009  000.009: sourcing /nix/store/6syd1j18xn00yiwksargwcff2aajsxp3-neovim-0.11.1-nvim/nvim-rplugin.vim
069.707  000.316  000.307: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/rplugin.vim
069.835  000.065  000.065: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/shada.vim
069.935  000.024  000.024: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/spellfile.vim
070.077  000.100  000.100: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tarPlugin.vim
070.149  000.020  000.020: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tutor.vim
070.340  000.152  000.152: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/zipPlugin.vim
070.462  000.069  000.069: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/editorconfig.lua
070.615  000.093  000.093: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/man.lua
070.748  000.088  000.088: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/osc52.lua
070.847  000.055  000.055: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/plugin/tohtml.lua
070.879  004.189: loading rtp plugins
071.959  000.039  000.039: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/dropbar.nvim/plugin/dropbar.lua
075.457  000.087  000.087: require('eyeliner.config')
075.857  000.152  000.152: require('eyeliner.utils')
075.863  000.308  000.156: require('eyeliner.shared')
076.182  000.061  000.061: require('eyeliner.string')
076.187  000.226  000.165: require('eyeliner.liner')
076.190  000.325  000.099: require('eyeliner.always-on')
076.349  000.157  000.157: require('eyeliner.on-key')
076.353  000.891  000.101: require('eyeliner.main')
076.355  004.203  003.225: require('eyeliner')
076.504  004.393  000.191: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/eyeliner.nvim/plugin/init.lua
077.039  000.129  000.129: require('img-clip.debug')
077.341  000.298  000.298: require('img-clip.config')
077.534  000.190  000.190: require('img-clip.util')
078.270  000.309  000.309: require('img-clip.clipboard')
078.801  000.281  000.281: require('img-clip.fs')
078.806  000.533  000.252: require('img-clip.markup')
078.811  001.167  000.325: require('img-clip.paste')
078.814  001.277  000.110: require('img-clip')
078.836  002.013  000.119: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/img-clip.nvim/plugin/img-clip.lua
081.313  002.111  002.111: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/nvim-lspconfig/plugin/lspconfig.lua
082.356  000.218  000.218: require('treesitter-context.config')
082.381  000.783  000.565: require('treesitter-context')
082.485  000.907  000.124: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/nvim-treesitter-context/plugin/treesitter-context.lua
082.704  000.041  000.041: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/plenary.nvim/plugin/plenary.vim
083.325  000.394  000.394: require('reactive.commands')
083.606  000.276  000.276: require('reactive.highlight')
084.359  000.306  000.306: require('reactive.util')
084.369  000.760  000.454: require('reactive.snapshot')
085.025  000.261  000.261: require('reactive.preset')
085.034  000.634  000.373: require('reactive.state')
085.216  002.315  000.251: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/reactive-nvim/plugin/reactive.lua
085.848  000.447  000.447: require('snacks')
085.852  000.469  000.022: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/snacks.nvim/plugin/snacks.lua
087.109  001.016  001.016: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/vim-wakatime/plugin/wakatime.vim
087.373  000.111  000.111: sourcing /nix/store/q5907d8zd97nyr8knlbfy5zhc9zf5zqg-packdir-start/pack/myNeovimPackages/start/zoxide.vim/plugin/zoxide.vim
088.019  003.724: loading packages
088.022  000.003: loading after plugins
088.053  000.031: inits 3
092.636  004.583: reading ShaDa
093.291  000.655: opening buffers
097.356  003.136  003.136: require('colorUtils')
098.614  000.267  000.267: require('staline.utils')
098.661  000.643  000.375: require('staline.config')
098.665  001.295  000.652: require('staline')
103.008  003.659  003.659: require('spider')
103.265  000.250  000.250: require('spider.config')
104.242  000.386  000.386: require('ts-error-translator')
106.001  000.906  000.906: require('vim.lsp.completion')
106.081  001.829  000.923: require('vim.lsp.handlers')
106.394  002.547: BufEnter autocommands
106.398  000.004: editing files in windows
108.332  001.484  001.484: require('oil')
108.547  000.209  000.209: require('oil.ringbuf')
109.002  000.451  000.451: require('oil.config')
111.945  002.639  002.639: require('vim.filetype')
113.599  000.352  000.352: require('oil.log')
113.627  000.944  000.593: require('oil.fs')
115.426  000.173  000.173: require('oil.constants')
115.482  001.852  001.678: require('oil.util')
118.423  000.091  000.091: require('auto-session.logger')
118.453  000.653  000.562: require('auto-session.lib')
118.648  000.192  000.192: require('auto-session.config')
118.989  000.338  000.338: require('auto-session.autocmds')
119.002  002.332  001.148: require('auto-session')
121.293  000.375  000.375: sourcing /nix/store/7lnn2q9qsgm1yhvc3y6xcd34jng49pl6-packdir-opt/pack/myNeovimPackages/opt/telescope.nvim/plugin/telescope.lua
127.544  000.321  000.321: require('telescope._extensions')
127.554  003.975  003.654: require('telescope')
131.429  000.434  000.434: require('plenary.bit')
131.669  000.232  000.232: require('plenary.functional')
131.705  000.021  000.021: require('ffi')
131.730  001.705  001.018: require('plenary.path')
131.772  002.122  000.417: require('plenary.strings')
132.056  000.281  000.281: require('telescope.deprecated')
133.408  000.441  000.441: require('plenary.log')
133.435  000.720  000.279: require('telescope.log')
135.229  000.214  000.214: require('plenary.compat')
135.244  000.898  000.685: require('plenary.job')
135.539  000.292  000.292: require('telescope.state')
135.567  002.129  000.939: require('telescope.utils')
135.591  003.533  000.684: require('telescope.sorters')
137.751  008.697  002.761: require('telescope.config')
138.743  000.421  000.421: require('plenary.window.border')
138.937  000.189  000.189: require('plenary.window')
139.130  000.190  000.190: require('plenary.popup.utils')
139.135  001.373  000.573: require('plenary.popup')
139.495  000.357  000.357: require('telescope.pickers.scroller')
139.800  000.302  000.302: require('telescope.actions.state')
140.196  000.392  000.392: require('telescope.actions.utils')
141.130  000.415  000.415: require('telescope.actions.mt')
141.154  000.955  000.539: require('telescope.actions.set')
141.958  000.429  000.429: require('telescope.config.resolve')
141.963  000.806  000.377: require('telescope.pickers.entry_display')
142.282  000.317  000.317: require('telescope.from_entry')
142.557  014.997  001.799: require('telescope.actions')
145.162  000.516  000.516: require('fzf_lib')
145.174  001.097  000.581: require('telescope._extensions.fzf')
145.871  000.362  000.362: require('telescope-undo.actions')
145.877  000.695  000.333: require('telescope._extensions.undo')
146.182  000.103  000.103: require('auto-session.session-lens.actions')
146.187  000.240  000.137: require('auto-session.session-lens')
146.189  000.287  000.047: require('telescope._extensions.session-lens')
151.751  004.809  004.809: require('mini.starter')
163.100  000.017  000.017: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
163.799  000.689  000.689: require('mini.move')
165.780  001.801  001.801: require('mini.ai')
167.832  001.871  001.871: require('mini.surround')
168.604  000.488  000.488: require('mini.cursorword')
170.943  000.344  000.344: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/clipboard.vim
170.974  000.013  000.013: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
171.045  000.056  000.056: sourcing nvim_exec2() called at nvim_exec2() called at VimEnter Autocommands for "*":0:1
175.142  005.041  004.628: sourcing nvim_exec2() called at VimEnter Autocommands for "*":0
178.721  000.356  000.356: require('vim.provider')
179.169  000.440  000.440: require('vim.provider.python')
180.159  000.177  000.177: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/remote/host.vim
180.246  001.930  000.957: sourcing /nix/store/10niqvrkxcxv7m9svqg9sw03pq2f9c79-neovim-unwrapped-0.11.1/share/nvim/runtime/autoload/provider/python3.vim
184.128  029.746: VimEnter autocommands
184.624  000.427  000.427: require('vim.termcap')
184.696  000.034  000.034: require('vim.text')
184.734  000.145: UIEnter autocommands
184.738  000.004: before starting main loop
186.009  001.271: first screen update
186.013  000.003: --- NVIM STARTED ---

