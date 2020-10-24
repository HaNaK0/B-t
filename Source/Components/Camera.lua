require("Source.Debug.DebugText")
Camera = {}

function Camera:New(targetingScreen, width, height)
	Debug.DebugText:AddDebugText("New Camera", "Width(" .. tostring(width) .. ") Height(" .. tostring(height) .. ")")
	local newCamera = {
		scale = {
			x = 1,
			y = 1
		},
		view = {
			width = width,
			height = height
		}
	}

	if targetingScreen == false then
		newCamera.canvas = love.graphics.newCanvas(width, height)
	end

	setmetatable(newCamera, Camera.__metaTable)
	return newCamera
end

function Camera:SetAsCurrent()
	local transform = self.parent.transform

	love.graphics.setCanvas(self.canvas)
	love.graphics.rotate(transform.rotation)
	love.graphics.scale(self.scale.x, self.scale.y)
	love.graphics.translate((transform.position.x + self.view.width / 2) * -1, (transform.position.y + self.view.width / 2) * -1)
	love.graphics.push()
end

function Camera:Reset()
	love.graphics.pop()
end

Camera.__metaTable = {
	__index = Camera,
	__name = "Camera"
}

return Camera