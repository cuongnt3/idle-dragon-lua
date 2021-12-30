require "lua.libs.collection.Dictionary"

require "lua.libs.LogUtils"
require "lua.libs.Class"

require "lua.client.core.main.LRUCache"

local Data = Class(Data)

function Data:Ctor(name, value)
    self.name = name
    self.value = value
end

--- @return string
function Data:ToString()
    return string.format("%s = %s", self.name, self.value)
end

local lruCache = LRUCache(5)

--- check add
lruCache:Refer(Data("a", 1))
assert("Count = 1 a = 1 " == lruCache:ToString())
lruCache:Refer(Data("b", 2))
lruCache:Refer(Data("c", 3))
assert("Count = 3 c = 3 b = 2 a = 1 " == lruCache:ToString())
lruCache:Refer(Data("b", 4))
assert("Count = 3 b = 4 c = 3 a = 1 " == lruCache:ToString())
lruCache:Refer(Data("e", 5))
lruCache:Refer(Data("d", 6))
lruCache:Refer(Data("f", 7))
assert("Count = 5 f = 7 d = 6 e = 5 b = 4 c = 3 " == lruCache:ToString())
print("Passed!!!")