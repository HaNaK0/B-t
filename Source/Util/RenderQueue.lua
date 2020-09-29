RenderQueue = {}

function RenderQueue:New()
    local newQueue = {}

    setmetatable(newQueue, RenderQueue.__metaTable)
    return newQueue
end

local function Compare(objectA, objectB)
    return objectA.transform.z < objectB.transform.z
end

function RenderQueue:AddObject(object)
    table.insert(self, object)
    table.sort(self, Compare)
end

function RenderQueue:AddObjects(listOfObjects)
    for i, object in ipairs(listOfObjects) do
        table.insert(self, object)
    end

    table.sort(self, Compare)
end

RenderQueue.__metaTable = {
    __index = RenderQueue,
    __name = "RenderQueue",
}

return RenderQueue