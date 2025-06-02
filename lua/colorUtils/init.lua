local M = {}

function M.isOpaque(color)
	return #color == 7 and color:sub(1, 1) == "#"
end

function M.hexToRGB(hex)
	local r = tonumber(hex:sub(2, 3), 16)
	local g = tonumber(hex:sub(4, 5), 16)
	local b = tonumber(hex:sub(6, 7), 16)
	return { r, g, b }
end

function M.rgbToHex(r, g, b)
	return string.format("#%02x%02x%02x", r, g, b)
end

function M.darkenValue(c, percentage)
	local darkenedValue = c * (1 - percentage)
	if darkenedValue < 0 then
		return 0
	elseif darkenedValue > 255 then
		return 255
	else
		return math.floor(darkenedValue)
	end
end

function M.darkenColorIfOpaque(color, percentage)
	if M.isOpaque(color) then
		local rgb = M.hexToRGB(color)
		local darkenedRgb = {
			r = M.darkenValue(rgb[1], percentage),
			g = M.darkenValue(rgb[2], percentage),
			b = M.darkenValue(rgb[3], percentage),
		}
		return M.rgbToHex(darkenedRgb.r, darkenedRgb.g, darkenedRgb.b)
	else
		return color
	end
end

return M
