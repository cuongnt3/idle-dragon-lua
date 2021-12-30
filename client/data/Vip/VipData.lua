--- @class VipData
VipData = Class(VipData)

--- @return void
function VipData:Ctor()
    ---@type number
    self.vipLevel = nil
    ---@type number
    self.vipPointRequired = nil
    ---@type number
    self.campaignBonusIdleTimeMax = nil
    ---@type number
    self.campaignBonusGold = nil
    ---@type number
    self.campaignBonusMagicPotion = nil
    ---@type number
    self.campaignBonusAutoTrainSlot = nil
    ---@type number
    self.tavernBonusQuest = nil
    ---@type number
    self.raidBonusTurnBuy = nil
    ---@type boolean
    self.casinoUnlockMultipleSpin = nil
    ---@type boolean
    self.casinoUnlockPremiumSpin = nil
    ---@type number
    self.casinoBonusTurnBuyBasicChip = nil
    ---@type boolean
    self.battleUnlockSpeedUp = nil
    ---@type boolean
    self.battleUnlockSkip = nil
    ---@type number
    self.handOfMidasBonusGold = nil
    ---@type boolean
    self.summonUnlockAccumulate = nil
    ---@type number
    self.arenaBonusTicketBuy = nil
    ---@type number
    self.campaignBonusQuickBattleBuyTurn = nil
end

--- @return void
--- @param data string
function VipData:ParseCsv(data)
    self.vipLevel = tonumber(data["vip_level"])
    self.vipPointRequired = tonumber(data["vip_point_required"])
    self.campaignBonusIdleTimeMax = tonumber(data["campaign_bonus_idle_time_max"])
    self.campaignBonusGold = tonumber(data["campaign_bonus_gold"])
    self.campaignBonusMagicPotion = tonumber(data["campaign_bonus_magic_potion"])
    self.campaignBonusAutoTrainSlot = tonumber(data["campaign_bonus_auto_train_slot"])
    self.tavernBonusQuest = tonumber(data["tavern_bonus_quest"])
    self.raidBonusTurnBuy = tonumber(data["raid_bonus_challenge_buy_turn"])
    self.casinoUnlockMultipleSpin = MathUtils.ToBoolean(data["casino_unlock_multiple_spin"])
    self.casinoUnlockPremiumSpin = MathUtils.ToBoolean(data["casino_unlock_premium_spin"])
    self.casinoBonusTurnBuyBasicChip = tonumber(data["casino_bonus_basic_chip_buy_turn"])
    self.battleUnlockSpeedUp = MathUtils.ToBoolean(data["battle_unlock_speed_up"])
    self.battleUnlockSkip = MathUtils.ToBoolean(data["battle_unlock_skip"])
    self.handOfMidasBonusGold = tonumber(data["hand_of_midas_bonus_gold"])
    self.summonUnlockAccumulate = MathUtils.ToBoolean(data["summon_unlock_accumulate"])
    self.arenaBonusTicketBuy = tonumber(data["arena_bonus_ticket_buy_turn"])
    self.campaignBonusQuickBattleBuyTurn = tonumber(data["campaign_bonus_quick_battle_buy_turn"])
end