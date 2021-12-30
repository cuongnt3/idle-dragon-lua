---COMMENT_CONFIG_COMMON    require "lua.client.scene.ui.common.RaidStageConfig"

--- @class RaidStageView : MotionIconView
RaidStageView = Class(RaidStageView, MotionIconView)

--- @return void
function RaidStageView:Ctor()
    MotionIconView.Ctor(self)
    ---@type RaidRewardConfig
    self.raidRewardConfig = nil
    ---@type number
    self.power = nil
    ---@type List
    self.listItem = List()
    self.callbackClickChallenge = nil
end

--- @return void
function RaidStageView:SetPrefabName()
    self.prefabName = 'raid_stage_view'
    self.uiPoolType = UIPoolType.RaidStageView
end

--- @return void
--- @param transform UnityEngine_Transform
function RaidStageView:SetConfig(transform)
    MotionIconView.SetConfig(self, transform)
    --- @type RaidStageConfig
    ---@type RaidStageConfig
    self.config = UIBaseConfig(transform)

    self.config.buttonChallenge.onClick:AddListener(function ()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickChallenge()
    end)
end

--- @return void
---@param ap number
---@param raidRewardConfig RaidRewardConfig
function RaidStageView:SetData(ap, raidRewardConfig, callbackClickChallenge)
    self.power = math.floor(ap)
    self.raidRewardConfig = raidRewardConfig
    self.callbackClickChallenge = callbackClickChallenge
    ---@param v ItemIconData
    for _, v in ipairs(self.raidRewardConfig.listRewardItem:GetItems()) do
        ---@type RootIconView
        local iconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.RootIconView, self.config.item)
        iconView:SetIconData(ItemIconData.Clone(v))
        iconView:RegisterShowInfo()
        self.listItem:Add(iconView)
    end
    self.config.textIconRaid.text = tostring(self.raidRewardConfig.stage)
    self.config.textApRaid.text = tostring(self.power)
    if zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO).level < self.raidRewardConfig.levelRequired then
        UIUtils.SetInteractableButton(self.config.buttonChallenge, false)
        self.config.textComplete.text = string.format(LanguageUtils.LocalizeCommon("unlock_level"), self.raidRewardConfig.levelRequired)
    else
        UIUtils.SetInteractableButton(self.config.buttonChallenge, true)
        self.config.textComplete.text = LanguageUtils.LocalizeCommon("challenge")
    end
    self.config.iconRaid.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconRaidLevel, raidRewardConfig.stage)
    self.config.iconRaid:SetNativeSize()
end

--- @return void
function RaidStageView:ReturnPool()
    MotionIconView.ReturnPool(self)
    ---@param v IconView
    for _, v in pairs(self.listItem:GetItems()) do
        v:ReturnPool()
    end
    self.listItem:Clear()
    self.callbackClickChallenge = nil
end

--- @return void
function RaidStageView:OnClickChallenge()
    if self.callbackClickChallenge ~= nil then
        self.callbackClickChallenge()
    end
end

return RaidStageView