require "lua.client.data.Purchase.CashShop.RawProduct"
require "lua.client.data.Purchase.CashShop.LimitedProduct"
require "lua.client.data.Purchase.CashShop.SubscriptionProduct"
require "lua.client.data.Purchase.CashShop.LevelPassProduct"
require "lua.client.data.Purchase.CashShop.ProgressGroupPackOfProducts"
require "lua.client.data.Purchase.GroupPackOfProducts"
require "lua.client.data.Purchase.CashShop.ProgressProduct"
require "lua.client.data.Purchase.ComebackProducts"

local PURCHASE_RAW_PACK_PATH = "csv/purchase/raw_pack.csv"
local PURCHASE_SUBSCRIPTION_PACK_PATH = "csv/purchase/subscription_pack.csv"
local PURCHASE_LIMITED_PACK_PATH = "csv/purchase/limited_pack.csv"
local PURCHASE_GROWTH_PACK_PATH = "csv/purchase/growth_pack/growth_pack.csv"
local PURCHASE_PROGRESS_PACK_PATH = "csv/purchase/progress/progress_pack.csv"
local PURCHASE_PROGRESS_GROUP_PATH = "csv/purchase/progress/progress_group.csv"
local COMEBACK_BUNDLE_PATH = "csv/comeback/data_%s/bundle_pack.csv"

--- @class CashShop : PurchaseStore
CashShop = Class(CashShop, PurchaseStore)

--- @return void
function CashShop:Ctor()
    PurchaseStore.Ctor(self)
end

function CashShop:InitPack()
    self.packConfigDict = Dictionary()
    self.packConfigDict:Add(OpCode.PURCHASE_RAW_PACK, PackOfProducts(OpCode.PURCHASE_RAW_PACK, RawProduct, PURCHASE_RAW_PACK_PATH))
    self.packConfigDict:Add(OpCode.PURCHASE_LIMITED_PACK, PackOfProducts(OpCode.PURCHASE_LIMITED_PACK, LimitedProduct, PURCHASE_LIMITED_PACK_PATH))
    self.packConfigDict:Add(OpCode.PURCHASE_SUBSCRIPTION_PACK, PackOfProducts(OpCode.PURCHASE_SUBSCRIPTION_PACK, SubscriptionProduct, PURCHASE_SUBSCRIPTION_PACK_PATH))
    self.packConfigDict:Add(OpCode.PURCHASE_GROWTH_PACK, PackOfProducts(OpCode.PURCHASE_GROWTH_PACK, LevelPassProduct, PURCHASE_GROWTH_PACK_PATH))
    self.packConfigDict:Add(OpCode.PURCHASE_PROGRESS_PACK, ProgressGroupPackOfProducts(OpCode.PURCHASE_PROGRESS_PACK, ProgressProduct, PURCHASE_PROGRESS_PACK_PATH, PURCHASE_PROGRESS_GROUP_PATH))
    self.packConfigDict:Add(OpCode.COMEBACK_BUNDLE_PURCHASE, ComebackProducts(OpCode.COMEBACK_BUNDLE_PURCHASE, LimitedProduct, COMEBACK_BUNDLE_PATH))
end

function CashShop:SetKey()
    --- @param purchasePack PackOfProducts
    for _, purchasePack in pairs(self.packConfigDict:GetItems()) do
        --- @param pack ProductConfig
        for _, pack in pairs(purchasePack:GetAllPackBase():GetItems()) do
            pack:SetKey()
        end
    end
end

--- @return ProductConfig
function CashShop:GetSubscription(packId)
    return self:GetPackById(OpCode.PURCHASE_SUBSCRIPTION_PACK, packId)
end

--- @return ComebackProducts
function CashShop:GetComebackProducts()
    return self.packConfigDict:Get(OpCode.COMEBACK_BUNDLE_PURCHASE)
end

--- @return boolean
function CashShop:IsNotificationDailyDeal()
    local noti = false
    --- @param v LimitedProduct
    for i, v in ipairs(self:GetPack(OpCode.PURCHASE_LIMITED_PACK).packList:GetItems()) do
        if v.id > 11 and v.isFree == true and zg.playerData:GetIAP():GetLimitedPackStatisticsInBound(v.id).numberOfBought < v.stock then
            noti = true
            break
        end
    end
    return noti
end