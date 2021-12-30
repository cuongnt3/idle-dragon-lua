require "lua.client.core.network.summon.SummonResultInBound"
require "lua.client.core.network.summon.EventRateUpSummonResult"
--- @class SummonRequest
SummonRequest = Class(SummonRequest)

--- @return void
--- @param summonType SummonType
--- @param isSingleSummon boolean
--- @param isUseGem boolean
function SummonRequest.Summon(summonType, isSingleSummon, isUseGem, callbackSuccess)
    ---@type TutorialInBound
    local tutorialInBound = zg.playerData:GetMethod(PlayerDataMethod.TUTORIAL)
    local isSumTutorial = UIBaseView.IsActiveTutorial() == true-- or (summonType == SummonType.Heroic and tutorialInBound.summonStep < ResourceMgr.GetTutorialSummonConfig().maxStep )
    local onReceived = function(result)
        --- @type SummonResultInBound
        local summonResult
        --- @param buffer UnifiedNetwork_ByteBuf
        local onBufferReading = function(buffer)
            if summonType == SummonType.RateUp then
                summonResult = SummonResultInBound(buffer)
            elseif summonType == SummonType.NewHero then
                summonResult = SummonResultInBound(buffer)
            elseif summonType == SummonType.NewHero2 then
                summonResult = SummonResultInBound(buffer)
            else
                summonResult = SummonResultInBound(buffer)
            end
        end

        local onSuccess = function()
            if isSumTutorial == true then
                tutorialInBound.summonStep = tutorialInBound.summonStep + 1
            end
            callbackSuccess(summonResult)
            if summonType == SummonType.Basic then
                RxMgr.mktTracking:Next(MktTrackingType.summonBasic, isSingleSummon and 1 or 10)
            elseif summonType == SummonType.Heroic then
                RxMgr.mktTracking:Next(MktTrackingType.summonPre, isSingleSummon and 1 or 10)
            end
        end

        NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, SmartPoolUtils.LogicCodeNotification)
    end


    if isSumTutorial == true then
        NetworkUtils.Request(OpCode.TUTORIAL_SUMMON_HERO, UnknownOutBound.CreateInstance(
                PutMethod.Byte, tutorialInBound.summonStep + 1), onReceived)
    else
        if summonType == SummonType.RateUp then
            NetworkUtils.Request(OpCode.EVENT_RATE_UP, UnknownOutBound.CreateInstance(
                    PutMethod.Bool, isSingleSummon, PutMethod.Bool, isUseGem), onReceived)
        elseif summonType == SummonType.NewHero then
            NetworkUtils.Request(OpCode.EVENT_NEW_HERO_SUMMON, UnknownOutBound.CreateInstance(
                    PutMethod.Bool, isSingleSummon, PutMethod.Bool, isUseGem), onReceived)
        elseif summonType == SummonType.NewHero2 then
            NetworkUtils.Request(OpCode.EVENT_NEW_HERO_RATE_UP_SUMMON, UnknownOutBound.CreateInstance(
                    PutMethod.Bool, isSingleSummon, PutMethod.Bool, isUseGem), onReceived)
        else
            NetworkUtils.Request(OpCode.SUMMON_HERO, UnknownOutBound.CreateInstance(
                    PutMethod.Byte, summonType, PutMethod.Bool, isSingleSummon, PutMethod.Bool, isUseGem), onReceived)
        end
    end
end