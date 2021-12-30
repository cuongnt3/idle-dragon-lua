--- @class HuaweiIapReceipt
HuaweiIapReceipt = Class(HuaweiIapReceipt, IAPReceipt)

function HuaweiIapReceipt:Ctor(content)
    XDebug.Log("Huawei IAP content: " .. content)

    IAPReceipt.Ctor(self)
    self.is_test = false

    local product = json.decode(content)
    self:SetReceipt(product["receipt"])
    IAPReceipt.SetMetaData(self, product["metadata"])
    IAPReceipt.SetProductConfig(self)
end

function HuaweiIapReceipt:SetMetaData(metadata)
    self.isoCurrencyCode = metadata["isoCurrencyCode"]
    self.localizedPrice = metadata["localizedPrice"]
end

--- @param receipt string
function HuaweiIapReceipt:SetReceipt(receipt)
    IAPReceipt.SetReceipt(self, receipt)
    local data = json.decode(receipt)
    print("data ", LogUtils.ToDetail(data))
    self.transaction_id = data["TransactionID"]
    local payLoad = json.decode(data["Payload"])
    print("payload ", LogUtils.ToDetail(payLoad))
    self.pack_name = payLoad["ProductId"]
    self.receipt = data["Payload"]
end

