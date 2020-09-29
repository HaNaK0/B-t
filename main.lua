require("Source.game")

function love.load(args)
	local loadStart = love.timer.getTime()
	Game:Load(args)

	print("Load Complete, took " .. love.timer.getTime() - loadStart .. " seconds")
end

function love.update(deltaTime)
	Game:Update(deltaTime)
	Game:PostUpdate()
end

function love.draw()
	Game:Draw()
end