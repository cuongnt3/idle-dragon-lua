--- @class UnityEngine
UnityEngine = Class(UnityEngine)

--- @return void
function UnityEngine:Ctor()
    --- @type UnityEngine_Transform
    self.Transform = nil
    --- @type UnityEngine_GameObject
    self.GameObject = nil
    --- @type UnityEngine_Resources
    self.Resources = nil
    --- @type UnityEngine_TextAnchor
    self.TextAnchor = nil
end