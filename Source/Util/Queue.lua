-- Fifo queue
Queue = {}

function Queue:New()
    local newQueue = {
		first = 0,
		last = -1
	}

    setmetatable(newQueue, Queue.__metaTable)
    return newQueue
end

function Queue:IsEmpty()
	return self.first > self.last
end

function Queue:Push(value)
      local last = self.last + 1
      self.last = last
      self[last] = value
end

function Queue:Pop()
      local first = self.first
      if first > self.last then error("list is empty") end
      local value = self[first]
      self[first] = nil        -- to allow garbage collection
      self.first = first + 1
      return value
end

function Queue:Peek()
	return self[self.first]
end

Queue.__metaTable = {
	__index = Queue,
	__name = "Queue"
}