---COMMENT_CONFIG_COMMON    require "lua.client.scene.ui.common.LinkingHeroItemConfig"

--- @class LinkingHeroItemView : IconView
LinkingHeroItemView = Class(LinkingHeroItemView, IconView)

--- @return void
function LinkingHeroItemView:Ctor()
    IconView.Ctor(self)
    ---@type List --HeroItemView
    self.listHero = List()
end

--- @return void
function LinkingHeroItemView:SetPrefabName()
    self.prefabName = 'linking_item_view'
    self.uiPoolType = UIPoolType.LinkingHeroItemView
end

--- @return void
--- @param transform UnityEngine_Transform
function LinkingHeroItemView:SetConfig(transform)
    assert(transform)
    --- @type LinkingHeroItemConfig
    ---@type LinkingHeroItemConfig
    self.config = UIBaseConfig(transform)
end

--- @return void
--- @param data BaseLinking
function LinkingHeroItemView:SetData(data)
    assert(data)
    self.config.textTitle.text = LanguageUtils.LocalizeNameLinking(data.id)
    self.config.textContent.text = LanguageUtils.LocalizeListStatBonus(data.bonuses, ", ")
    self.config.icon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconLinking, data.id)
    local countView = self.listHero:Count()
    local countData = data.affectedHero:Count()
    if countView < countData then
        for i = countView + 1, countData do
            local slot = i
            ---@type HeroIconView
            local heroIconView = SmartPool.Instance:SpawnLuaUIPool(UIPoolType.HeroIconView, self.config.hero)
            heroIconView:SetSize(150, 150)
            self.listHero:Add(heroIconView)
        end
    elseif countView > countData then
        local slotIndex = countView
        for i = countData + 1, countView do
            ---@type HeroIconView
            local heroIconView = self.listHero:Get(slotIndex)
            heroIconView:ReturnPool()
            self.listHero:RemoveByIndex(slotIndex)
            slotIndex = slotIndex - 1
        end
    end

    ---@type List
    local listHero = List()
    for i = 1, countData do
        local index = i
        ---@type HeroIconView
        local heroIconView = self.listHero:Get(index)
        local heroId = data.affectedHero:Get(index)
        local heroStar = ResourceMgr.GetHeroMenuConfig():GetDictHeroBaseStar(heroId)
        local faction = ClientConfigUtils.GetFactionIdByHeroId(heroId)
        ---@type HeroIconData
        local heroIconData = HeroIconData.CreateInstance(ResourceType.Hero, heroId, nil, nil, faction, nil)
        heroIconView:SetIconData(heroIconData)
        listHero:Add(HeroResource.CreateInstance(nil, heroId, heroStar, 1))
        heroIconView:RemoveAllListeners()
        heroIconView:AddListener(function ()
            PopupMgr.ShowAndHidePopup(UIPopupName.UIHeroMenu2, { ["heroSort"] = listHero, ["index"] = index,
                                                                ["callbackClose"] = function ()
                                                                    PopupMgr.ShowAndHidePopup(UIPopupName.UIMainArea, nil, UIPopupName.UIHeroMenu2)
                                                                    PopupMgr.ShowPopup(UIPopupName.UIHeroCollection)
            end}
            , UIPopupName.UIHeroCollection, UIPopupName.UIMainArea)
        end)
    end
end

--- @return void
function LinkingHeroItemView:ReturnPool()
    IconView.ReturnPool(self)
    ---@param v HeroIconView
    for i, v in pairs(self.listHero:GetItems()) do
        v:ReturnPool()
    end
    self.listHero:Clear()
    --XDebug.Log("LinkingHeroItemView:ReturnPool" .. LogUtils.ToDetail(self.config.transform))
end

return LinkingHeroItemView

