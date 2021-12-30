--- @class UIDefeatLayout
UIDefeatLayout = Class(UIDefeatLayout)

--- @param view UIVictoryView
--- @param anchor UnityEngine_RectTransform
function UIDefeatLayout:Ctor(view, anchor)
    --- @type UIVictoryView
    self.view = view
    --- @type UIDefeatConfig
    self.config = view.config
    --- @type UnityEngine_RectTransform
    self.anchor = anchor
    --- @type BattleResult
    self.battleResult = nil

    self:InitLayoutConfig()
    self:InitLocalization()
end


function UIDefeatLayout:InitLayoutConfig()

end

function UIDefeatLayout:InitLocalization()

end

--- @param data {}
function UIDefeatLayout:OnShow(data)
    self:SetUpLayout()
    self:ShowData(data)
end

function UIDefeatLayout:SetUpLayout()
    self.anchor.gameObject:SetActive(true)
end

function UIDefeatLayout:OnHide()

end

--- @param data {}
function UIDefeatLayout:ShowData(data)

end

function UIDefeatLayout:OnFinishAnimation()

end

function UIDefeatLayout:OnClickBackOrClose()
    zg.audioMgr:PlaySfxUi(SfxUiType.BACK)
    self.view:OnReadyHide()
end

function UIDefeatLayout:OnClickBattleLog()
    if ClientBattleData.IsValidData() == false then
        if ClientBattleData.calculationBattle ~= nil then
            ClientBattleData.calculationBattle()
        end
    end
    if ClientBattleData.IsValidData() == true then
        PopupMgr.ShowPopup(UIPopupName.UIBattleLog, {
            ["battleResult"] = ClientBattleData.battleResult,
            ["clientLogDetail"] = ClientBattleData.clientLogDetail })
    else
        XDebug.Error("ERROR battle log")
    end
end