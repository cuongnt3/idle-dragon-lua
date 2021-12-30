--- @class PreviewHeroMenu : BgWorldView
PreviewHeroMenu = Class(PreviewHeroMenu, BgWorldView)

function PreviewHeroMenu:Ctor()
    --- @type UnityEngine_Transform
    self._bgHeroInfo = nil
    --- @type string
    self._bgName = nil

    self:SetPrefabName()
    self:SetConfig(self:GetTransform())

    BgWorldView.Ctor(self, self.config.transform)
end

function PreviewHeroMenu:SetPrefabName()
    self.prefabName = 'preview_hero_menu'
end

function PreviewHeroMenu:SetConfig(transform)
    self:InitConfig(transform)
end

function PreviewHeroMenu:InitConfig(transform)
    --- @type PreviewHeroMenuConfig
    self.config = UIBaseConfig(transform)
    --- @type PreviewHero
    self.previewHero = PreviewHero(self.config.heroAnchor)
end

function PreviewHeroMenu:PlayAttackAnimation()
    self.previewHero:PlayAttackAnimation()
end

function PreviewHeroMenu:LevelUp()
    self:PlayParticle(self.config.fxLevelUp)
end

function PreviewHeroMenu:LevelUpMax()
    self:PlayParticle(self.config.fxLevelUpMax)
end

function PreviewHeroMenu:Evolve()
    self:PlayParticle(self.config.fxEvolve)
end

function PreviewHeroMenu:Awaken()
    self:PlayParticle(self.config.fxAwaken)
end

--- @param particle UnityEngine_ParticleSystem
function PreviewHeroMenu:PlayParticle(particle)
    if particle.isPlaying == true then
        particle:Stop()
    end
    particle:Play()
end

function PreviewHeroMenu:OnShow()
    self:SetActive(true)
end

function PreviewHeroMenu:OnHide()
    BgWorldView.OnHide(self)
    self.previewHero:DespawnHero()
    self:DeSpawnBg()
    self:DespawnFxChangeHero()
end

function PreviewHeroMenu:DeSpawnBg()
    if self._bgHeroInfo ~= nil and self._bgName ~= nil then
        SmartPool.Instance:DespawnGameObject(AssetType.Background, self._bgName, self._bgHeroInfo)
        self._bgHeroInfo = nil
        self._bgName = nil
    end
end

--- @param heroId number
function PreviewHeroMenu:ShowFxChangeSkin(heroId)
    local factionId = ClientConfigUtils.GetFactionIdByHeroId(heroId)
    self:DespawnFxChangeHero()
    self.fxFactionHeroName = "vfx_heroinfo_" .. factionId
    self.fxFactionHero = SmartPool.Instance:SpawnTransform(AssetType.UI, self.fxFactionHeroName)
    self.fxFactionHero.position = self.config.transform.position
end

function PreviewHeroMenu:DespawnFxChangeHero()
    if self.fxFactionHero ~= nil and self.fxFactionHeroName ~= nil then
        SmartPool.Instance:DespawnGameObject(AssetType.UI, self.fxFactionHeroName, self.fxFactionHero)
        self.fxFactionHero = nil
        self.fxFactionHeroName = nil
    end
end

--- @param heroResource HeroResource
--- @param heroModelType HeroModelType
function PreviewHeroMenu:PreviewHero(heroResource, heroModelType, onFinish)
    self.previewHero:PreviewHeroAsync(heroResource, heroModelType, onFinish)
end

--- @param factionType HeroFactionType
--- @param previewHeroBgAnchorType PreviewHeroBgAnchorType
function PreviewHeroMenu:UpdateFactionBackground(factionType, previewHeroBgAnchorType, useNewBg)
    local bgName = string.format("bg_hero_info_%d", factionType)
    if useNewBg == true then
        bgName = bgName .. "_new"
    end
    if bgName == self._bgName then
        return
    end
    self:DeSpawnBg()
    self:SetBgHeroMenuByName(bgName, previewHeroBgAnchorType)
end

--- @param bgName string
--- @param previewHeroBgAnchorType PreviewHeroBgAnchorType
function PreviewHeroMenu:SetBgHeroMenuByName(bgName, previewHeroBgAnchorType)
    if bgName == self._bgName then
        return
    end
    self.config.heroAnchor.localPosition = previewHeroBgAnchorType
    self:DeSpawnBg()
    self._bgName = bgName
    self._bgHeroInfo = SmartPool.Instance:SpawnTransform(AssetType.Background, self._bgName)
    self._bgHeroInfo.position = self.config.transform.position
    self._bgHeroInfo.localScale = U_Vector3.one * 1.15
    self._bgHeroInfo:SetParent(zgUnity.transform)
    self._bgHeroInfo.gameObject:SetActive(true)
end

function PreviewHeroMenu:_DoTweenAnchor(targetPosition)
    self.config.heroAnchor:DOLocalMove(targetPosition, 0.5)
end

--- @class PreviewHeroBgAnchorType
PreviewHeroBgAnchorType = {
    HeroInfo = U_Vector3(0, -2.52, 0),
    HeroEvolve = U_Vector3(1.5, -2.6, 0),
    HeroSkin = U_Vector3(1.26, -2.84, 0),
    HeroSummon = U_Vector3(-5.27, -3.54, 0),
    EventNewHeroSummon = U_Vector3(0, -2.46, 0),
}