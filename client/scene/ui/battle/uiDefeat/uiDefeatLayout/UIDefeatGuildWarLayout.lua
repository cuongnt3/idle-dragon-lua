--- @class UIDefeatGuildWarLayout : UIDefeatLayout
UIDefeatGuildWarLayout = Class(UIDefeatGuildWarLayout, UIDefeatLayout)

function UIDefeatGuildWarLayout:InitLayoutConfig()
    --- @type UIDefeatGuildWardConfig
    self.layoutConfig = UIBaseConfig(self.anchor)
    --- @type UIGuildWarMedalConfig
    self.medal1 = UIBaseConfig(self.layoutConfig.rewardAnchor:GetChild(0))
    --- @type UIGuildWarMedalConfig
    self.medal2 = UIBaseConfig(self.layoutConfig.rewardAnchor:GetChild(1))
    --- @type UIGuildWarMedalConfig
    self.medal3 = UIBaseConfig(self.layoutConfig.rewardAnchor:GetChild(2))
end

function UIDefeatGuildWarLayout:InitLocalization()
    UIDefeatLayout.InitLocalization(self)
    --- @type string
    self.localizeGetPoint = LanguageUtils.LocalizeCommon("your_guild_get")
    self.medal1.textWin.text = LanguageUtils.LocalizeCommon("lose")
    local guildWarConfig = ResourceMgr.GetGuildDataConfig():GetGuildWarDataConfig():GetGuildWarConfig()
    self.medal2.textWin.text = string.format(LanguageUtils.LocalizeCommon("min_hero_dead_requirement"), 5 - guildWarConfig.minAttackerHeroDeadRequirement)
    self.medal3.textWin.text = string.format(LanguageUtils.LocalizeCommon("max_round_requirement"), guildWarConfig.maxRoundRequirement)
end

--- @param data {}
function UIDefeatGuildWarLayout:ShowData(data)
end
