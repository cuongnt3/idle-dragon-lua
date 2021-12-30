--- @class UnityEngine_UI_Event
UnityEngine_UI_Event = Class(UnityEngine_UI_Event)

--- @return void
function UnityEngine_UI_Event:Ctor()
    --- @type UnityEngine_Transform
    self.AddListener = nil
    --- @type UnityEngine_GameObject
    self.Invoke = nil
    --- @type UnityEngine_GameObject
    self.RemoveListener = nil
end