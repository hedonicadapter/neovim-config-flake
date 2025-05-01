require("luaConf.opts_and_keys")

-- NOTE: register an extra lze handler with the spec_field 'for_cat'
-- that makes enabling an lze spec for a category slightly nicer
require("lze").register_handlers(require("nixCatsUtils.lzUtils").for_cat)

-- NOTE: Register another one from lzextras. This one makes it so that
-- you can set up lsps within lze specs,
-- and trigger lspconfig setup hooks only on the correct filetypes
require("lze").register_handlers(require("lzextras").lsp)
-- demonstrated in ./LSPs/init.lua

require("luaConf.plugins")

require("luaConf.LSPs")

if nixCats("debug") then
	require("luaConf.debug")
end

if nixCats("format") then
	require("luaConf.format")
end
