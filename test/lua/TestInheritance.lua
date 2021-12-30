require "lua.libs.Class"
require "lua.test.lua.TestOOP"

TestInheritance = Class(TestInheritance, TestOOP)

function TestInheritance:TestChildMethod()
    print("[TestInheritance] From Lua DONE")
    return 1
end

function TestInheritance:TestParentMethod()
    print("[TestInheritance] From Lua child = " .. tostring(self))
    return TestOOP.TestParentMethod(self)
end