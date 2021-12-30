--- @class BuyUtils
BuyUtils = {}

---@type Subscription
local onPurchaseListener

--- @return void
function BuyUtils.InitListener(onComplete)
    if onPurchaseListener ~= nil then
        onPurchaseListener:Unsubscribe()
    end
    onPurchaseListener = RxMgr.buyCompleted:Subscribe(function(isSuccess)
        if isSuccess == true then
            onComplete()
        end
        onPurchaseListener:Unsubscribe()
        onPurchaseListener = nil
    end)
end