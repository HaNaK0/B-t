-- Lifo stack
Stack = {}

function Stack:New()
    local newStack = {
		top = 0
	}

    setmetatable(newStack, Stack.__metaTable)
    return newStack
end

function Stack:IsEmpty()
	return self.top < 1
end

function Stack:Push(value)
	self.top = self.top + 1
	self[self.top] = value
end

function Stack:Pop()
	assert(not self:IsEmpty(), "Can't pop on an empty stack")

	local value = self[self.top]

	self.top = self.top - 1
	return value
end

function Stack:Peek()
	if self:IsEmpty() then
		return nil
	end

	return self[self.top]
end

Stack.__metaTable = {
	__index = Stack,
	__name = "Stack"
}