--- @class ProductConfig
ProductConfig = Class(ProductConfig)

--- @return void
function ProductConfig:Ctor()
    --- @type number
    self.id = nil
    --- @type number
    self.dataId = nil -- use when the same opCode but can config others data
    --- @type OpCode
    self.opCode = nil
    --- @type number
    self.dollarPrice = nil
    --- @type RewardInBound
    self.bonusReward = nil
    --- @type string
    self.productID = nil
    --- @type number
    self.stock = nil
    --- @type boolean
    self.isLimited = false
    --- @type List | <RewardInBound>
    self.rewardList = List()
    --- @type boolean
    self.isFree = false
    --- @type string
    self.sungameProductId = nil
    --- @type string
    self.sungameWebProductId = nil
    --- @type PackViewType
    self.viewType = nil
end

--- @return void
--- @param data string
function ProductConfig:ParseCsv(data)
    self.id = tonumber(data["id"])

    local androidPackageNameKey = self:GetPackageNameConfigKey(DeviceOs.Android)
    self.androidPackageName = data[androidPackageNameKey]

    local iosPackageNameKey = self:GetPackageNameConfigKey(DeviceOs.iPhone)
    self.iosPackageName = data[iosPackageNameKey]

    self.dollarPrice = data["price"]
    self.stock = tonumber(data["stock"])
    --- @type PackViewType
    self.viewType = tonumber(data["view_type"])

    local free = data["is_free"]
    if free ~= nil then
        self.isFree = MathUtils.ToBoolean(free)
    else
        self.isFree = false
    end

    if IS_VIET_NAM_VERSION then
        local sungameProductId = data["sg_product_id"]
        if sungameProductId then
            self.sungameProductId = sungameProductId
            local csvWebId = data["sg_product_web_id"]
            if csvWebId ~= nil then
                self.sungameWebProductId = csvWebId
            else
                self.sungameWebProductId = "WEB_" .. self.sungameProductId
            end
        end
    end
end

--- @return void
function ProductConfig:SetKey()
    --XDebug.Log("opcode: " .. tostring(self.opCode) .. ", id: " .. tostring(self.id) .. ", dataId: " .. tostring(self.dataId))
    self.productID = ClientConfigUtils.GetPurchaseKey(self.opCode, self.id, self.dataId)
end

--- @return number, List
function ProductConfig:GetReward(_list)
    ---@type List
    local list = _list or self.rewardList
    local vipReward
    local rewardList = List()
    --- @param v RewardInBound
    for _, v in ipairs(list:GetItems()) do
        if v.type == ResourceType.Money and v.id == MoneyType.VIP_POINT then
            vipReward = v.number
        else
            rewardList:Add(v)
        end
    end
    return vipReward, rewardList
end

--- @return List -- RewardInBound
function ProductConfig:GetRewardList()
    return self.rewardList
end

function ProductConfig:ClaimAndShowRewardList()
    ---@type List <RewardInBound>
    local rewardList = List()
    for i, v in ipairs(self.rewardList:GetItems()) do
        rewardList:Add(v)
    end
    if self.bonusReward ~= nil then
        rewardList:Add(self.bonusReward)
    end
    if self.listSelectReward ~= nil then
        for i, v in ipairs(self.listSelectReward:GetItems()) do
            rewardList:Add(v)
        end
    end
    PopupUtils.ClaimAndShowRewardList(rewardList)
end

function ProductConfig:GetPackageNameByDeviceOs(deviceOs)
    deviceOs = deviceOs or ClientConfigUtils.GetDeviceOS()
    if deviceOs == DeviceOs.iPhone then
        return self.iosPackageName
    else
        return self.androidPackageName
    end
end

--- @return string
--- @param deviceOs DeviceOs
function ProductConfig:GetPackageNameConfigKey(deviceOs)
    if deviceOs == DeviceOs.Android then
        if IS_VIET_NAM_VERSION then
            return "sungame_android_package_name"
        else
            return "android_package_name"
        end
    elseif deviceOs == DeviceOs.iPhone then
        if IS_VIET_NAM_VERSION then
            return "sungame_ios_package_name"
        else
            return "ios_package_name"
        end
    end
end

--- @return string
function ProductConfig:GetSungamePackId()
    return self.sungameProductId
end

--- @return string
function ProductConfig:GetSungameWebPackId()
    return self.sungameWebProductId
end