require "lua.libs.Class"
require "lua.libs.LogUtils"

TestEventData = Class(TestEventData)

--- @return void
function TestEventData:Ctor()
    --- @type number
    self.dummyNumberField = 1

    --- @type number
    self.dummyStringField = "abc"
end