--- @class TrackingInBound
TrackingInBound = Class(TrackingInBound)

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function TrackingInBound:Ctor(buffer)
    self.trackingDict = Dictionary()
    self:TriggerServerValue(buffer)
    self:InitListener()
end

--- @return void
function TrackingInBound:InitListener()
    self.listener = RxMgr.changeResource:Subscribe(RxMgr.CreateFunction(self, self._OnChangeResource))
end

--- @return void
--- @param data table
---{['resourceType'] = self.type, ['resourceId'] = resourceId, ['quantity'] = quantity, ['result'] = self._resourceDict:Get(resourceId)})
function TrackingInBound:_OnChangeResource(data)
    local type = data.resourceType
    local resourceId = data.resourceId
    local result = data.result
    local quantity = data.quantity
    if type == ResourceType.Money and quantity ~= 0 then
        if resourceId == MoneyType.GOLD then
            self:GetTracking( quantity > 0 and FBProperties.GOLD_ACHIEVE or FBProperties.GOLD_SPEND):Increase(math.abs(quantity))
        elseif resourceId == MoneyType.GEM then
            self:GetTracking( quantity > 0 and FBProperties.GEM_ACHIEVE or FBProperties.GEM_SPEND):Increase(math.abs(quantity))
        elseif resourceId == MoneyType.VIP_POINT then
            self:GetTracking(FBProperties.VIP_POINT):Assign(result)
        end
    end
end

--- @param buffer UnifiedNetwork_ByteBuf
function TrackingInBound:TriggerServerValue(buffer)
    self:SetTracking(FBProperties.IAP_COUNT, buffer:GetInt())
    --self:SetTracking(FBProperties.REWARDED_VIDEO_COUNT, buffer:GetInt())
    self:SetTracking(FBProperties.GOLD_ACHIEVE, buffer:GetLong())
    self:SetTracking(FBProperties.GOLD_SPEND, buffer:GetLong())
    self:SetTracking(FBProperties.GEM_ACHIEVE, buffer:GetLong())
    self:SetTracking(FBProperties.GEM_SPEND, buffer:GetLong())
end

function TrackingInBound:SetTracking(property, value)
    self:GetTracking(property):Assign(value)
end

--- @param property FBProperties
function TrackingInBound:GetTracking(property)
    --- @type Number
    local tracking = self.trackingDict:Get(property)
    if tracking == nil then
        tracking = Number()
        tracking:Subscribe(function(value)
            --XDebug.Log(string.format("pro: %s, value: %s", tostring(property), tostring(value)))
            TrackingUtils.AddFirebaseProperty(property, value)
        end)
        self.trackingDict:Add(property, tracking)
    end
    return tracking
end


