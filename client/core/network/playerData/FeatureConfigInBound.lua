--- @class FeatureConfigInBound
FeatureConfigInBound = Class(FeatureConfigInBound)

FeatureConfigInBound.VISUAL_UPDATED = false

function FeatureConfigInBound:Ctor()
    --- @type Dictionary
    self.featureConfigDict = Dictionary()
    --- @type number
    self.nextTimeNeedRequest = nil
end

--- @param buffer UnifiedNetwork_ByteBuf
function FeatureConfigInBound:ReadBuffer(buffer)
    self.listFeatureConfig = NetworkUtils.GetListDataInBound(buffer, FeatureItemInBound.CreateByBuffer)
    self:CheckNextRequestTime()
end

function FeatureConfigInBound:CheckNextRequestTime()
    self.featureConfigDict = Dictionary()
    if self.listFeatureConfig:Count() == 0 then
        return
    end

    local productVersion = PRODUCT_VERSION
    local arrPV = productVersion:Split('.')
    if #arrPV < 3 then
        XDebug.Error("Wrong FeatureVersion config format " .. productVersion)
        return
    end
    for i = 1, #arrPV do
        arrPV[i] = tonumber(arrPV[i])
    end

    local svTime = zg.timeMgr:GetServerTime()

    local addFeature = function(featureType, featureItemInBound)
        self.featureConfigDict:Add(featureType, featureItemInBound)
    end

    for i = 1, self.listFeatureConfig:Count() do
        --- @type FeatureItemInBound
        local featureItemInBound = self.listFeatureConfig:Get(i)
        local featureType = featureItemInBound.featureType
        local featureState = featureItemInBound.featureState
        local unlockVersion = featureItemInBound.unlockVersion
        if featureState == FeatureState.LOCK
                or featureState == FeatureState.MAINTAIN then
            addFeature(featureType, featureItemInBound)
        else
            local arrCV = unlockVersion:Split('.')
            if #arrCV < 3 then
                XDebug.Error("Wrong FeatureVersion config format " .. unlockVersion)
                featureItemInBound.featureState = FeatureState.UNLOCK
            else
                local compareVersion = self:CompareVersion(arrPV, arrCV)
                if compareVersion == -1 and featureState == FeatureState.UNLOCK then
                    featureState = FeatureState.LOCK
                elseif featureState == FeatureState.UNLOCK and (compareVersion == 0 and svTime < featureItemInBound.unlockTime) then
                    featureState = FeatureState.LOCK
                elseif featureState == FeatureState.COMING_SOON then

                end
            end
            featureItemInBound.featureState = featureState
            addFeature(featureType, featureItemInBound)
        end
    end
end

--- @return number
--- @param arrCV []
function FeatureConfigInBound:CompareVersion(arrPV, arrCV)
    for i = 1, #arrCV do
        arrCV[i] = tonumber(arrCV[i])
    end
    if arrPV[1] < arrCV[1]
            or (arrPV[1] == arrCV[1] and arrPV[2] < arrCV[2])
            or (arrPV[1] == arrCV[1] and arrPV[2] == arrCV[2] and (arrPV[3] < arrCV[3])) then
        return -1 --- ProductVersion < Config Version
    elseif arrPV[1] == arrCV[1]
            and arrPV[2] == arrCV[2]
            and arrPV[3] == arrCV[3] then
        return 0 --- ProductVersion == Config Version
    else
        --- ProductVersion > Config Version
        return 1
    end
end

--- @return FeatureItemInBound
--- @param featureType FeatureType
function FeatureConfigInBound:GetFeatureConfigInBound(featureType)
    --- @type FeatureItemInBound
    local featureItemInBound = self.featureConfigDict:Get(featureType)
    if featureItemInBound == nil then
        featureItemInBound = FeatureItemInBound()
        featureItemInBound.featureType = featureType
        featureItemInBound.featureState = FeatureState.LOCK
        self.featureConfigDict:Add(featureType, featureItemInBound)
    end
    return featureItemInBound
end

function FeatureConfigInBound.Validate(callback, forceUpdate)
    if forceUpdate == true then
        PlayerDataRequest.RequestAndCallback({ PlayerDataMethod.FEATURE_CONFIG }, function()
            FeatureConfigInBound.VISUAL_UPDATED = false
            RxMgr.featureConfigUpdated:Next()
        end)
    end
end

--- @class FeatureItemInBound
FeatureItemInBound = Class(FeatureItemInBound)

--- @param buffer UnifiedNetwork_ByteBuf
function FeatureItemInBound:ReadBuffer(buffer)
    --- @type FeatureType
    self.featureType = buffer:GetByte()
    --- @type FeatureState
    self.featureState = buffer:GetByte()
    self.unlockTime = buffer:GetLong()
    self.unlockVersion = buffer:GetString()

    if FeatureItemInBound.IsConfigByGO(self.featureType) == false then
        self.featureState = FeatureState.UNLOCK
    end
end

function FeatureItemInBound:IsAvailableToShowButton()
    return self.featureState == FeatureState.UNLOCK
            or self.featureState == FeatureState.COMING_SOON
            or self.featureState == FeatureState.MAINTAIN
end

function FeatureItemInBound:IsAvailableToGoFeature(isShowNotify)
    local showShortNotification = function(result, content)
        if result == false and isShowNotify == true then
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            SmartPoolUtils.ShowShortNotification(content)
        end
    end
    if self.featureState == FeatureState.COMING_SOON then
        --local svTime = zg.timeMgr:GetServerTime()
        --if svTime >= self.unlockTime then
        --    self.featureState = FeatureState.UNLOCK
        --    return true
        --else
        --    zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
        --end
        showShortNotification(false, LanguageUtils.LocalizeCommon("coming_soon"))
        return false
    elseif self.featureState == FeatureState.MAINTAIN then
        showShortNotification(false, LanguageUtils.LocalizeCommon("feature_maintain"))
        return false
    elseif self.featureState == FeatureState.LOCK then
        showShortNotification(false, LanguageUtils.LocalizeCommon("lock"))
        return false
    elseif self.featureState == FeatureState.UNLOCK then
        local svTime = zg.timeMgr:GetServerTime()
        if svTime >= self.unlockTime then
            return true
        else
            local openInTime = self.unlockTime - svTime
            showShortNotification(false, string.format(LanguageUtils.LocalizeCommon("feature_available_in_s"),
                    TimeUtils.GetDeltaTime(openInTime)))
            return false
        end
    end
    return true
end

function FeatureItemInBound.IsConfigByGO(featureType)
    return (featureType >= FeatureType.DEFENSE
            and featureType < FeatureType.MAIL)
            or featureType == FeatureType.DUNGEON
end

--- @return FeatureItemInBound
--- @param buffer UnifiedNetwork_ByteBuf
function FeatureItemInBound.CreateByBuffer(buffer)
    local data = FeatureItemInBound()
    data:ReadBuffer(buffer)
    return data
end