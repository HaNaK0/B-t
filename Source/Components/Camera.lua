Camera = {}

function Camera:New(targetingScreen, width, height)
	local newCamera = {
		transform = love.math.newTransform(),
		scale = {
			x = 1,
			u = 1
		}
	}

	if targetingScreen == false then
		newCamera.canvas = love.graphics.newCanvas(width, height)
	end

	setmetatable(newCamera, Camera.__metaTable)
	return newCamera
end

function Camera:SetAsCurrent()
	love.graphics.setCanvas(self.canvas)
	love.graphics.applyTransform(self.transform)
end

function Camera:PostUpdate()
	local parentTransform = self.parent.transform

	self.transform:setTransformation( parentTransform.x, parentTransform.y, parentTransform.rotation, self.scale.x, self.scale.y, 0, 0, 0, 0)
end

Camera.__metaTable = {
	__index = Camera,
	__name = "Camera"
}

return Camera