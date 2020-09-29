SpriteFactory = {}

--Setup meta table
SpriteFactory.SpriteMetaTable = {}
SpriteFactory.SpriteMetaTable.__index = {}

local spriteIndex = SpriteFactory.SpriteMetaTable.__index
function spriteIndex:Draw()
    local parentTranfrom = self.parent.transform

    love.graphics.draw(self.drawable, parentTranfrom.position.x, parentTranfrom.position.y, parentTranfrom.rotation, parentTranfrom.scale.x, parentTranfrom.scale.y)
end
--

function SpriteFactory:NewImageSprite(imagePath)
    local newSprite = {}
    newSprite.drawable = love.graphics.newImage(imagePath)

    setmetatable(newSprite, self.SpriteMetaTable)
    return newSprite
end

return SpriteFactory