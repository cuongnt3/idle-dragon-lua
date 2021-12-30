--- @class WorldSpaceHeroView
WorldSpaceHeroView = Class(WorldSpaceHeroView)

--- @param transform UnityEngine_Transform
function WorldSpaceHeroView:Ctor(transform)
    --- @type WorldSpaceHeroViewConfig
    self.config = UIBaseConfig(transform)
    --- @type PreviewHero
    self.previewHero = PreviewHero(self.config.heroAnchor)
    self.config.gameObject:SetActive(true)
end

--- @param renderTexture UnityEngine_RenderTexture
function WorldSpaceHeroView:Init(renderTexture)
    self.config.camera.targetTexture = renderTexture
end

--- @param heroResource HeroResource
function WorldSpaceHeroView:ShowHero(heroResource)
    self.previewHero:PreviewHero(heroResource)
end

function WorldSpaceHeroView:OnHide()
    self.previewHero:OnHide()
    SmartPool.Instance:DespawnGameObject(AssetType.Battle, "world_space_hero_view", self.config.transform)
end