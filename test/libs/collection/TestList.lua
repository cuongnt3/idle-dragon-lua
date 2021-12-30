require "lua.libs.Class"
require "lua.libs.collection.List"

require "lua.libs.LogUtils"
require "lua.libs.TableUtils"
require "lua.libs.RandomHelper"
require "lua.libs.StopWatch"

--- @class TestList
TestList = Class(TestList)

--- @return void
function TestList:Ctor()
    --- @type List
    self.dummyList = List()

    --- @type string
    self.a = "a"
    --- @type string
    self.b = "b"
    --- @type string
    self.c = "c"
end

--- @return void
function TestList:Test()
    -- dummyList = []
    assert(self.dummyList:Count() == 0, "count of new list must be 0")
    assert(self.dummyList:GetCurrentIndex() == 1, "currentIndex of new list must be 1")

    self:TestAdd()
    self:TestAddAll()

    self:TestSetItem()
    self:TestInsertItem()

    self:TestSort()

    self:TestClear()
    self:TestRemoveByIndex()
    self:TestRemoveSingleItem()

    self:TestRemoveMultipleConsecutiveItems()
    self:TestRemoveMultipleSparseItems()
    self:TestRemoveRandomItems()

    self:TestLoop()

    print("[TestList] test done")
end

--- @return void
function TestList:TestAdd()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    -- dummyList = ["a", "b", "c"]
    assert(self.dummyList:Count() == 3, "count list must be 3")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.b, "item at 2 must be b")
    assert(self.dummyList:Get(3) == self.c, "item at 3 must be c")
    assert(self.dummyList:GetCurrentIndex() == 4, "currentIndex of list must be 4")

    assert(self.dummyList:IsContainValue(self.a), "list must contain a")
    assert(self.dummyList:IsContainValue(self.b), "list must contain b")
    assert(self.dummyList:IsContainValue(self.c), "list must contain c")

    local itemsList = self.dummyList:GetItems()
    for key, item in ipairs(itemsList) do
        if key == 1 then
            assert(item == self.a, "item at 1 must be a")
        elseif key == 2 then
            assert(item == self.b, "item at 2 must be b")
        elseif key == 3 then
            assert(item == self.c, "item at 3 must be c")
        end
    end

    self.dummyList:Clear()
end

--- @return void
function TestList:TestAddAll()
    local dummyListToAdd = List()
    dummyListToAdd:Add(self.a)
    dummyListToAdd:Add(self.b)
    dummyListToAdd:Add(self.c)

    self.dummyList:AddAll(dummyListToAdd)

    -- dummyList = ["a", "b", "c"]
    assert(self.dummyList:Count() == 3, "count list must be 3")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.b, "item at 2 must be b")
    assert(self.dummyList:Get(3) == self.c, "item at 3 must be c")
    assert(self.dummyList:GetCurrentIndex() == 4, "currentIndex of list must be 4")

    local itemsList = self.dummyList:GetItems()
    for key, item in ipairs(itemsList) do
        if key == 1 then
            assert(item == self.a, "item at 1 must be a")
        elseif key == 2 then
            assert(item == self.b, "item at 2 must be b")
        elseif key == 3 then
            assert(item == self.c, "item at 3 must be c")
        end
    end

    self.dummyList:Clear()
end

--- @return void
function TestList:TestSetItem()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    -- dummyList = ["a", "b", "c"]
    assert(self.dummyList:Count() == 3, "count list must be 3")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.b, "item at 2 must be b")
    assert(self.dummyList:Get(3) == self.c, "item at 3 must be c")
    assert(self.dummyList:GetCurrentIndex() == 4, "currentIndex of list must be 4")

    self.dummyList:SetItemAtIndex(self.a, 2)

    -- dummyList = ["a", "a", "c"]
    assert(self.dummyList:Count() == 3, "count list must be 3")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.a, "item at 2 must be a")
    assert(self.dummyList:Get(3) == self.c, "item at 3 must be c")
    assert(self.dummyList:GetCurrentIndex() == 4, "currentIndex of list must be 4")

    self.dummyList:Clear()
end

--- @return void
function TestList:TestInsertItem()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    -- dummyList = ["a", "b", "c"]
    assert(self.dummyList:Count() == 3, "count list must be 3")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.b, "item at 2 must be b")
    assert(self.dummyList:Get(3) == self.c, "item at 3 must be c")
    assert(self.dummyList:GetCurrentIndex() == 4, "currentIndex of list must be 4")

    self.dummyList:Insert(self.a, 2)

    -- dummyList = ["a", "a", "b", "c"]
    assert(self.dummyList:Count() == 4, "count list must be 4")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.a, "item at 2 must be a")
    assert(self.dummyList:Get(3) == self.b, "item at 3 must be b")
    assert(self.dummyList:Get(4) == self.c, "item at 3 must be c")
    assert(self.dummyList:GetCurrentIndex() == 5, "currentIndex of list must be 5")

    self.dummyList:Clear()
end

--- @return void
function TestList:TestSort()
    self.dummyList:Add(1)
    self.dummyList:Add(3)
    self.dummyList:Add(2)
    self.dummyList:Add(5)
    self.dummyList:Add(6)
    self.dummyList:Add(4)

    -- dummyList = [1, 3, 2, 5, 6, 4]
    assert(self.dummyList:Count() == 6, "count list must be 6")
    assert(self.dummyList:Get(1) == 1, "item at 1 must be 1")
    assert(self.dummyList:Get(2) == 3, "item at 2 must be 3")
    assert(self.dummyList:Get(3) == 2, "item at 3 must be 2")
    assert(self.dummyList:Get(4) == 5, "item at 4 must be 5")
    assert(self.dummyList:Get(5) == 6, "item at 5 must be 6")
    assert(self.dummyList:Get(6) == 4, "item at 6 must be 4")
    assert(self.dummyList:GetCurrentIndex() == 7, "currentIndex of list must be 7")

    self.dummyList:Sort(self, self._DummyComparator)

    -- dummyList = [1, 2, 3, 4, 5, 6]
    assert(self.dummyList:Count() == 6, "count list must be 6")
    assert(self.dummyList:Get(1) == 1, "item at 1 must be 1")
    assert(self.dummyList:Get(2) == 2, "item at 2 must be 2")
    assert(self.dummyList:Get(3) == 3, "item at 3 must be 3")
    assert(self.dummyList:Get(4) == 4, "item at 4 must be 4")
    assert(self.dummyList:Get(5) == 5, "item at 5 must be 5")
    assert(self.dummyList:Get(6) == 6, "item at 6 must be 6")
    assert(self.dummyList:GetCurrentIndex() == 7, "currentIndex of list must be 7")

    --- Check sort is stable
    self.dummyList:Sort(self, self._DummyComparator)
    self.dummyList:Sort(self, self._DummyComparator)
    self.dummyList:Sort(self, self._DummyComparator)
    self.dummyList:Sort(self, self._DummyComparator)

    -- dummyList = [1, 2, 3, 4, 5, 6]
    assert(self.dummyList:Count() == 6, "count list must be 6")
    assert(self.dummyList:Get(1) == 1, "item at 1 must be 1")
    assert(self.dummyList:Get(2) == 2, "item at 2 must be 2")
    assert(self.dummyList:Get(3) == 3, "item at 3 must be 3")
    assert(self.dummyList:Get(4) == 4, "item at 4 must be 4")
    assert(self.dummyList:Get(5) == 5, "item at 5 must be 5")
    assert(self.dummyList:Get(6) == 6, "item at 6 must be 6")
    assert(self.dummyList:GetCurrentIndex() == 7, "currentIndex of list must be 7")

    self.dummyList:Clear()
end

--- @return number
--- Positive: item1 > item2, 0: item1 == item2, Negative: item1 < item2
function TestList:_DummyComparator(item1, item2)
    if item1 > item2 then
        return 1
    elseif item1 < item2 then
        return -1
    else
        return 0
    end
end

--- @return void
function TestList:TestRemoveByIndex()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    -- remove b
    self.dummyList:RemoveByIndex(2)

    -- dummyList = ["a", "c"]
    assert(self.dummyList:Count() == 2, "count list must be 2")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.c, "item at 2 must be c")
    assert(self.dummyList:Get(3) == nil, "item at 3 must be nil")
    assert(self.dummyList:GetCurrentIndex() == 3, "currentIndex of list must be 3")

    self.dummyList:Clear()
end

--- @return void
function TestList:TestClear()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    self.dummyList:Clear()

    -- dummyList = []
    assert(self.dummyList:Count() == 0, "list must be empty")
    assert(self.dummyList:Get(1) == nil, "item at 1 must be nil")
    assert(self.dummyList:Get(2) == nil, "item at 2 must be nil")
    assert(self.dummyList:Get(3) == nil, "item at 3 must be nil")
    assert(self.dummyList:GetCurrentIndex() == 1, "currentIndex of list must be 1")
end

--- @return void
function TestList:TestRemoveSingleItem()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    -- dummyList = ["a", "b", "c"]
    assert(self.dummyList:Count() == 3, "count list must be 3")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.b, "item at 2 must be b")
    assert(self.dummyList:Get(3) == self.c, "item at 3 must be c")
    assert(self.dummyList:GetCurrentIndex() == 4, "currentIndex of list must be 4")

    self.dummyList:RemoveByReference(self.b)

    -- dummyList = ["a", "c"]
    assert(self.dummyList:Count() == 2, "count list must be 2")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.c, "item at 2 must be c")
    assert(self.dummyList:Get(3) == nil, "item at 3 must be nil")
    assert(self.dummyList:GetCurrentIndex() == 3, "currentIndex of list must be 3")

    self.dummyList:Clear()
end

--- @return void
function TestList:TestRemoveMultipleConsecutiveItems()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    -- dummyList = ["a", "b", "b", "c"]
    assert(self.dummyList:Count() == 4, "count list must be 4")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.b, "item at 2 must be b")
    assert(self.dummyList:Get(3) == self.b, "item at 3 must be b")
    assert(self.dummyList:Get(4) == self.c, "item at 4 must be c")
    assert(self.dummyList:GetCurrentIndex() == 5, "currentIndex of list must be 5")

    self.dummyList:RemoveByReference(self.b)

    -- dummyList = ["a", "c"]
    assert(self.dummyList:Count() == 2, "count list must be 2")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.c, "item at 2 must be c")
    assert(self.dummyList:Get(3) == nil, "item at 3 must be nil")
    assert(self.dummyList:Get(4) == nil, "item at 4 must be nil")
    assert(self.dummyList:GetCurrentIndex() == 3, "currentIndex of list must be 3")

    self.dummyList:Clear()
end

--- @return void
function TestList:TestRemoveMultipleSparseItems()
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)

    -- dummyList = [ "b", "a", "b", "c"]
    assert(self.dummyList:Count() == 4, "count list must be 4")
    assert(self.dummyList:Get(1) == self.b, "item at 1 must be b")
    assert(self.dummyList:Get(2) == self.a, "item at 2 must be a")
    assert(self.dummyList:Get(3) == self.b, "item at 3 must be b")
    assert(self.dummyList:Get(4) == self.c, "item at 4 must be c")
    assert(self.dummyList:GetCurrentIndex() == 5, "currentIndex of list must be 5")

    self.dummyList:RemoveByReference(self.b)

    -- dummyList = ["a", "c"]
    assert(self.dummyList:Count() == 2, "count list must be 2")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.c, "item at 2 must be c")
    assert(self.dummyList:Get(3) == nil, "item at 3 must be nil")
    assert(self.dummyList:Get(4) == nil, "item at 4 must be nil")
    assert(self.dummyList:GetCurrentIndex() == 3, "currentIndex of list must be 3")

    self.dummyList:Clear()
end

--- @return void
function TestList:TestRemoveRandomItems()
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.a)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.b)
    self.dummyList:Add(self.c)
    self.dummyList:Add(self.c)

    -- dummyList = [ "a", "a", "b", "b", "c", "c"]
    assert(self.dummyList:Count() == 6, "count list must be 6")
    assert(self.dummyList:Get(1) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(2) == self.a, "item at 1 must be a")
    assert(self.dummyList:Get(3) == self.b, "item at 1 must be b")
    assert(self.dummyList:Get(4) == self.b, "item at 1 must be b")
    assert(self.dummyList:Get(5) == self.c, "item at 1 must be c")
    assert(self.dummyList:Get(6) == self.c, "item at 1 must be c")
    assert(self.dummyList:GetCurrentIndex() == 7, "currentIndex of list must be 7")

    local randomHelper = RandomHelper()
    randomHelper:SetSeed(math.random(1, 999999999))

    self.dummyList:RemoveRandomItems(3, randomHelper)

    assert(self.dummyList:Count() == 3, "count list must be 3")
    assert(self.dummyList:GetCurrentIndex() == 4, "currentIndex of list must be 4")

    self.dummyList:Clear()
end

--- @return void
function TestList:TestLoop()
    self.dummyList:Clear()

    for i = 1, 1000 do
        self.dummyList:Add(i)
    end

    local stopWatch = StopWatch()

    stopWatch:Start()
    local total = 0
    for _, v in pairs(self.dummyList:GetItems()) do
        total = total + v
    end
    stopWatch:Stop("normal loop with pairs")

    stopWatch:Start()
    local dummyList = self.dummyList:GetItems()
    total = 0
    for _, v in pairs(dummyList) do
        total = total + v
    end
    stopWatch:Stop("loop with pairs of local table")

    self.dummyList:Clear()
end
