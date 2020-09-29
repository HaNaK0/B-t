Camera = {}

function Camera:New(targetingScreen, width, height)
	local newCamera = {}
	if targetingScreen == false then
		newCamera.canvas = love.graphics.newCanvas(width, height)
	end

	
end