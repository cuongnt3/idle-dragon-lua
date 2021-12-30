require "lua.client.scene.ui.home.uiFormation2.worldFormation.WorldFormation"
require "lua.client.scene.ui.home.uiFormation.UIFormationTeamData"
require "lua.client.core.network.formation.SetFormationOutBound"

--- @class UIFormationView : UIBaseView
UIFormationView = Class(UIFormationView, UIBaseView)

--- @return void
--- @param model UIFormationModel
function UIFormationView:Ctor(model)
    --- @type UIFormationConfig
    self.config = nil
    --- @type UISelect
    self.tab = nil
    ---@type HeroListView
    self.heroList = nil
    --- @type WorldFormation
    self.worldFormation = nil
    ---@type number
    self.powerAttacker = nil

    self.cacheResult = nil

    ---@type List
    self.listLinking1 = List()
    ---@type List
    self.listLinking2 = List()
    --- @type List
    self.listIconAllowedClass = List()

    ---@type PlayerSummonerInBound
    self.summonerInbound = nil
    self.coroutine = nil
    --- @type boolean
    self.isShowing = false

    self.cacheWorldFormation = false

    --- @type ItemsTableView
    self.itemsTableView = nil
    UIBaseView.Ctor(self, model)
    --- @type UIFormationModel
    self.model = model
end

--- @return void
function UIFormationView:OnReadyCreate()
    ---@type UIFormationConfig
    self.config = UIBaseConfig(self.uiTransform)

    --- @param obj TabFormationConfig
    --- @param isSelect boolean
    local onSelect = function(obj, isSelect, indexTab)
        if isSelect then
            UIUtils.SetInteractableButton(obj.button, false)
            obj.rectTranform.sizeDelta = U_Vector2(0, 46)
        else
            UIUtils.SetInteractableButton(obj.button, true)
            obj.rectTranform.sizeDelta = U_Vector2(0, 0)
        end
    end

    local onChangeSelectTeam = function(indexTab, lastTab)
        self.config.teamLayout.enabled = false
        self.config.teamLayout.enabled = true
    end
    local onClickSelectTeam = function(indexTab, lastTab)
        self:ChangeTeam()
    end
    local conditionSelect = function(indexTab)
        return ResourceMgr.GetFormationLockConfig().dict:IsContainKey(indexTab) == false or
                ResourceMgr.GetFormationLockConfig().dict:Get(indexTab) <= zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO).level
    end
    local onSelectFailed = function(indexTab)
        local level = ResourceMgr.GetFormationLockConfig().dict:Get(indexTab)
        SmartPoolUtils.ShowShortNotification(string.format(LanguageUtils.LocalizeCommon("require_level_x"), level))
    end
    self.tab = UISelect(self.config.team, UIBaseConfig, onSelect, onChangeSelectTeam, onClickSelectTeam, conditionSelect, onSelectFailed)

    --HERO LIST
    self.heroList = HeroListView(self.config.heroList)

    --- @return void
    --- @param heroIndex number
    --- @param buttonHero HeroIconView
    --- @param heroResource HeroResource
    self.onUpdateIconHero = function(heroIndex, buttonHero, heroResource)
        if self.model.teamFormation:IsContainHeroInventoryId(heroResource.inventoryId) then
            buttonHero:ActiveMaskSelect(true, UIUtils.sizeItem)
            buttonHero:EnableButton(true)
        else
            buttonHero:ActiveMaskSelect(false)
            buttonHero:EnableButton(true)
        end
    end

    --- @return void
    --- @param heroIndex number
    --- @param buttonHero HeroIconView
    --- @param heroResource HeroResource
    self.buttonListener = function(heroIndex, buttonHero, heroResource)
        if self.model.teamFormation:IsContainHeroInventoryId(heroResource.inventoryId) then
            self:RemoveHeroFromTeam(heroResource.inventoryId)
            buttonHero:ActiveMaskSelect(false)
            buttonHero:EnableButton(true)
            self:UpdateTeamFormation()
        else
            if self.model.teamFormation:IsFull() == false then
                self:AddHeroToTeam(heroResource)
                buttonHero:ActiveMaskSelect(true, UIUtils.sizeItem)
                buttonHero:EnableButton(true)
                self:UpdateTeamFormation()
            else
                SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("noti_full_hero"))
                zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            end
        end
    end

    self.heroList:Init(self.buttonListener, nil, nil, nil, nil, self.onUpdateIconHero, self.onUpdateIconHero)

    self:InitButtonListener()

    self.itemsTableView = ItemsTableView(self.config.allowedClasses, nil, UIPoolType.SimpleButtonView)
end

--- @return void
function UIFormationView:InitButtonListener()
    self.config.buttonBack.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)
    self.config.buttonAuraSkill.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickCompanion1()
    end)
    self.config.buttonAuraSkill2.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickCompanion2()
    end)
    self.config.battleButtonNotSkip.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickBattle()
    end)
    self.config.battleButton.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickBattle()
    end)
    self.config.skipButton.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickSkip()
    end)
    self.config.buttonRemoveAll.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickRemoveAll()
    end)

    for i = 1, self.config.linkingAttacker.childCount do
        local index = i
        ---@type UnityEngine_UI_Button
        local button = self.config.linkingAttacker:GetChild(index - 1):GetComponent(ComponentName.UnityEngine_UI_Button)
        button.onClick:AddListener(function()
            zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
            self:OnClickLinkingAttacker(index)
        end)
    end
    for i = 1, self.config.linkingDefender.childCount do
        local index = i
        ---@type UnityEngine_UI_Button
        local button = self.config.linkingDefender:GetChild(index - 1):GetComponent(ComponentName.UnityEngine_UI_Button)
        button.onClick:AddListener(function()
            zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
            self:OnClickLinkingDefender(index)
        end)
    end
end

function UIFormationView:OnClickBackOrClose()
    self:SaveFormationServer()
    UIBaseView.OnClickBackOrClose(self)
end

--- @return void
function UIFormationView:InitLocalization()
    self.config.localizeVs.text = LanguageUtils.LocalizeCommon("vs")
    self.config.localizeSkip.text = LanguageUtils.LocalizeCommon("skip")
    local localizeBattle = LanguageUtils.LocalizeCommon("battle")
    self.config.localizeBattle.text = localizeBattle
    self.config.localizeBattle2.text = localizeBattle
    self.config.localizeRemoveAll.text = LanguageUtils.LocalizeCommon("remove_all")
    self.config.localizeFormation1.text = LanguageUtils.LocalizeCommon("formation")
    self.config.localizeFormation2.text = LanguageUtils.LocalizeCommon("formation")
    self.config.localizeFormation3.text = LanguageUtils.LocalizeCommon("formation")
    self.config.localizeFormation4.text = LanguageUtils.LocalizeCommon("formation")
end

--- @return void
function UIFormationView:OnReadyShow(result)
    zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_OPEN)
    if self.isShowing then
        self:OnClickSkip()
        return
    end
    self.isShowing = true

    self.canPlayMotion = true
    self.summonerInbound = zg.playerData:GetMethod(PlayerDataMethod.SUMMONER)

    self.cacheResult = result
    self:_Init(result)
    self:InitWorldFormation()

    if result.worldFormation == nil then
        self.worldFormation:OnShow()
        self:OnShowWorldFormation()
    end

    self.worldFormation:EnableModification(true)

    local companionBuff = ClientConfigUtils.GetCompanionIdByBattleTeamInfo(self.model.defenderTeamInfo)
    self.config.companion2.sprite = ResourceLoadUtils.LoadCompanionBuffOnIcon(companionBuff)
    --self:ShowListHero(true)
    self:ShowBgAnchor(result.bgParams)

    self:EnableDefenderTeam(true)
end

--- @return void
function UIFormationView:OnFinishAnimation()
    UIBaseView.OnFinishAnimation(self)
    self:CheckAndInitTutorial()
end

--- @start world
function UIFormationView:CheckCanSkip(canSkip)
    local enableSkip = false
    if self.model.currentMode == GameMode.RAID
            and ClientConfigUtils.CheckUnlockMajorFeatureAndNotification(FeatureType.RAID, false) == true then
        enableSkip = true
    else
        ---@type {level, stage}
        local require = ResourceMgr.GetMinorFeatureLock().dict:Get(MinorFeatureType.BATTLE_SKIP)
        local vip = ResourceMgr.GetVipConfig():GetCurrentBenefits()
        local playerLevel = zg.playerData:GetMethod(PlayerDataMethod.BASIC_INFO).level
        enableSkip = (vip.battleUnlockSkip == true or (require.level <= playerLevel and require.stage < zg.playerData:GetCampaignData().stageNext)) and canSkip == true
    end
    self.config.canSkip:SetActive(enableSkip)
    self.config.battleButtonNotSkip.gameObject:SetActive(not enableSkip)
end

--- @start world
function UIFormationView:InitWorldFormation()
    if self.worldFormation == nil then
        local transform = SmartPool.Instance:SpawnTransform(AssetType.UI, "world_formation")
        self.worldFormation = WorldFormation(transform)
    end
    self.worldFormation.swapCallback = function(hero1, hero2)
        self:CallbackSwapHero(hero1, hero2)
    end
    self.worldFormation.removeCallback = function(hero)
        self:CallbackRemove(hero)
    end
    self.worldFormation.selectSummonerCallback = function()
        self:CallbackSelectSummoner()
    end
end

function UIFormationView:OnShowWorldFormation()
    self.worldFormation:SetAttackerFormation(self.model.teamFormation.formationId)
    self.worldFormation:SetDefenderPredefineTeamData(self.model.defenderTeamInfo)
    self.coroutine = Coroutine.start(function()
        coroutine.waitforseconds(0.15)
        ---@type DetailTeamFormation
        local detailTeamFormation = DetailTeamFormation.CreateByTeamFormationInBound(self.model.teamFormation, self.listHeroResource)
        self.worldFormation:ShowAttackerPredefineTeam(detailTeamFormation)
        self.worldFormation:ShowAttackerSummoner(self.model.teamFormation.summonerId, self.summonerInbound.star)
    end)
end

--- @param isEnable boolean
function UIFormationView:EnableDefenderTeam(isEnable)
    self.worldFormation:EnableDefenderTeamView(isEnable)
end
--- @end world

--- @param isEnable boolean
function UIFormationView:ShowListHero(isEnable)
    --if isEnable == true then
    --self.config.groupSelectHero:SetActive(true)
    --self.heroList.uiScroll:RefreshCells()
    --self.config.defenderInfo:SetActive(false)
    --else
    --self.config.groupSelectHero:SetActive(false)
    --self.config.defenderInfo:SetActive(true)
    --local companionBuff = ClientConfigUtils.GetCompanionIdByBattleTeamInfo(self.model.defenderTeamInfo)
    --self.config.companion2.sprite = ResourceLoadUtils.LoadCompanionBuffOnIcon(companionBuff)
    --end
end

--- @return void
--- @param result {gameMode:GameMode, formationTeamData:UIFormationTeamData, rewardList:List<ItemIconData>, tittle}
function UIFormationView:_Init(result)
    if result ~= nil then
        if result.cache == nil then
            self.model.currentMode = result.gameMode
            if self.model.currentMode ~= nil then
                self.model.teamFormation = TeamFormationInBound.Clone(zg.playerData:GetFormationInBound().teamDict:Get(self.model.currentMode))
                --if result.gameMode ~= GameMode.DOMAINS then
                --end
            end
            self.model.defenderTeamInfo = result.battleTeamInfo
            self.callbackPlayBattle = result.callbackPlayBattle
        end

        self.worldFormation = result.worldFormation
        if result.returnWorldFormation ~= nil then
            self.cacheWorldFormation = true
            result.returnWorldFormation = function()
                return self.worldFormation
            end
        end

        if result.tittle ~= nil then
            self.config.localizeBattle.text = result.tittle
        else
            self.config.localizeBattle.text = LanguageUtils.LocalizeCommon("battle")
        end

        if self.model.teamFormation == nil then
            self.model.teamFormation = TeamFormationInBound()
            self.model.teamFormation:SetDefaultTeam()
        else
            self.model.teamFormation:CheckHeroId(self.listHeroResource)
        end
        self:UpdateTeamFormation()
        self:CheckCanSkip(result.canSkip)

        if self.model.defenderTeamInfo == nil then
            self.config.powerDefender:SetActive(false)

        else
            self.config.powerDefender:SetActive(true)

            if result.cache == nil then
                self.powerDefenderTeam = result.powerDefenderTeam
            end
            if self.powerDefenderTeam == nil then
                self.powerDefenderTeam = ClientConfigUtils.GetPowerByBattleTeamInfo(self.model.defenderTeamInfo)
            end
            self.config.textPowerDefender.text = tostring(math.floor(self.powerDefenderTeam))
            self:UpdateLinkingDefenderTeam()
        end
        self:SetHeroListData()

        if self.canPlayMotion == true then
            self.canPlayMotion = false
        end
        self.tab:Select(self.model.teamFormation.formationId)

        self:SetUpLayout(result)
    end
end

function UIFormationView:Hide()
    ClientConfigUtils.KillCoroutine(self.coroutine)
    self:HideWorldFormation()
    self.heroList:ReturnPool()
    self:RemoveListenerTutorial()
    self.cacheResult = nil
    self.isShowing = false
    UIBaseView.Hide(self)
    self.tab:Select(nil)
end

function UIFormationView:HideWorldFormation()
    if self.worldFormation ~= nil and self.cacheWorldFormation ~= true then
        self.worldFormation:OnHide()
        self.worldFormation = nil
    end
end

--- @return void
function UIFormationView:UpdatePowerAttacker()
    ---@type BattleTeamInfo
    local battleTeamInfo = ClientConfigUtils.GetAttackCurrentBattleTeamInfoByTeamFormationInBound(self.model.teamFormation, self.model.gameMode, self.listHeroResource)
    self.powerAttacker = math.floor(ClientConfigUtils.GetPowerByBattleTeamInfo(battleTeamInfo))
    self.config.textPowerAttacker.text = tostring(self.powerAttacker)
end

--- @return void
function UIFormationView:ChangeTeam()
    self.model.teamFormation:ChangeFormationId(self.tab.indexTab)
    self.worldFormation:SetAttackerFormation(self.model.teamFormation.formationId)
    ---@type DetailTeamFormation
    local detailTeamFormation = DetailTeamFormation.CreateByTeamFormationInBound(self.model.teamFormation, self.listHeroResource)
    self.worldFormation:ShowAttackerPredefineTeam(detailTeamFormation)
end

--- @return void
--- @param heroResource HeroResource
function UIFormationView:AddHeroToTeam(heroResource)
    local isFrontLine, position = self.model.teamFormation:AddHeroInventoryId(heroResource.inventoryId)
    self.worldFormation:SetHeroAtPosition(true, isFrontLine, position, heroResource)
    self.worldFormation:ResetButtonSlot()
end

--- @return void
--- @param inventoryId number
function UIFormationView:RemoveHeroFromTeam(inventoryId)
    local isFrontLine, position = self.model.teamFormation:RemoveHeroInventoryId(inventoryId)
    self.worldFormation:RemoveHeroAtPosition(true, isFrontLine, position)
end

--- @return void
--- @param hero1 {isFrontLine, positionId}
--- @param hero2 {isFrontLine, positionId}
function UIFormationView:CallbackSwapHero(hero1, hero2)
    self.model.teamFormation:SwapHero(hero1, hero2)
    self:UpdateTeamFormation()
end

--- @param hero {isFrontLine, positionId}
function UIFormationView:CallbackRemove(hero)
    self.model.teamFormation:RemoveHeroPosition(hero)
    self.heroList.uiScroll:RefreshCells()
    self:UpdateTeamFormation()
end

function UIFormationView:CallbackSelectSummoner()
    if self.summonerInbound.star > 3 then
        if self.model.teamFormation:IsContainHeroInFormation() then
            local dataFormation = self.cacheResult
            dataFormation.cache = true
            local data = {}
            data.summonerId = self.model.teamFormation.summonerId
            data.callbackSwitch = function(summonerId)
                dataFormation.worldFormation = nil
                self.model.teamFormation.summonerId = summonerId
                self.model.currentMode = dataFormation.gameMode
                if self.model.currentMode ~= nil
                        and self.model.currentMode ~= GameMode.ARENA
                        and self.model.currentMode ~= GameMode.GUILD_WAR then
                    self:SaveFormationServer(function()
                        PopupMgr.ShowAndHidePopup(UIPopupName.UIFormation, dataFormation, UIPopupName.UISwitchCharacter)
                    end)
                else
                    PopupMgr.ShowAndHidePopup(UIPopupName.UIFormation, dataFormation, UIPopupName.UISwitchCharacter)
                end
            end
            data.callbackClose = function()
                dataFormation.worldFormation = nil
                PopupMgr.ShowAndHidePopup(UIPopupName.UIFormation, dataFormation, UIPopupName.UISwitchCharacter)
            end
            self.cacheWorldFormation = false
            PopupMgr.ShowAndHidePopup(UIPopupName.UISwitchCharacter, data, UIPopupName.UIFormation)
        else
            SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("insert_least_one_hero"))
        end
    end
end

--- @return void
---@param listHero List
---@param rectTransform UnityEngine_RectTransform
---@param listLinkingReturn List
function UIFormationView:SetListLinking(listHero, rectTransform, listLinkingReturn)
    listLinkingReturn:Clear()
    for i = 1, rectTransform.childCount do
        rectTransform:GetChild(i - 1).gameObject:SetActive(false)
    end
    local index = 0
    -----@param v BaseLinking
    --for _, v in pairs(ResourceMgr.GetServiceConfig():GetHeroes().heroLinkingEntries:GetItems()) do
    --	local active = true
    --	for _, heroId in pairs(v.affectedHero:GetItems()) do
    --		if listHero:IsContainValue(heroId) == false then
    --			active = false
    --			break
    --		end
    --	end
    --	if active == true then
    --		listLinkingReturn:Add(v.id)
    --		---@type UnityEngine_UI_Image
    --		local image = rectTransform:GetChild(index):GetComponent(ComponentName.UnityEngine_UI_Image)
    --		image.gameObject:SetActive(true)
    --		image.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconLinking, v.id)
    --		index = index + 1
    --	end
    --end
end

--- @return void
function UIFormationView:UpdateLinkingTeamFormation()
    ---@type List
    local listHeroId = self.model.teamFormation:GetListHeroId()
    self:SetListLinking(listHeroId, self.config.linkingAttacker, self.listLinking1)
end

--- @return void
function UIFormationView:UpdateLinkingDefenderTeam()
    ---@type List
    local listHeroId = List()
    ---@param v HeroBattleInfo
    for _, v in pairs(self.model.defenderTeamInfo.listHeroInfo:GetItems()) do
        if v.heroId > 0 and listHeroId:IsContainValue(v.heroId) == false then
            listHeroId:Add(v.heroId)
        end
    end
    self:SetListLinking(listHeroId, self.config.linkingDefender, self.listLinking2)
end

--- @return void
function UIFormationView:UpdateTeamFormation()
    self:UpdateLinkingTeamFormation()
    self:UpdatePowerAttacker()
    self:UpdateCompanionBuff()
end

--- @return void
function UIFormationView:UpdateCompanionBuff()
    local companionBuff = ClientConfigUtils.GetCompanionIdBuyTeamFormation(self.model.teamFormation)
    self.config.companion1.sprite = ResourceLoadUtils.LoadCompanionBuffOnIcon(companionBuff)
end

function UIFormationView:OnClickLinkingAttacker(index)
    local linkingId = self.listLinking1:Get(index)
    self.config.linkingSelected:SetParent(self.config.linkingAttacker:GetChild(index - 1))
    self.config.linkingSelected.localPosition = U_Vector3.zero
    self.config.linkingSelected.gameObject:SetActive(true)
    PopupMgr.ShowPopup(UIPopupName.UIPopupLinking, { ["id"] = linkingId, ["anchor"] = U_Vector2(0.5, 1),
                                                     ["position"] = self.config.linkingPos1.position, ["callbackClose"] = function()
            PopupMgr.HidePopup(UIPopupName.UIPopupLinking)
            self.config.linkingSelected.gameObject:SetActive(false)
            self.worldFormation:EnableLinking(BattleConstants.ATTACKER_TEAM_ID, false)
        end })
    -----@param v BaseLinking
    --for _, v in pairs(ResourceMgr.GetServiceConfig():GetHeroes().heroLinkingEntries:GetItems()) do
    --	if v.id == linkingId then
    --		self.worldFormation:EnableLinking(BattleConstants.ATTACKER_TEAM_ID, true, v.affectedHero)
    --		break
    --	end
    --end
end

function UIFormationView:OnClickLinkingDefender(index)
    local linkingId = self.listLinking2:Get(index)
    self.config.linkingSelected:SetParent(self.config.linkingDefender:GetChild(index - 1))
    self.config.linkingSelected.localPosition = U_Vector3.zero
    self.config.linkingSelected.gameObject:SetActive(true)
    PopupMgr.ShowPopup(UIPopupName.UIPopupLinking, { ["id"] = linkingId, ["anchor"] = U_Vector2(0.5, 1),
                                                     ["position"] = self.config.linkingPos2.position, ["callbackClose"] = function()
            PopupMgr.HidePopup(UIPopupName.UIPopupLinking)
            self.config.linkingSelected.gameObject:SetActive(false)
            self.worldFormation:EnableLinking(BattleConstants.DEFENDER_TEAM_ID, false)
        end })
    -----@param v BaseLinking
    --for _, v in pairs(ResourceMgr.GetServiceConfig():GetHeroes().heroLinkingEntries:GetItems()) do
    --	if v.id == linkingId then
    --		self.worldFormation:EnableLinking(BattleConstants.DEFENDER_TEAM_ID, true, v.affectedHero)
    --		break
    --	end
    --end
end

function UIFormationView:OnClickCompanion1()
    local data = {}
    data.companionId = ClientConfigUtils.GetCompanionIdBuyTeamFormation(self.model.teamFormation)
    data.summonerId = self.summonerInbound.summonerId
    data.summonerStar = self.summonerInbound.star
    PopupMgr.ShowPopup(UIPopupName.UICompanionCollection, data)
end

function UIFormationView:OnClickCompanion2()
    local data = {}
    data.companionId = ClientConfigUtils.GetCompanionIdByBattleTeamInfo(self.model.defenderTeamInfo)
    data.summonerId = self.model.defenderTeamInfo.summonerBattleInfo.summonerId
    data.summonerStar = self.model.defenderTeamInfo.summonerBattleInfo.star
    PopupMgr.ShowPopup(UIPopupName.UICompanionCollection, data)
end

function UIFormationView:OnClickSkip()
    self:OnClickBattle(true)
end

---@return void
function UIFormationView:SaveFormationLocal()
    if self.model.currentMode ~= nil then
        zg.playerData:GetFormationInBound().teamDict:Add(self.model.currentMode, TeamFormationInBound.Clone(self.model.teamFormation))
    end
end

--- @param onSuccess function
function UIFormationView:SaveFormationServer(onSuccess, showWaiting)
    local formationInBound = zg.playerData:GetFormationInBound()
    local saveLocal = function()
        self:SaveFormationLocal()
        if onSuccess ~= nil then
            onSuccess()
        end
    end

    if self.model.currentMode ~= nil
            and self.model.currentMode ~= GameMode.ARENA
            and self.model.currentMode ~= GameMode.GUILD_WAR then
        if self.model.teamFormation:Equal(formationInBound.teamDict:Get(self.model.currentMode)) == false then
            local battleFormationOutBound = BattleFormationOutBound(UIFormationTeamData.CreateByTeamFormationInBound(self.model.teamFormation, self.listHeroResource))
            NetworkUtils.RequestAndCallback(OpCode.FORMATION_SET, SetFormationOutBound(battleFormationOutBound, self.model.currentMode), function()
                saveLocal()
            end, function()
                if self.model.currentMode == GameMode.DOMAINS then
                    saveLocal()
                end
            end, nil, showWaiting)
        end
    elseif self.model.teamFormation:Equal(formationInBound.teamDict:Get(self.model.currentMode)) == false then
        self.cacheWorldFormation = false
        if self.cacheResult ~= nil then
            self.cacheResult.returnWorldFormation = function()
                return nil
            end
        end
    end
end

---@return void
function UIFormationView:OnClickBattle(isSkip)
    if self.model.teamFormation ~= nil and self.model.teamFormation:IsContainHeroInFormation() then
        local callbackSuccess = function(defenderTeamInfoOverride, isSkipResult)
            zg.battleMgr.gameMode = self.model.currentMode
            self:SaveFormationLocal()
            if defenderTeamInfoOverride ~= nil then
                self.model.defenderTeamInfo = defenderTeamInfoOverride
            end

            if isSkipResult ~= true then
                ---@type BattleTeamInfo
                local attackerBattleTeamInfo = ClientConfigUtils.GetAttackCurrentBattleTeamInfoByMode(self.model.currentMode, self.listHeroResource)
                if isSkip == true then
                    zg.battleMgr:RunVirtualBattle(attackerBattleTeamInfo, self.model.defenderTeamInfo, self.model.currentMode, nil, RunMode.FASTEST)
                    local data = {}
                    data.gameMode = self.model.currentMode
                    data.result = ClientBattleData.battleResult
                    data.clientLogDetail = ClientBattleData.clientLogDetail

                    if ClientBattleData.battleResult.winnerTeam == BattleConstants.ATTACKER_TEAM_ID then
                        data.callbackClose = function()
                            PopupMgr.HidePopup(UIPopupName.UIVictory)
                            self:OnReadyHide()
                        end
                        PopupMgr.ShowPopup(UIPopupName.UIVictory, data)
                    else
                        data.callbackClose = function()
                            PopupMgr.HidePopup(UIPopupName.UIDefeat)
                            self:OnReadyHide()
                        end
                        data.callbackUpgrade = function(popupName)
                            PopupMgr.HidePopup(UIPopupName.UIDefeat)
                            PopupMgr.HidePopup(UIPopupName.UIFormation)
                            if popupName == UIPopupName.UIHeroCollection then
                                PopupMgr.ShowPopup(UIPopupName.UIMainArea)
                            end
                            PopupMgr.ShowPopup(popupName)
                        end
                        PopupMgr.ShowPopup(UIPopupName.UIDefeat, data)
                    end
                else
                    zg.battleMgr:RunCalculatedBattleScene(attackerBattleTeamInfo, self.model.defenderTeamInfo, self.model.currentMode)
                end
            end
        end
        if self.callbackPlayBattle ~= nil then
            if self.model.currentMode == GameMode.FRIEND_BATTLE
                    or self.model.currentMode == GameMode.GUILD_DUNGEON
                    or self.model.currentMode == GameMode.GUILD_BOSS then
                self:SaveFormationServer(nil, false)
            end
            if self.model.currentMode == GameMode.DOMAINS then
                zg.playerData:GetFormationInBound():AddTeamFormationInBound(self.model.currentMode, self.model.teamFormation)
                self.callbackPlayBattle(UIFormationTeamData.CreateByTeamFormationInBoundAndListHeroResource(self.model.teamFormation, self.listHeroResource), callbackSuccess, self.powerAttacker)
            else
                self.callbackPlayBattle(UIFormationTeamData.CreateByTeamFormationInBound(self.model.teamFormation), callbackSuccess, self.powerAttacker)
            end
        end
    else
        zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
        SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeCommon("insert_least_one_hero"))
    end
end

--- @return void
---@param tutorial UITutorialView
---@param step number
function UIFormationView:ShowTutorial(tutorial, step)
    --XDebug.Log(step)
    if step == TutorialStep.FORMATION_SELECT_HERO_1 then
        tutorial:ViewFocusCurrentTutorial(self.heroList.uiScroll.scroll.content:GetChild(0):
        GetComponent(ComponentName.UnityEngine_UI_Button), 0.5, nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.FORMATION_SELECT_HERO_2 then
        tutorial:ViewFocusCurrentTutorial(self.heroList.uiScroll.scroll.content:GetChild(1):
        GetComponent(ComponentName.UnityEngine_UI_Button), 0.5, nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.FORMATION_BUFF then
        tutorial:ViewFocusCurrentTutorial(nil, 2, function()
            return self.config.transform.position + U_Vector3(-4, -0.5, 0)
        end)
    elseif step == TutorialStep.FORMATION_BATTLE_CLICK then
        ---@type UnityEngine_UI_Button
        local buttonBattle = self.config.battleButtonNotSkip
        if buttonBattle.gameObject.activeInHierarchy == false then
            buttonBattle = self.config.battleButton
        end
        tutorial:ViewFocusCurrentTutorial(buttonBattle, U_Vector2(500, 150), nil, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.POSITION_2 then
        ---@type UnityEngine_UI_Button
        local button = self.worldFormation.attackerWorldFormation.worldFormation:GetAttackerButtonSlotByPosition(true, 2)
        tutorial:ViewFocusCurrentTutorial(button, 0.5, function()
            return self.worldFormation:GetPositionUI(button.transform)
        end, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.POSITION_3 then
        ---@type UnityEngine_UI_Button
        local button = self.worldFormation.attackerWorldFormation.worldFormation:GetAttackerButtonSlotByPosition(false, 1)
        tutorial:ViewFocusCurrentTutorial(button, 0.5, function()
            return self.worldFormation:GetPositionUI(button.transform)
        end, nil, TutorialHandType.CLICK)
    elseif step == TutorialStep.FORMATION_DRAG_HERO then
        ---@type UnityEngine_UI_Button
        local button1 = self.worldFormation.attackerWorldFormation.worldFormation:GetAttackerButtonSlotByPosition(true, 2)
        ---@type UnityEngine_Vector3
        local position1 = self.worldFormation:WorldToScreen(button1.transform.position + U_Vector3.down)
        ---@type UnityEngine_UI_Button
        local button2 = self.worldFormation.attackerWorldFormation.worldFormation:GetAttackerButtonSlotByPosition(false, 2)
        ---@type UnityEngine_Vector3
        local position2 = self.worldFormation:WorldToScreen(button2.transform.position + U_Vector3.down)
        local down = function()
            --XDebug.Log("DRAG DOWN")
            self.worldFormation:SlotTriggerPointerDown(true, { ["isFrontLine"] = true, ["positionId"] = 2 })
        end
        local drag = function(p)
            self.worldFormation:SlotTriggerPointerDrag(true, p)
        end
        local upSuccess = function(p)
            --XDebug.Log("DRAG SUCCESS")
            self.worldFormation:SlotTriggerPointerUp(true, p)
            ---@param v HeroFormationInBound
            for i, v in pairs(self.model.teamFormation.backLine:GetItems()) do
                if v.positionId == 2 and v.heroInventoryId ~= nil and v.heroInventoryId > 0 then
                    --XDebug.Log("DRAG HERO SUCCESS")
                    return true
                end
            end
            return false
        end
        local upFail = function()
            --XDebug.Log("DRAG FAIL => RevertTempSwitch")
            self.worldFormation:RevertTempSwitch()
            --XDebug.Log("after RevertTempSwitch")
        end
        local checkDown = function(p, isFrontLine, positionId)
            return self.worldFormation:CheckOverlapSlot(p, isFrontLine, positionId)
        end
        local checkUp = function(p, isFrontLine, positionId)
            --- @type {isFrontLine, positionId}
            local pos = self.worldFormation:GetNearestSlotFromPos(p)
            if pos ~= nil and pos.positionId == positionId and pos.isFrontLine == isFrontLine then
                return true
            else
                return false
            end
        end
        local callbackFailedDrag = function(isFrontLineFrom, positionIdFrom, isFrontLineTo, positionIdTo)
            ---@type HeroResource
            local hero = self.worldFormation.model.attackerTeamFormation:GetHeroResourceByPosition(isFrontLineFrom, positionIdFrom)
            self.worldFormation:RemoveHeroAtPosition(true, isFrontLineFrom, positionIdFrom)
            self.worldFormation:SetHeroAtPosition(true, isFrontLineTo, positionIdTo, hero)
        end
        tutorial:ViewDragCurrentTutorial(position1, position2, down, drag, upSuccess, upFail, checkDown, checkUp, callbackFailedDrag)
    end
end

--- @param bgParams {}
function UIFormationView:ShowBgAnchor(bgParams)
    local bgAnchorTop, bgAnchorBot
    if self.model.currentMode == GameMode.CAMPAIGN then
        local nameBgAnchorTop, nameBgAnchorBot = BattleBackgroundUtils.GetBgPrefixByGameMode(self.model.currentMode)
        local selectBackgroundId = ResourceMgr.GetCampaignDataConfig():GetRandomBgByStage(bgParams, 1)
        bgAnchorTop = nameBgAnchorTop .. selectBackgroundId
        --bgAnchorBot = nameBgAnchorBot .. selectBackgroundId
    else
        bgAnchorTop, bgAnchorBot = BattleBackgroundUtils.GetBgAnchorNameByMode(self.model.currentMode, bgParams)
    end
    self.worldFormation:ShowBgAnchor(bgAnchorTop, bgAnchorBot)
end

function UIFormationView:OnClickRemoveAll()
    ---@param v HeroFormationInBound
    for i, v in pairs(self.model.teamFormation.backLine:GetItems()) do
        self:RemoveHeroFromTeam(v.heroInventoryId)
    end
    ---@param v HeroFormationInBound
    for i, v in pairs(self.model.teamFormation.frontLine:GetItems()) do
        self:RemoveHeroFromTeam(v.heroInventoryId)
    end
    self.heroList.uiScroll:RefreshCells()
    self:UpdateTeamFormation()
end

--- @param data {}
function UIFormationView:SetUpLayout(data)
    local gameMode = self.model.currentMode
    self.config.allowedClasses.gameObject:SetActive(gameMode == GameMode.DOMAINS)
    if gameMode == GameMode.DOMAINS then

        local day = zg.playerData:GetDomainInBound().challengeDay
        local listClassRequire = ResourceMgr.GetDomainConfig():GetDomainConfigByDay(day).classRequire

        self.listIconAllowedClass:Clear()

        for i = 1, listClassRequire:Count() do
            local classData = {}
            local classId = listClassRequire:Get(i)
            classData.icon = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconClassFormation, classId)
            classData.callback = function()
                SmartPoolUtils.ShowShortNotification(LanguageUtils.LocalizeClass(classId))
            end
            self.listIconAllowedClass:Add(classData)
        end

        self.itemsTableView:SetData(self.listIconAllowedClass)
        self.itemsTableView:SetSize(105, 105)
    end
end

function UIFormationView:SetHeroListData()
    --- @type List
    self.listHeroResource = List()
    if self.model.currentMode ~= GameMode.DOMAINS then
        self.listHeroResource = InventoryUtils.Get(ResourceType.Hero)
    else
        --- @type DomainInBound
        local domainInBound = zg.playerData:GetMethod(PlayerDataMethod.DOMAIN)
        self.listHeroResource = domainInBound:GetTeamListHeroResource()
    end
    self.heroList:SetData(self.listHeroResource, self.canPlayMotion)
end