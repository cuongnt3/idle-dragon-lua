--- @class ProgressProduct : ProductConfig
ProgressProduct = Class(ProgressProduct, ProductConfig)

function ProgressProduct:Ctor()
    ProductConfig.Ctor(self)
    self.opCode = OpCode.PURCHASE_PROGRESS_PACK
    self.isLimited = true
end

--- @return void
function ProgressProduct:ParseCsv(data)
    if data.id ~= nil then
        ProductConfig.ParseCsv(self, data)
        --- @type number
        self.profit = tonumber(data['profit'])
        --- @type number
        self.stock = tonumber(data['stock'])
    end
    self.rewardList:Add(RewardInBound.CreateByParams(data))
end