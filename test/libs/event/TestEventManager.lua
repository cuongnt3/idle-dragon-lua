require "lua.libs.Class"
require "lua.libs.LogUtils"

require "lua.logicBattle.utils.event.EventManager"
require "lua.logicBattle.utils.event.EventListener"
require "lua.test.libs.event.TestEventData"

TestEventManager = Class(TestEventManager)

--- @return void
function TestEventManager:Ctor()
    --- @type EventManager
    self.eventManager = EventManager()

    --- @type boolean
    self.isListenerTriggered = false

    --- @type EventListener
    self.eventListener = EventListener(self, self, self.TestDummyListener)
end

--- @return void
function TestEventManager:Test()
    self:TestAddListener()
    self:TestRemoveListener()
end

--- @return void
function TestEventManager:TestAddListener()
    self.eventManager:AddListener(1, self.eventListener)
    assert(self.eventManager.listenerDict:Count() == 1,
            "EventManager count must be " .. self.eventManager.listenerDict:Count())

    local eventData = TestEventData()
    self.eventManager:TriggerEvent(1, eventData)
    assert(self.isListenerTriggered, "isListenerTriggered = " .. tostring(self.isListenerTriggered))
end

--- @return void
function TestEventManager:TestRemoveListener()
    self.isListenerTriggered = false

    self.eventManager:RemoveListener(1, self.eventListener)

    local eventData = TestEventData()
    self.eventManager:TriggerEvent(1, eventData)
    assert(not self.isListenerTriggered, "isListenerTriggered = " .. tostring(self.isListenerTriggered))
end

---------------------------------------- Init ----------------------------------------
--- @return void
--- @param eventData object
function TestEventManager:TestDummyListener(eventData)
    print("[TestEventManager] trigger listener")
    self.isListenerTriggered = true

    assert(eventData ~= nil, "eventData = " .. tostring(eventData))
    assert(eventData.dummyNumberField == 1, "eventData.dummyNumberField = " .. tostring(eventData.dummyNumberField))
    assert(eventData.dummyStringField == "abc", "eventData.dummyStringField = " .. tostring(eventData.dummyStringField))
end