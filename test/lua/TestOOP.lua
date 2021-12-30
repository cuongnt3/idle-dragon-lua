require "lua.libs.Class"

--- @class TestOOP
TestOOP = Class(TestOOP)

function TestOOP:SetArea(area)
    self.area = area
end

function TestOOP:GetArea()
    return self.area
end

function TestOOP:SetDummy(dummy)
    print("[TestOOP] From Lua ", dummy)
    self.dummy = dummy
end

function TestOOP:NoParam()
    print("[TestOOP] From Lua ")
    return 0
end

function TestOOP:OneParam(param0)
    print("[TestOOP] From Lua ", param0)
    return param0
end

function TestOOP:TwoParam(param0, param1)
    print("[TestOOP] From Lua ", param0, param1)
    return param0 + param1
end

function TestOOP:ThreeParam(param0, param1, param2)
    print("[TestOOP] From Lua ", param0, param1, param2)
    return param0 + param1 + param2
end

function TestOOP:TestChildMethod()
    assert(false, "[ASSERT] TestChildMethod: This method should be overridden by child class")
    return 0
end

function TestOOP:TestParentMethod()
    print("[TestOOP] From Lua self = " .. tostring(self))
    assert(self ~= nil, "[ASSERT] TestParentMethod: This method can be called from child")
    return 2
end

function TestOOP:FloatParam(param0)
    print("[TestOOP] From Lua ", param0)
    return param0
end