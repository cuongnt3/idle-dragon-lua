--- @class UIEventProphetTreeLayout : UIEventQuestLayout
UIEventProphetTreeLayout = Class(UIEventProphetTreeLayout, UIEventQuestLayout)

local BG_TEXT_GLOW_COLOR = U_Color(0, 1, 0.89, 0.6)
local OUTLINE_ROUND_COLOR = U_Color(0.17, 0.57, 0.58, 1)

function UIEventProphetTreeLayout:SetUpLayout()
    self.config.bgTextGlow.color = BG_TEXT_GLOW_COLOR
    self.config.outLineTextRound.effectColor = OUTLINE_ROUND_COLOR
    UIEventQuestLayout.SetUpLayout(self)
end
