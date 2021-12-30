--- @class TagBuilding
TagBuilding = Class(TagBuilding)

--- @param transform UnityEngine_RectTransform
function TagBuilding:Ctor(transform)
    --- @type TagBuildingConfig
    self.config = UIBaseConfig(transform)
end

--- @param isEnable boolean
function TagBuilding:EnableNotify(isEnable)
    self.config.notify:SetActive(isEnable)
end

--- @param featureType FeatureType
function TagBuilding:SetFeatureIcon(featureType)
    if featureType == nil then
        return
    end
    self.config.featureIcon.sprite = ResourceLoadUtils.LoadSpriteFromAtlas(ResourceLoadUtils.iconFeature, featureType)
end

--- @param featureType FeatureType
function TagBuilding:InitLocalize(featureType)
    self.config.featureName.text = LanguageUtils.LocalizeFeature(featureType)
    if featureType == FeatureType.DOMAINS then
        self.config.featureName.text = string.format("%s (%s)", self.config.featureName.text, LanguageUtils.LocalizeCommon("beta"))
    end
end

--- @param tittle string
function TagBuilding:FixedTittle(tittle)
    self.config.featureName.text = tittle
end

--- @param isEnable boolean
function TagBuilding:Enable(isEnable)
    self.config.gameObject:SetActive(isEnable)
end