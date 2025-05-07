local vim_fn = vim.fn

_G.OS = (vim_fn.has("win32") == 0) and vim_fn.system("uname"):gsub("[\r\n]", "") or "Windows"
