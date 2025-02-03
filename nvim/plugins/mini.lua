local starter = require("mini.starter")

local getFilesInDirectory = function(directory)
	local files = {}
	for dir in io.popen("ls -pa " .. directory .. " | grep -v /"):lines() do
		local filename_withoutpercentage = string.gsub(dir, "%%", "/")
		local filename = string.gsub(filename_withoutpercentage, "%.vim", "")
		local fileObject = { name = filename }

		table.insert(files, fileObject)
	end
	return files
end

local function decodeURLPath(path)
	return path:gsub("/2F", "/")
end

local my_items = function()
	local sessions = getFilesInDirectory("~/.local/share/nvim/sessions")
	local limited_sessions = {}
	local max_name_length = 45
	for i, fileObject in ipairs(sessions) do
		if i > 5 then
			break
		end
		local decodedUrl = decodeURLPath(fileObject.name)
		fileObject.action = "silent SessionRestore " .. decodedUrl
		local truncated_name = decodedUrl
		if #truncated_name > max_name_length then
			truncated_name = truncated_name:sub(1, max_name_length - 3) .. "..."
		end
		fileObject.name = i .. " " .. truncated_name
		fileObject.section = "Sessions"
		table.insert(limited_sessions, fileObject)
	end
	return limited_sessions
end

starter.setup({
	header = [[






	            ⠀⢘⡆⢇⠀⢀⠀⠀⠀⠀⢰⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣠⣴⣛⣯⣿⢿⣿⣿⠤⣼⣦⣤⣄⠀⣸⡄⠀⢸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠀⣰⡖⢺⡇⢠⣿⣏⢹⣷⣺⣿⣿⢀⣯⣿⣹⠉⣽⣿⣷⢤⣿⣿⣞⣀⣠⠆⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣧⣾⡿⣿⢿⣷⣜⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣞⣿⣿⣷⡟⠷⣤⣀⢀⣼⠃⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢠⠀⢣⣤⣶⠻⣧⣤⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣹⣿⣁⣼⠟⠑⣤⠞⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢠⠀⢣⣠⡟⣿⣷⣾⣿⣿⣿⠿⢛⣿⣿⣿⠿⠟⠛⠋⠙⠛⠛⠻⢿⣿⣿⣿⣿⣿⣿⣿⣥⣶⣿⣿⣦⢞⡟⣲⠇⢠⠆⢰⠀
⠀⠀⠀⠀⠘⣦⠞⣩⣿⣿⣿⣿⡿⠟⠁⣰⣿⡿⠋⠁⠀⢀⣠⣤⣤⣤⣀⡀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣷⣶⠟⣱⡯⠀
⠀⠀⠀⠈⣰⣻⣿⣿⣿⣿⣿⡿⠁⠀⢰⣿⡟⠀⠀⢀⣴⣿⠿⠛⠛⠻⢿⣿⣶⡀⠀⠀⠹⣿⣯⡿⣿⣿⣿⣿⣿⣯⣟⣿⣿⡶⣋⣴⠋
⠀⢀⡀⣰⣿⣿⣷⠿⠟⢸⣿⡇⠀⠀⣾⣿⡃⠀⠀⢸⣿⣇⣀⣤⣄⠀⠀⠙⢿⣿⡄⠀⠀⢹⣿⡍⣆⠹⢿⣿⣿⣿⣿⢿⣿⡿⠛⠁⠀
⠀⠀⣹⣿⣿⣿⢣⣦⠀⢸⣿⣇⠀⠀⠸⣿⣧⡀⠀⠈⠻⠿⠛⢻⣿⣧⠀⠀⠘⣿⣧⠀⠀⢸⣿⣧⠇⠀⠀⣺⡿⣿⣿⣿⣷⣶⣾⠟⠁
⢀⣴⣿⣿⡞⢡⣇⢧⠀⠀⢿⣿⡄⠀⠀⠙⣿⣷⣤⣀⣀⣀⣤⣾⣿⠃⠀⠀⣸⣿⡇⠀⠀⣸⣿⠏⠀⠀⣰⣿⣷⣮⣿⠙⣯⡯⠀⠀⠀
⠙⠛⢡⡟⢹⡀⢻⡛⣄⠀⠈⢻⣿⣦⡀⠀⠀⠙⠛⠿⠿⠿⠟⠋⠁⠀⢀⣴⣿⡟⠁⠀⣴⡿⠁⠀⢀⣰⣿⣯⣿⢻⡛⣿⡟⠀⠀⠀⠀
⠀⠀⡞⢧⣘⣳⠤⣏⡙⠳⠤⢄⣙⣿⣿⣶⣤⣄⣀⣀⣀⣀⣀⣀⣤⣶⣿⡿⠋⢀⣠⠞⠉⠀⣠⣶⣿⡿⢿⠿⣷⣰⠃⣿⠀⠀⠀⠀⠀
⠀⠀⠘⠲⣤⣤⣶⠃⢉⡷⠶⣤⣤⣉⣉⡛⠛⠿⠿⡿⢿⣿⠿⠿⠛⠋⠁⠀⠒⢋⣤⣤⡶⣾⣿⢿⡗⣍⠈⠇⢹⠇⣸⠇⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢠⣤⣬⣟⡻⢄⠀⡴⠋⢉⢟⡿⢿⣿⡷⢷⣶⡿⢷⣼⣾⣶⡾⢷⢾⣿⠙⣿⡓⣄⢻⣎⠛⠈⠁⣠⠊⣰⠏⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠺⠋⠙⠿⣯⡓⢾⣃⠀⠸⡏⠀⠸⠱⠁⠀⢻⠃⢸⡾⣞⡆⢻⠀⢿⣟⣷⠘⠗⠈⢻⠟⠀⣠⠞⠁⡴⠋⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠦⠈⠑⠲⢅⣀⠀⠀⠀⠀⠸⠀⠹⡇⠛⠃⠀⠀⠈⠉⢻⠀⠀⠀⠠⠗⠊⠀⠀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠒⠢⠄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
	    Isn't everything amazing?]],
	items = { my_items(), starter.sections.recent_files(5, false, false) },
	footer = " ",
	silent = true,
})

vim.cmd("autocmd User MiniStarterOpened set showtabline=0")

require("mini.move").setup({
	mappings = {
		down = "J",
		up = "K",
	},
})
require("mini.ai").setup()
require("mini.surround").setup()
require("mini.clue").setup({ window = { delay = 250 } })
require("mini.cursorword").setup()
require("mini.files").setup({
	options = {
		permanent_delete = false,
		use_as_default_explorer = true,
	},
	windows = {
		previews = true,
	},
})

local map = require("mini.map")
map.setup({
	integrations = {
		map.gen_integration.builtin_search(),
		map.gen_integration.gitsigns(),
		map.gen_integration.diagnostic(),
	},
})
