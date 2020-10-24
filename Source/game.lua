require("Source.GameObject")
require("Source.Components.Sprite")
require("Source.Components.Camera")
require("Source.Components.WasdController")

require("Source.Util.RenderQueue")

require("Source.Debug.DebugText")

Game = {
	objects = RenderQueue:New(),
	window = {}
}

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

setmetatable(Game.window, window_mt)

function Game:Load(args)

	local objects = {}

	local tempObject = GameObject:New(0, 0)
	tempObject.sprite = SpriteFactory:NewImageSprite("Assets/enviroment/rpgTile029.png")
	table.insert(objects, tempObject)

	local cameraObject = GameObject:New(0, 0)
	cameraObject.camera = Camera:New(true, self.window.width, self.window.height)
	self.currentCamera = cameraObject.camera
	cameraObject.controller = WasdController:New(50)
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
	love.graphics.push()
	self.currentCamera:SetAsCurrent()

	for index, object in ipairs(self.objects) do
		object:Draw()
	end

	self.currentCamera:Reset()
	love.graphics.pop()
end
