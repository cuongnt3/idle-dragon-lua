require "lua.client.core.network.battleFormation.BattleFormationOutBound"
require "lua.client.core.network.playerData.common.BattleResultInBound"

--- @class BattleFormationRequest
BattleFormationRequest = Class(BattleFormationRequest)

--- @return void
--- @param uiFormationTeamData UIFormationTeamData
--- @param bossCreatedTime number
function BattleFormationRequest.BattleRequest(opCode, uiFormationTeamData, stage, success, failed, bossCreatedTime)
    --- @type BattleResultInBound
    local battleResultInBound
    local onReceived = function(result)
        local injectorRewardList
        --- @param buffer UnifiedNetwork_ByteBuf
        local onBufferReading = function(buffer)
            if buffer ~= nil then
                battleResultInBound = BattleResultInBound.CreateByBuffer(buffer)
                if opCode == OpCode.GUILD_BOSS_CHALLENGE then
                    injectorRewardList = NetworkUtils.GetInjectorRewardInBoundList(buffer)
                end
            end
        end
        local onSuccess = function()
            if success ~= nil then
                success(battleResultInBound, injectorRewardList)
            end
        end
        local onFailed = function(logicCode)
            SmartPoolUtils.LogicCodeNotification(logicCode)
            zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
            if failed ~= nil then
                failed(logicCode)
            end
        end
        NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, onFailed)
    end
    NetworkUtils.Request(opCode, BattleFormationOutBound(uiFormationTeamData, bossCreatedTime, stage), onReceived)
end

--- @return void
--- @param uiFormationTeamData UIFormationTeamData
--- @param bossCreatedTime number
function BattleFormationRequest.BattleRequestInjectRewardEvent(opCode, uiFormationTeamData, stage, success, failed, bossCreatedTime)
    zg.playerData:CheckDataLinking(function()
        --- @type BattleResultInBound
        local battleResultInBound
        local listRewardInject
        local onReceived = function(result)
            --- @param buffer UnifiedNetwork_ByteBuf
            local onBufferReading = function(buffer)
                if buffer ~= nil then
                    battleResultInBound = BattleResultInBound.CreateByBuffer(buffer)
                    listRewardInject = NetworkUtils.GetInjectorRewardInBoundList(buffer)
                end
            end
            local onSuccess = function()
                if success ~= nil then
                    success(battleResultInBound, listRewardInject)
                end
            end
            local onFailed = function(logicCode)
                SmartPoolUtils.LogicCodeNotification(logicCode)
                zg.audioMgr:PlaySfxUi(SfxUiType.DENIED)
                if failed ~= nil then
                    failed(logicCode)
                end
            end
            NetworkUtils.ExecuteResult(result, onBufferReading, onSuccess, onFailed)
        end
        NetworkUtils.Request(opCode, BattleFormationOutBound(uiFormationTeamData, bossCreatedTime, stage), onReceived)
    end, true)
end