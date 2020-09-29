require("Game.GameObject")
require("Game.Components.Sprite")

Game = {}

Game.objects = {}

function Game:Load(args)
	local tempObject = GameObject:new(300, 500)

	tempObject.sprite = SpriteFactory:NewImageSprite("Game/Assets/enviroment/rpgTile029.png")

	Game.objects["test"] = tempObject
end

function Game:Update(deltaTime)
	for name, object in pairs(self.objects) do
		object:Update(deltaTime)
	end
end

function Game:Draw()
	for name, object in pairs(self.objects) do
		object:Draw()
	end
end
