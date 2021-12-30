TestFunction = {}

function TestFunction.Test(param0, param1)
    return param0 + param1
end

function TestFunction.NoParam()
    print("[TestFunction] From Lua ")
    return 0
end

function TestFunction.OneParam(param0)
    print("[TestFunction] From Lua ", param0)
    return param0
end

function TestFunction.TwoParam(param0, param1)
    print("[TestFunction] From Lua ", param0, param1)
    return param0 + param1
end

function TestFunction.ThreeParam(param0, param1, param2)
    print("[TestFunction] From Lua ", param0, param1, param2)
    return param0 + param1 + param2
end