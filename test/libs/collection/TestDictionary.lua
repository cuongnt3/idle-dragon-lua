require "lua.libs.collection.Dictionary"

require "lua.libs.LogUtils"
require "lua.libs.Class"

--- @class TestDictionary
TestDictionary = Class(TestDictionary)

--- @return void
function TestDictionary:Ctor()
    --- @type Dictionary
    self.dummyDict = Dictionary()

    --- @type string
    self.a = "a"
    --- @type string
    self.b = "b"
    --- @type string
    self.c = "c"
end

--- @return void
function TestDictionary:Test()
    -- dummyDict = []
    assert(self.dummyDict:Count() == 0, "count of new list must be 0")

    self:TestAdd()
    self:TestContain()

    self:TestClear()
    self:TestRemove()

    print("[TestDictionary] test done")
end

--- @return void
function TestDictionary:TestAdd()
    self.dummyDict:Add(0, self.a)
    self.dummyDict:Add(1, self.b)
    self.dummyDict:Add(2, self.c)

    -- dummyDict = [0] = "a", [1] = "b", [2] = "c"
    assert(self.dummyDict:Count() == 3, "count dictionary must be 3")
    assert(self.dummyDict:Get(0) == self.a, "item with key 0 must be a")
    assert(self.dummyDict:Get(1) == self.b, "item with key 1 must be b")
    assert(self.dummyDict:Get(2) == self.c, "item with key 2 must be c")
    assert(self.dummyDict:Get(3) == nil, "item with key 3 must be nil")

    self.dummyDict:Clear()
end

--- @return void
function TestDictionary:TestContain()
    self.dummyDict:Add(0, self.a)
    self.dummyDict:Add(1, self.b)
    self.dummyDict:Add(2, self.c)

    -- dummyDict = [0] = "a", [1] = "b", [2] = "c"
    assert(self.dummyDict:Count() == 3, "count dictionary must be 3")
    assert(self.dummyDict:Get(0) == self.a, "item with key 0 must be a")
    assert(self.dummyDict:Get(1) == self.b, "item with key 1 must be b")
    assert(self.dummyDict:Get(2) == self.c, "item with key 2 must be c")
    assert(self.dummyDict:Get(3) == nil, "item with key 3 must be nil")

    assert(self.dummyDict:IsContainKey(0) == true, "dict must contain key 0")
    assert(self.dummyDict:IsContainKey(1) == true, "dict must contain key 1")
    assert(self.dummyDict:IsContainKey(2) == true, "dict must contain key 2")
    assert(self.dummyDict:IsContainKey(3) == false, "dict must not contain key 3")

    assert(self.dummyDict:IsContainValue(self.a) == true, "dict must contain value a")
    assert(self.dummyDict:IsContainValue(self.b) == true, "dict must contain value b")
    assert(self.dummyDict:IsContainValue(self.c) == true, "dict must contain value c")
    assert(self.dummyDict:IsContainValue("d") == false, "dict must not contain value d")

    self.dummyDict:Clear()
end

--- @return void
function TestDictionary:TestClear()
    self.dummyDict:Add(0, self.a)
    self.dummyDict:Add(1, self.b)
    self.dummyDict:Add(2, self.c)

    self.dummyDict:Clear()

    -- dummyDict = []
    assert(self.dummyDict:Count() == 0, "dictionary must be empty")
    assert(self.dummyDict:Get(0) == nil, "dict with key 0 must be nil")
    assert(self.dummyDict:Get(1) == nil, "dict with key 1 must be nil")
    assert(self.dummyDict:Get(2) == nil, "dict with key 2 must be nil")
    assert(self.dummyDict:Get(3) == nil, "dict with key 3 must be nil")

    self.dummyDict:Clear()

    self.dummyDict:Add(0, self.a)
    self.dummyDict:Add(1, self.b)
    self.dummyDict:Add(2, self.c)

    -- dummyDict = [0] = "a", [1] = "b", [2] = "c"

    self.dummyDict:Add(1, self.c)

    -- dummyDict = [0] = "a", [1] = "c", [2] = "c"
    assert(self.dummyDict:Count() == 3, "count dictionary must be 3")
    assert(self.dummyDict:Get(0) == self.a, "item with key 0 must be a")
    assert(self.dummyDict:Get(1) == self.c, "item with key 1 must be c")
    assert(self.dummyDict:Get(2) == self.c, "item with key 2 must be c")
    assert(self.dummyDict:Get(3) == nil, "item with key 3 must be nil")

    self.dummyDict:Add(0, self.c)

    -- dummyDict = [0] = "c", [1] = "c", [2] = "c"
    assert(self.dummyDict:Count() == 3, "count dictionary must be 3")
    assert(self.dummyDict:Get(0) == self.c, "item with key 0 must be c")
    assert(self.dummyDict:Get(1) == self.c, "item with key 1 must be c")
    assert(self.dummyDict:Get(2) == self.c, "item with key 2 must be c")
    assert(self.dummyDict:Get(3) == nil, "item with key 3 must be nil")

    self.dummyDict:Clear()
end

--- @return void
function TestDictionary:TestRemove()
    self.dummyDict:Add(0, self.a)
    self.dummyDict:Add(1, self.b)
    self.dummyDict:Add(2, self.c)

    self.dummyDict:RemoveByKey(1)

    -- dummyDict = [0] = "a", [2] = "c"
    assert(self.dummyDict:Count() == 2, "count dictionary must be 2")
    assert(self.dummyDict:Get(0) == self.a, "item with key 0 must be a")
    assert(self.dummyDict:Get(1) == nil, "item with key 1 must be nil")
    assert(self.dummyDict:Get(2) == self.c, "item with key 2 must be c")
    assert(self.dummyDict:Get(3) == nil, "item with key 3 must be nil")

    assert(self.dummyDict:IsContainKey(1) == false, "item doesn't contain key 1")

    self.dummyDict:Clear()
end