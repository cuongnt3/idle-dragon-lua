--- @class PreviewHero
PreviewHero = Class(PreviewHero)

--- @param heroAnchor UnityEngine_Transform
function PreviewHero:Ctor(heroAnchor)
    --- @type UnityEngine_Transform
    self.heroAnchor = heroAnchor
    --- @type string
    self.prefabName = nil
    --- @type ClientHero
    self.clientHero = nil
end

--- @param heroResource HeroResource
--- @param heroModelType HeroModelType
function PreviewHero:PreviewHero(heroResource, heroModelType)
    self:DespawnHero()
    local skinName = ClientConfigUtils.GetSkinNameByHeroResource(heroResource)
    self.prefabName = string.format("hero_%d_%s", heroResource.heroId, skinName)
    self:_SpawnHeroObject(heroResource, heroModelType)
end

function PreviewHero:PreviewHeroAsync(heroResource, heroModelType, onFinish)
    self:DespawnHero()
    local skinName = ClientConfigUtils.GetSkinNameByHeroResource(heroResource)
    self.prefabName = string.format("hero_%d_%s", heroResource.heroId, skinName)
    local onSpawned = function()
        if onFinish then
            onFinish()
        end
    end
    self:_SpawnHeroObjectAsync(heroResource, heroModelType, onSpawned)
end

function PreviewHero:_SpawnHeroObject(heroResource, heroModelType)
    local gameObject = SmartPool.Instance:SpawnGameObject(AssetType.Hero, self.prefabName)
    self:_OnHeroObjectLoaded(gameObject, heroResource, heroModelType)
end

--- @param heroResource HeroResource
--- @param heroModelType HeroModelType
function PreviewHero:_SpawnHeroObjectAsync(heroResource, heroModelType, onFinish)
    local touchObject = TouchUtils.Spawn("PreviewHero:_SpawnHeroObjectAsync")
    local onSpawned = function(gameObject)
        self:_OnHeroObjectLoaded(gameObject, heroResource, heroModelType)
        touchObject:Enable()
        if onFinish then
            onFinish()
        end
    end
    SmartPool.Instance:SpawnGameObjectAsync(AssetType.Hero, self.prefabName, onSpawned)
end

function PreviewHero:_OnHeroObjectLoaded(gameObject, heroResource, heroModelType)
    UIUtils.SetParent(gameObject.transform, self.heroAnchor)
    gameObject:SetActive(true)
    local luaRequire = ClientConfigUtils.GetClientHeroLuaRequire(heroResource.heroId)
    self.clientHero = require(luaRequire):CreateInstance(heroModelType)
    self.clientHero.gameObject = gameObject
    self.clientHero.components = HeroComponents(gameObject)
    self.clientHero.gameObject:SetActive(true)
    self.clientHero:SetSkinByBaseHero(self:CreatePreviewBaseHero(heroResource))
    self.clientHero:InitAnimationComponent()
    self.clientHero.animation:SetFlipByTeamId(BattleConstants.ATTACKER_TEAM_ID)
    self.clientHero:InitSkill()
    self.clientHero:PlayStartAnimation()
    if heroModelType ~= nil and heroModelType > HeroModelType.Dummy then
        --- @type PlayAnimEffectByFrame
        self.clientHero.playAnimEffectByFrame = PlayAnimEffectByFrame(self.clientHero)
        self.clientHero.playAnimEffectByFrame:CreateConfig(heroResource.heroId, ClientConfigUtils.GetSkinNameByHeroResource(heroResource))
        --- @type PlaySoundEffectByFrame
        self.clientHero.playSoundEffectByFrame = PlaySoundEffectByFrame(self.clientHero)
        self.clientHero.playSoundEffectByFrame:CreateConfig(heroResource.heroId, ClientConfigUtils.GetSkinNameByHeroResource(heroResource))
    end
    self.clientHero:SetPrefabName(self.prefabName)
    zg.battleMgr.previewHeroMgr:AddPreviewHeroInfo(self.prefabName)
end

function PreviewHero:DespawnHero()
    if self.clientHero ~= nil then
        self.clientHero:ReturnPool()
        self.clientHero = nil
    end
end

function PreviewHero:OnShow()

end

function PreviewHero:OnHide()
    self:DespawnHero()
end

--- @return boolean
function PreviewHero:IsHasHero()
    return self.clientHero ~= nil
end

--- @return ClientHero
function PreviewHero:GetClientHero()
    return self.clientHero
end

function PreviewHero:UpdateLayerByAxisY(heightY, orderInLayer)
    if self.clientHero == nil then
        return
    end
    heightY = heightY or self.clientHero.components.transform.position.y
    self.clientHero.animation:UpdateLayer(heightY, orderInLayer)
end

function PreviewHero:PlayAttackAnimation()
    if self.clientHero ~= nil then
        self.clientHero:DoBasicAttack()
    end
end

--- @return BaseHero
--- @param heroResource HeroResource
function PreviewHero:CreatePreviewBaseHero(heroResource)
    local baseHero = BaseHero()
    baseHero.isDummy = false
    baseHero.id = heroResource.heroId
    baseHero.star = heroResource.heroStar
    baseHero.level = heroResource.heroLevel
    baseHero.equipmentController = EquipmentController(baseHero)
    baseHero.equipmentController.equipments = heroResource.heroItem or Dictionary()
    return baseHero
end

function PreviewHero:SetTransformStat(localPosition, localScale)
    self.heroAnchor.localPosition = localPosition
    self.heroAnchor.localScale = localScale
end