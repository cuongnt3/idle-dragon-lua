--- @class UIEventHeroicSummonLayout : UIEventQuestLayout
UIEventHeroicSummonLayout = Class(UIEventHeroicSummonLayout, UIEventQuestLayout)

local BG_TEXT_GLOW_COLOR = U_Color(0.52, 0.18, 1, 0.5)
local OUTLINE_ROUND_COLOR = U_Color(0.6, 0.2, 1, 1)

function UIEventHeroicSummonLayout:SetUpLayout()
    self.config.bgTextGlow.color = BG_TEXT_GLOW_COLOR
    self.config.outLineTextRound.effectColor = OUTLINE_ROUND_COLOR
    UIEventQuestLayout.SetUpLayout(self)
end
