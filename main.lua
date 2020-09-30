require("Source.game")
require("Source.Debug.DebugText")

function love.load(args)
	local loadStart = love.timer.getTime()
	Debug.DebugText:Load()
	Game:Load(args)

	print("Load Complete, took " .. love.timer.getTime() - loadStart .. " seconds")
end

function love.update(deltaTime)
	-- FPS
	Debug.DebugText:AddDebugText("FPS", love.timer.getFPS())

	Game:Update(deltaTime)
	Game:PostUpdate()

	Debug.DebugText:Update()
end

function love.draw()
	Game:Draw()

	Debug.DebugText:Draw()
end