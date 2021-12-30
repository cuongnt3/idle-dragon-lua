require "lua.client.battleShow.LogDetail.ClientEffectDetail"
require "lua.client.battleShow.LogDetail.ClientDrowningMarkEffectDetail"

--- @class ClientEffectLogDetailBuilder
ClientEffectLogDetailBuilder = {}

--- @return ClientEffectDetail
--- @param effectLogType EffectLogType
function ClientEffectLogDetailBuilder.Create(effectLogType)
    if effectLogType == EffectLogType.DROWNING_MARK then
        return ClientDrowningMarkEffectDetail(effectLogType)
    end
    return ClientEffectDetail(effectLogType)
end

return ClientEffectLogDetailBuilder