--- @class IapShopTabItem
IapShopTabItem = Class(IapShopTabItem)

local ON_ICON_TAB_COLOR = U_Color(0.55, 0.49, 0.43, 1)
local OFF_ICON_TAB_COLOR = U_Color(1, 1, 1, 1)

local ON_TEXT_COLOR = U_Color(0.42, 0.34, 0.24, 1)
local OFF_TEXT_COLOR = U_Color(0.77, 0.7, 0.58, 1)

--- @param transform UnityEngine_Transform
function IapShopTabItem:Ctor(transform)
    --- @type IapShopTabItemConfig
    self.config = UIBaseConfig(transform)
end

--- @param tabName string
function IapShopTabItem:SetTabName(tabName)
    self.config.textTabName.text = tabName
end

--- @param listener function
function IapShopTabItem:SetListener(listener)
    self.config.button.onClick:RemoveAllListeners()
    self.config.button.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        listener()
    end)
end

function IapShopTabItem:SetTabState(isHighlight)
    self.config.bgOff:SetActive(not isHighlight)
    self.config.bgOn:SetActive(isHighlight)
    if isHighlight then
        self.config.iconTab.color = ON_ICON_TAB_COLOR
        self.config.textTabName.color = ON_TEXT_COLOR
    else
        self.config.iconTab.color = OFF_ICON_TAB_COLOR
        self.config.textTabName.color = OFF_TEXT_COLOR
    end
end

function IapShopTabItem:EnableNotify(isEnable)
    self.config.notify:SetActive(isEnable)
end

function IapShopTabItem:SetActive(isEnable)
    self.config.gameObject:SetActive(isEnable)
end

return IapShopTabItem