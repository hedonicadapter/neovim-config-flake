local vim_fn = vim.fn

_G.OS = (vim_fn.has("win32") == 0) and vim_fn.system("uname"):gsub("[\r\n]", "") or "Windows"

_G.getFilesInDirectory = function(directory)
	local files = {}
	for dir in io.popen("ls -pa " .. directory .. " | grep -v /"):lines() do
		local filename_withoutpercentage = string.gsub(dir, "%%", "/")
		local filename = string.gsub(filename_withoutpercentage, "%.vim", "")
		local fileObject = { name = filename }

		table.insert(files, fileObject)
	end
	return files
end
