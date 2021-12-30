--- @class UILoadingCtrl : UIBaseCtrl
UILoadingCtrl = Class(UILoadingCtrl, UIBaseCtrl)

--- @return void
--- @param model UILoadingModel
function UILoadingCtrl:Ctor(model)
	self.loadingCoroutine = nil

	UIBaseCtrl.Ctor(self, model)
	--- @type UILoadingModel
	self.model = self.model

	self:InitListener()
end

--- @return void
function UILoadingCtrl:InitListener()
	self.finishLoading = RxMgr.finishLoading:Subscribe(RxMgr.CreateFunction(self, self.FinishLoading))
end

--- @return void
function UILoadingCtrl:Show()
	--self.model.isTriggerFinish = false
	self.model.loadingSubject:Next(0)
	self.loadingCoroutine = Coroutine.start(function()
		while self.model.loadingPercent < self.model.timeCheck do
			coroutine.waitforseconds(self.model.stepTime)
			self.model.loadingPercent = self.model.loadingPercent + 1
			self.model.loadingSubject:Next(self.model.loadingPercent)
		end

		while self.model.isTriggerFinish == false do
			coroutine.waitforendofframe()
		end

		while self.model.loadingPercent <= self.model.totalUpdateTimes do
			coroutine.waitforseconds(self.model.stepTime)
			self.model.loadingPercent = self.model.loadingPercent + 1
			self.model.loadingSubject:Next(self.model.loadingPercent)
		end

		Coroutine.stop(self.loadingCoroutine)
	end)
end

--- @return void
function UILoadingCtrl:FinishLoading()
	self.model.isTriggerFinish = true
end

