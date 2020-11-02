-- To run tests run this file with the root folder as working directory
local test = require("Source.Util.u-test")

-- stack ----------------------------------------
require("Source.Util.Stack")

function test.stack.isEmpty()
	local stack = Stack:New()

	test.is_true(stack:IsEmpty())

	stack:Push(3)
	stack:Push(3)

	test.is_false(stack:IsEmpty())

	stack:Pop()
	stack:Pop()

	test.is_true(stack:IsEmpty())
end

function test.stack.push()
	local stack = Stack:New()

	stack:Push(5)
	stack:Push(6)

	test.equal(stack:Peek(), 6)
end

function test.stack.popPeek()
	local stack = Stack:New()

	stack:Push(5)
	stack:Push(6)

	test.equal(stack:Pop(), 6)
	test.equal(stack:Peek(), 5)
	test.equal(stack:Pop(), 5)
	test.equal(stack:Peek(), nil)
	--test.error_raised(stack:Pop())
end

-- queue -------------------------------------
require("Source.Util.Queue")

function test.queue.push()
	local queue = Queue:New()

	queue:Push("Don't")
	test.equal(queue[queue.last], "Don't")
	test.equal(queue[queue.first], "Don't")
	test.is_false(queue:IsEmpty())

	queue:Push("Panic")
	test.equal(queue[queue.first], "Don't")
	test.equal(queue[queue.last], "Panic")
end

function test.queue.Peek()
	local queue = Queue:New()

	queue:Push("Don't")
	test.equal(queue:Peek(), "Don't")

	queue:Push("Panic")
	test.equal(queue:Peek(), "Don't")
end

function test.queue.pop()
	local queue = Queue:New()

	queue:Push("Don't")
	queue:Push("Panic")

	test.equal(queue:Pop(), "Don't")
	test.equal(queue:Peek(), "Panic")
	test.equal(queue:Pop(), "Panic")

	test.is_true(queue:IsEmpty())
end

-- end ---------------------------------------
test.summary()