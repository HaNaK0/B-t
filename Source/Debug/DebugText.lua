require("Source.Debug.Debug")
Debug.DebugText = {
    strings = {},
    stayTime = 10,
    position = {
        x = 0,
        y = 0
    }
}
local debugText = Debug.DebugText

function debugText:Load()
    self.font = love.graphics.newFont()
end

function debugText:AddDebugText(name, string)
    local actualString = name .. ":" .. string

    if self.strings[name] == nil then
        local timedText = {
            text = love.graphics.newText(self.font, actualString),
            timeStamp = love.timer.getTime()
        }

        self.strings[name] = timedText
    else
        self.strings[name].text:set(actualString)
        self.strings[name].timeStamp = love.timer.getTime()
    end
end

function debugText:Update()
    local stringsToRemove = {}
    for name, string in pairs(self.strings) do
        if love.timer.getTime() - string.timeStamp > self.stayTime then
            table.insert(stringsToRemove, name)
        end
    end

    for i, value in ipairs(stringsToRemove) do
        self.strings[value] = nil
    end
end

function debugText:Draw()
    local i = 0
    for name, string in pairs(self.strings) do
       love.graphics.draw(string.text, self.position.x, self.position.y + string.text:getFont():getHeight() * i)
       i = i + 1
    end
end

return debugText