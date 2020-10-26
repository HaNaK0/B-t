WasdController = {}

function WasdController:New(speed)
    local controller = {
        speed = speed
    }

    setmetatable(controller, WasdController.__metaTable)

    return controller
end

function WasdController:Update(deltaTime)
    local parentTransform = self.parent.transform

    if love.keyboard.isDown("a") then
		parentTransform.position.x = parentTransform.position.x - self.speed * deltaTime
		Debug.DebugText:AddDebugText("Key Press", "A")
    end
    if love.keyboard.isDown("d") then
		parentTransform.position.x = parentTransform.position.x + self.speed * deltaTime
		Debug.DebugText:AddDebugText("Key Press", "D")
    end

    if love.keyboard.isDown("w") then
		parentTransform.position.y = parentTransform.position.y - self.speed * deltaTime
		Debug.DebugText:AddDebugText("Key Press", "W")
    end
    if love.keyboard.isDown("s") then
		parentTransform.position.y = parentTransform.position.y + self.speed * deltaTime
		Debug.DebugText:AddDebugText("Key Press", "S")
	end
	
	if love.keyboard.isDown("q") then
		parentTransform.rotation = parentTransform.rotation - (0.5) * deltaTime
		Debug.DebugText:AddDebugText("Key Press", "Q")
	end
	if love.keyboard.isDown("e") then
		parentTransform.rotation = parentTransform.rotation + (0.5) * deltaTime
		Debug.DebugText:AddDebugText("Key Press", "E")
	end

end

WasdController.__metaTable = {
    __index = WasdController,
    __name = "WasdController"
}