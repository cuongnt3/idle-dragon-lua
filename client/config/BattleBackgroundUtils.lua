--- @class BattleBackgroundUtils
BattleBackgroundUtils = {}

--- @param gameMode GameMode
function BattleBackgroundUtils.GetBgPrefixByGameMode(gameMode)
    if gameMode == GameMode.CAMPAIGN
            or gameMode == GameMode.RAID then
        return "background_", "back_anchor_bot_"
    elseif gameMode == GameMode.ARENA then
        return "arena_anchor_top", "arena_anchor_bot"
    elseif gameMode == GameMode.DUNGEON then
        return "dungeon_anchor_top", "dungeon_anchor_bot"
    elseif gameMode == GameMode.EVENT_CHRISTMAS then
        return "background_christmas"
    else
        return "arena_anchor_top", "arena_anchor_bot"
    end
end

--- @return string, string
--- @param gameMode GameMode
function BattleBackgroundUtils.GetBgAnchorNameByMode(gameMode, ...)
    local args = { ... }
    local bgAnchorTop, bgAnchorBot = BattleBackgroundUtils.GetBgPrefixByGameMode(gameMode)
    if gameMode == GameMode.CAMPAIGN then
        local stage = args[1]
        local selectBackgroundId = ResourceMgr.GetCampaignDataConfig():GetRandomBgByStage(stage)
        bgAnchorTop = bgAnchorTop .. selectBackgroundId
        bgAnchorBot = bgAnchorBot .. selectBackgroundId
    elseif gameMode == GameMode.TOWER then
        local floor = args[1]
        bgAnchorTop, bgAnchorBot = ResourceMgr.GetTowerConfig():GetBackgroundByFloor(floor)
    elseif gameMode == GameMode.ARENA
            or gameMode == GameMode.DUNGEON
            or gameMode == GameMode.EVENT_CHRISTMAS then
        -- Do nothing
    elseif gameMode == GameMode.RAID then
        bgAnchorTop = bgAnchorTop .. UIRaidModel.raidBgId
        bgAnchorBot = bgAnchorBot .. UIRaidModel.raidBgId
    end
    return bgAnchorTop, bgAnchorBot
end

--- @param stage number
function BattleBackgroundUtils.PreloadDummyCampaignBackground(stage)
    local selectBackgroundId = ResourceMgr.GetCampaignDataConfig():GetRandomBgByStage(stage, 1)
    local nameBgAnchorTop, nameBgAnchorBot = BattleBackgroundUtils.GetBgPrefixByGameMode(GameMode.CAMPAIGN)
    nameBgAnchorTop = nameBgAnchorTop .. selectBackgroundId
    nameBgAnchorBot = nameBgAnchorBot .. selectBackgroundId

    local onSpawned = function(gameObject)
        SmartPool.Instance:DespawnGameObject(AssetType.Background, nameBgAnchorTop, gameObject.transform)
    end
    SmartPool.Instance:SpawnGameObjectAsync(AssetType.Background, nameBgAnchorTop, onSpawned)
end


