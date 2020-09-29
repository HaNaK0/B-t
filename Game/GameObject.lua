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
		},

		rotation = 0,
		z = 0
	}

	local newObject = {
		transform = tempTransform,
		components = {}
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
	return rawget(GameObject, name) or rawget(self, name) or self.components[name]
end

function GameObject:Draw()
	for name,component in pairs(self.components) do
		if component.Draw ~= nil then
			component:Draw()
		end
	end
end

function GameObject:Update(deltaTime)
	for name, component in pairs(self.components) do
		if component.Update ~= nil then
			component:Update(deltaTime)
		end
	end
end

local gameObjectMetaTable = {}

function gameObjectMetaTable.__newindex()
	error("Trying to assign to GameOject which is an object prototype and is read only")
end

setmetatable(GameObject, gameObjectMetaTable)
return GameObject