
--- @class UIPopupBuyItemCtrl : UIBaseCtrl
UIPopupBuyItemCtrl = Class(UIPopupBuyItemCtrl, UIBaseCtrl)

--- @return void
--- @param model UIPopupBuyItemModel
function UIPopupBuyItemCtrl:Ctor(model)
	UIBaseCtrl.Ctor(self, model)
end

--- @return void
function UIPopupBuyItemCtrl:UpdateData()
	self.model.priceTotal = math.floor(self.model.data.number * self.model.data.price)
end

