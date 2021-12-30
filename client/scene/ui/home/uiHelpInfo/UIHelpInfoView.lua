--- @class UIHelpInfoView : UIBaseView
UIHelpInfoView = Class(UIHelpInfoView, UIBaseView)

--- @return void
--- @param model UIHelpInfoModel
function UIHelpInfoView:Ctor(model, ctrl)
	---@type UIHelpInfoConfig
	self.config = nil

	UIBaseView.Ctor(self, model, ctrl)
	--- @type UIHelpInfoModel
	self.model = model
end

--- @return void
function UIHelpInfoView:OnReadyCreate()
	---@type UIHelpInfoConfig
	self.config = UIBaseConfig(self.uiTransform)
	self.config.bg.onClick:AddListener(function ()
		self:OnClickBackOrClose()
	end)
end

--- @return void
function UIHelpInfoView:InitLocalization()
	self.config.textTitle.text = LanguageUtils.LocalizeCommon("help")
	self.config.textTapToClose.gameObject:SetActive(false)
end

--- @return void
function UIHelpInfoView:OnReadyShow(result)
	zg.audioMgr:PlaySfxUi(SfxUiType.POPUP_OPEN)
	if result ~= nil then
		self.config.content.text = result
	end
end