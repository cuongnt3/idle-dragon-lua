---COMMENT_CONFIG_HOME    require "lua.client.scene.ui.home.uiGuildDonateHistory.UIGuildDonateHistoryConfig"

--- @class UIGuildDonateHistoryView : UIBaseView
UIGuildDonateHistoryView = Class(UIGuildDonateHistoryView, UIBaseView)

--- @return void
--- @param model UIGuildDonateHistoryModel
function UIGuildDonateHistoryView:Ctor(model)
	--- @type UILoopScroll
	self.uiScroll = nil

	---@type List
	self.listDonate = List()

	UIBaseView.Ctor(self, model)
	--- @type UIGuildDonateHistoryModel
	self.model = model
end

function UIGuildDonateHistoryView:OnReadyCreate()
	---@type UIGuildDonateHistoryConfig
	---@type UIGuildDonateHistoryConfig
	self.config = UIBaseConfig(self.uiTransform)

	--- @param obj GuildDonateHistoryItemView
	--- @param index number
	local onCreateItem = function(obj, index)
		obj:SetIconData(self.listDonate:Get(index + 1))
	end
	self.uiScroll = UILoopScroll(self.config.scroll, UIPoolType.GuildDonateHistoryItemView, onCreateItem)

	self:InitButtonListener()
end

function UIGuildDonateHistoryView:InitLocalization()
	self.config.textTitle.text = LanguageUtils.LocalizeCommon("guild_donate_history")
end

function UIGuildDonateHistoryView:InitButtonListener()
	self.config.buttonClose.onClick:AddListener(function()
		self:OnClickBackOrClose()
	end)
	self.config.buttonBg.onClick:AddListener(function()
		self:OnClickBackOrClose()
	end)
end

function UIGuildDonateHistoryView:OnReadyShow(result)
	if result.dictDonate ~= nil then
		self.listDonate:Clear()
		---@param v EventGuildQuestDonationBoardInBound
		for i, v in pairs(result.dictDonate:GetItems()) do
			v.playerId = i
			self.listDonate:Add(v)
		end
	end
	self.uiScroll:Resize(self.listDonate:Count())
end