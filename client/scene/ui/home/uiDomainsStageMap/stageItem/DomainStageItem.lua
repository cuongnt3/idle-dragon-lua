--- @class DomainStageItem
DomainStageItem = Class(DomainStageItem)

--- @param transform UnityEngine_Transform
function DomainStageItem:Ctor(transform)
    --- @type DomainStageItemConfig
    self.config = UIBaseConfig(transform)

    self:InitConfig()
end

function DomainStageItem:InitConfig()

end

function DomainStageItem:SetActive(isActive)
    self.config.gameObject:SetActive(isActive)
end

--- @param stageStatus StageStatus
function DomainStageItem:SetState(stage, stageStatus)
    self.config.textStage.text = LanguageUtils.LocalizeCommon("stage") .. " " .. stage
    self.config.textCleared.gameObject:SetActive(false)

    self.config.select:SetActive(false)
    self.config.cleared:SetActive(false)
    self.config.lock:SetActive(false)
    self.config.cover:SetActive(false)

    self.config.select:SetActive(stageStatus == StageStatus.CURRENT)
    self.config.cleared:SetActive(stageStatus == StageStatus.PASSED)
    self.config.lock:SetActive(stageStatus == StageStatus.LOCKED)
    self.config.cover:SetActive(stageStatus ~= StageStatus.CURRENT)

    if stageStatus == StageStatus.PASSED then
        self.config.textCleared.text = LanguageUtils.LocalizeCommon("cleared")
        self.config.textCleared.gameObject:SetActive(true)
    end
end

function DomainStageItem:SetCallback(callback)
    self.config.buttonSelect.onClick:RemoveAllListeners()
    self.config.buttonSelect.onClick:AddListener(function ()
        zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
        if callback then
            callback()
        end
    end)
end