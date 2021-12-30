require "lua.client.scene.ui.home.uiEventMidAutumn.ItemShowWithNameAndType"

--- @class UIEventLunarGoldenTimeLayout : UIEventLunarNewYearLayout
UIEventLunarGoldenTimeLayout = Class(UIEventLunarGoldenTimeLayout, UIEventLunarNewYearLayout)

--- @param view UIEventLunarNewYearView
--- @param lunarNewYearTab LunarNewYearTab
--- @param anchor UnityEngine_RectTransform
function UIEventLunarGoldenTimeLayout:Ctor(view, lunarNewYearTab, anchor)
    --- @type UIEventLunarGoldenTimeLayoutConfig
    self.layoutConfig = nil
    --- @type List
    self.listPoolItemShow = List()
    UIEventLunarNewYearLayout.Ctor(self, view, lunarNewYearTab, anchor)
end

function UIEventLunarGoldenTimeLayout:InitLayoutConfig()
    local inst = PrefabLoadUtils.Instantiate("lunar_new_year_golden_time", self.anchor)
    UIEventLunarNewYearLayout.InitLayoutConfig(self, inst)
    self:InitItemShow()
    self:InitButtonListener()
    self:InitLocalization()
end

function UIEventLunarGoldenTimeLayout:InitLocalization()
    UIEventLunarNewYearLayout.InitLocalization(self)
    self.layoutConfig.textEventDesc.text = LanguageUtils.LocalizeCommon("golden_time_lunar_new_year_desc")
    self.layoutConfig.textEventName.text = LanguageUtils.LocalizeCommon("golden_time_lunar_new_year_name")
    self.layoutConfig.textDropInfo.text = LanguageUtils.LocalizeCommon("golden_time_lunar_new_year_drop_info")
end

function UIEventLunarGoldenTimeLayout:InitButtonListener()
    self.layoutConfig.buttonGo.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickButtonGo()
    end)
end

function UIEventLunarGoldenTimeLayout:InitItemShow()
    for i = 1, self.layoutConfig.rewardAnchor.childCount do
        --- @type UnityEngine_Transform
        local child = self.layoutConfig.rewardAnchor:GetChild(i - 1)
        local itemShow = ItemShowWithNameAndType(child)
        self.listPoolItemShow:Add(itemShow)
    end
end

function UIEventLunarGoldenTimeLayout:OnShow()
    UIEventLunarNewYearLayout.OnShow(self)
    self:ShowDropTime()
    self:ShowIdleReward()
end

function UIEventLunarGoldenTimeLayout:ShowDropTime()
    self.layoutConfig.textDropTime.resizeTextMaxSize = 29
    self.layoutConfig.textDropTime.text = LanguageUtils.LocalizeCommon("drop_time_lunar_new_year")
end

function UIEventLunarGoldenTimeLayout:ShowIdleReward()
    --- @type {listGoldenTimeReward : List, lastDuration : number}
    local goldTimeConfig = self.eventConfig:GetGoldenTimeConfig()
    local listRewardConfig = goldTimeConfig.listGoldenTimeReward
    for i = 1, listRewardConfig:Count() do
        --- @type RewardInBound
        local rewardInBound = listRewardConfig:Get(i)
        local itemShow = self:GetItemShowByChildIndex(i)
        itemShow:SetReward(rewardInBound, LanguageUtils.LocalizeCommon("source_money_type_" .. rewardInBound.id))
    end
end

--- @return ItemShowWithNameAndType
function UIEventLunarGoldenTimeLayout:GetItemShowByChildIndex(index)
    if index > self.listPoolItemShow:Count() then
        local prefab = self.layoutConfig.rewardAnchor:GetChild(0).gameObject
        --- @type UnityEngine_GameObject
        local clone = U_GameObject.Instantiate(prefab, self.layoutConfig.rewardAnchor)
        local itemShow = ItemShowWithNameAndType(clone.transform)
        self.listPoolItemShow:Add(itemShow)
    end
    return self.listPoolItemShow:Get(index)
end

function UIEventLunarGoldenTimeLayout:OnHide()
    UIEventLunarNewYearLayout.OnHide(self)
    self:HideRewards()
end

function UIEventLunarGoldenTimeLayout:OnClickButtonGo()
    FeatureMapping.GoToFeature(FeatureType.CAMPAIGN, false, function()
        PopupMgr.HidePopup(UIPopupName.UIEventLunarNewYear)
    end)
end

function UIEventLunarGoldenTimeLayout:HideRewards()
    for i = 1, self.listPoolItemShow:Count() do
        --- @type ItemShowWithNameAndType
        local itemShow = self.listPoolItemShow:Get(i)
        itemShow:OnHide()
    end
end