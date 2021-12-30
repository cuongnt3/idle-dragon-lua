require "lua.test.lua.TestFunction"

TestRequire = {}

function TestRequire.Test(param0, param1)
    print("[TestRequire] From Lua ", param0, param1)
    return TestFunction.Test(param0, param1)
end