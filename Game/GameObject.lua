GameObject = {}

function GameObject:new(xPos, yPos)
	local tempTransform = {
		position = {
			x = xPos, 
			y = yPos
		},

		scale = {
			x = 1,
			y = 1
		}
	}

	local newObject = {
		transform = tempTransform
	}


	local newObjectMt = {}

	newObjectMt.__index = GameObject.Index
	newObjectMt.__newindex = GameObject.AddComponent

	setmetatable(newObject, newObjectMt)
	return newObject
end

function GameObject:AddComponent(name, component)
	assert(type(component) == "table", "trying to add " .. name .. " as a component but it's a " .. type(component) .. " components need to be tables")
	self.components["name"] = component
	component.parent = self
end

function GameObject:Index(name)
	return GameObject[name] or self.components[name]
end

function GameObject:Draw()
	if self.drawable == nil then
		return
	end
	
	love.graphics.draw(self.drawable, self.transform.position.x, self.transform.position.y, self.transform.rotation, self.transform.scale.x, self.transform.scale.y)
end

function GameObject:Update(deltaTime)
	for name, component in pairs(self.components) do
		if component.Update ~= nil then
			component.Update(deltaTime)
		end
	end
end

local gameObjectMetaTable = {}

function gameObjectMetaTable.__newindex()
	error("Trying to assign to GameOject which is an object prototype and is read only")
end

setmetatable(GameObject, gameObjectMetaTable)
return GameObject