GameObject = {}

function GameObject:new(xPos, yPos)
	local newObject = {
		position = {
			x = xPos, 
			y = yPos
		}
	}
	local newObjectMt = {}

	newObjectMt.__index = GameObject

	setmetatable(newObject, newObjectMt)
	return newObject
end

function GameObject:Draw()
	if self.drawable == nil then
		return
	end
	
	if self.quad == nil then
		love.graphics.draw(self.drawable, self.position.x, self.position.y)
	else
		love.graphics.draw(self.drawable, self.quad, self.position.x, self.position.y)
	end
end

function GameObject:Update(deltaTimer)
	
end

local gameObjectMetaTable = {}

function gameObjectMetaTable.__newindex()
	error("Trying to assign to GameOject which is an object prototype and is read only")
end

setmetatable(GameObject, gameObjectMetaTable)
return GameObject