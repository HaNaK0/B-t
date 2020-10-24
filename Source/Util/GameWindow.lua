local GameWindow = {}
local window_mt = {}

function window_mt:__index(key)
	if key == "width" then
		local width, heigth, flags = love.window.getMode()
		Debug.DebugText:AddDebugText("Window Get width", width)
		return width
	elseif key == "height" then
		local width, heigth, flags = love.window.getMode()
		Debug.DebugText:AddDebugText("Window Get height", heigth)
		return heigth
	elseif key == "fullscreen" then
		local width, heigth, flags = love.window.getMode()
		Debug.DebugText:AddDebugText("Window Get fullscreen", flags.fullscreen)
		return flags.fullscreen
	end
end

setmetatable(GameWindow, window_mt)
return GameWindow