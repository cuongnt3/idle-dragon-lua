--- @class UIBlackMarketPageConfig
UIBlackMarketPageConfig = Class(UIBlackMarketPageConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIBlackMarketPageConfig:Ctor(transform)
    --- @type UnityEngine_GameObject
    self.gameObject = transform.gameObject
    --- @type UnityEngine_Transform
    self.transform = transform.transform
    --- @type UnityEngine_UI_Button
    self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
    --- @type UnityEngine_GameObject
    self.imageOn = self.transform:Find("on").gameObject
end
