require "lua.client.scene.ui.home.uiItemPreview.UIItemPreviewChildView"

--- @class UISkinPreviewView : UIBaseView
UISkinPreviewView = Class(UISkinPreviewView, UIBaseView)

--- @return void
--- @param model UISkinPreviewModel
function UISkinPreviewView:Ctor(model)
    ---@type UIItemPreviewChildView
    self.previewChild1 = nil

    -- init variables here
    UIBaseView.Ctor(self, model)
    --- @type UISkinPreviewModel
    self.model = model
end

--- @return void
function UISkinPreviewView:OnReadyCreate()
    UIBaseView.OnReadyCreate(self)
    -- do something here
    ---@type UISkinPreviewConfig
    self.config = UIBaseConfig(self.uiTransform)

    self.previewChild1 = UIItemPreviewChildView(self.config.view1)
    self.config.buttonClose.onClick:AddListener(function()
        self:OnClickBackOrClose()
    end)

    self.config.buttonBuy.onClick:AddListener(function()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        self:OnClickBuy()
    end)
end

--- @return void
function UISkinPreviewView:Init(result)
    self.previewChild1:Show(result)
    local skinId = result.id
    local heroId = ClientConfigUtils.GetHeroIdBySkinId(skinId)
    if self.worldSpaceHeroView == nil then
        ---@type UnityEngine_Transform
        local trans = SmartPool.Instance:SpawnTransform(AssetType.Battle, "world_space_hero_view")
        self.worldSpaceHeroView = WorldSpaceHeroView(trans)
        local renderTexture = U_RenderTexture(1000, 1000, 24, U_RenderTextureFormat.ARGB32)
        self.config.rawImage.texture = renderTexture
        self.worldSpaceHeroView:Init(renderTexture)
    end
    local heroResource = HeroResource()
    heroResource:SetData(-1, heroId, 1, 1)
    heroResource.heroItem:Add(HeroItemSlot.SKIN, skinId)
    self.worldSpaceHeroView:ShowHero(heroResource)
    self.worldSpaceHeroView.config.transform.position = U_Vector3(99000, 99000, 0)
    self.worldSpaceHeroView.config.bg:SetActive(false)
end

--- @param data {type, id}
function UISkinPreviewView:OnReadyShow(data)
    zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_OPEN)
    if data ~= nil then
        self.data = data
        self:Init(data)
    end
end

--- @return void
function UISkinPreviewView:Hide()
    UIBaseView.Hide(self)
    if self.previewChild1 ~= nil then
        self.previewChild1:Hide()
    end
    if self.worldSpaceHeroView ~= nil then
        self.worldSpaceHeroView:OnHide()
        self.worldSpaceHeroView = nil
    end
end

function UISkinPreviewView:OnClickBuy()
    local content = string.format(LanguageUtils.LocalizeCommon("want_to_unlock_skin_s"), LanguageUtils.LocalizeSkinName(self.data.id))
    PopupUtils.ShowPopupNotificationYesNo(content, nil, function()
        XDebug.Log("Fake Claim")
        local listReward = List()
        listReward:Add(RewardInBound.CreateBySingleParam(self.data.type, self.data.id, 1))
        PopupUtils.ClaimAndShowRewardList(listReward)
        self:OnReadyHide()
    end)
end
