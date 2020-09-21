require("Game.GameObject")

Camera = {
	position = {
		x = 0,
		y = 0,
	},

	target = {
		width = Game.screenWidth,
		height = Game.screenHeight,
		x = 0,
		y = 0,
	}
}

function Camera:new()
	love.graphics.newCanvas()
end

function Camera:draw()
	
end

local cameraObjectMetaTable = {}

function cameraObjectMetaTable.__newindex()
	error("Trying to assign to GameOject which is an object prototype and is read only")
end

setmetatable(Camera, cameraObjectMetaTable)
