--- @class UIEventGuildQuestLayout : UIEventLayout
UIEventGuildQuestLayout = Class(UIEventGuildQuestLayout, UIEventLayout)

local BG_TEXT_GLOW_COLOR = U_Color(0.52, 0.18, 1, 0.5)
local OUTLINE_ROUND_COLOR = U_Color(0.6, 0.2, 1, 1)

--- @param eventPopupModel EventExchangeModel
function UIEventGuildQuestLayout:OnShow(eventPopupModel)
    self:EnableEvent(true)
    self.eventPanel:SetData(eventPopupModel)
    UIEventLayout.OnShow(self, eventPopupModel)
end

function UIEventGuildQuestLayout:SetUpLayout()
    self.config.bgTextGlow.color = BG_TEXT_GLOW_COLOR
    self.config.outLineTextRound.effectColor = OUTLINE_ROUND_COLOR
    UIEventLayout.SetUpLayout(self)
end

function UIEventGuildQuestLayout:OnHide()
    self:EnableEvent(false)
end

--- @param isEnable boolean
function UIEventGuildQuestLayout:EnableEvent(isEnable)
    if isEnable then
        self.eventPanel = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.EventGuildQuestPanel, self.config.guildQuestEventAnchor)
    elseif self.eventPanel ~= nil then
        self.eventPanel:ReturnPool()
        self.eventPanel = nil
    end
end