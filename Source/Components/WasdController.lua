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
    end
    if love.keyboard.isDown("d") then
        parentTransform.position.x = parentTransform.position.x + self.speed * deltaTime
    end

    if love.keyboard.isDown("w") then
        parentTransform.position.y = parentTransform.position.y - self.speed * deltaTime
    end
    if love.keyboard.isDown("s") then
        parentTransform.position.y = parentTransform.position.y + self.speed * deltaTime
        print(parentTransform.position.y)
    end

end

WasdController.__metaTable = {
    __index = WasdController,
    __name = "WasdController"
}