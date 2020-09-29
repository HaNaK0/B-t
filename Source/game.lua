require("Source.GameObject")
require("Source.Components.Sprite")
require("Source.Components.Camera")
require("Source.Util.RenderQueue")

Game = {
	objects = RenderQueue:New()
}

function Game:Load(args)
	local objects = {}

	local tempObject = GameObject:new(0, 0)
	tempObject.sprite = SpriteFactory:NewImageSprite("Assets/enviroment/rpgTile029.png")
	table.insert(objects, tempObject)

	local cameraObject = GameObject:new(0, 0)
	cameraObject.camera = Camera:New(true, 0, 0)
	self.currentCamera = cameraObject.camera
	table.insert(objects, cameraObject)

	Game.objects:AddObjects(objects)
end

function Game:Update(deltaTime)
	for index, object in ipairs(self.objects) do
		object:Update(deltaTime)
	end
end

function Game:PostUpdate()
	for index, object in ipairs(self.objects) do
		object:PostUpdate()
	end
end

function Game:Draw()
	self.currentCamera:SetAsCurrent()

	for index, object in ipairs(self.objects) do
		object:Draw()
	end
end