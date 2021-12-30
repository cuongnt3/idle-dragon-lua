--- @class HeroStatusLog
HeroStatusLog = Class(HeroStatusLog)

--- @return void
--- @param hero BaseHero
function HeroStatusLog:Ctor(hero)
    --- @type BaseHero
    self.myHero = hero

    --- @type number
    self.hpPercent = hero.hp:GetStatPercent()

    --- @type number
    self.powerPercent = hero.power:GetStatPercent()

    --- @type List<EffectLog>
    self.effectLogs = self:CreateLogFromEffect(hero.effectController.effectList)

    self.effectList = List()
    self.effectList:AddAll(hero.effectController.effectList)

    if hero.battle:CanRun(RunMode.FAST) then
        --- @type string
        self.heroString = self:GetHeroString(hero)
        --- @type string
        self.heroDetailString = self:GetHeroDetailString(hero)

        --- @type List<EffectLog>
        self.passiveEffectLogs = List()

        --- @type List<EffectLog>
        self.itemEffectLogs = List()

        --- @type List<EffectLog>
        self.masteryEffectLogs = List()

        --- @type List<EffectLog>
        self.companionBuffEffectLogs = List()

        --- @type List<EffectLog>
        self.positionEffectLogs = List()

        --- @type List<EffectLog>
        self.linkingEffectLogs = List()

        --- @type List<EffectLog>
        self.dungeonEffectLogs = List()

        self:CreateLogFromPermanentEffect()
    end
end

--- @return List<EffectLog>
function HeroStatusLog:GetEffectLog()
    local effectLogs = List()
    for i = 1, self.effectList:Count() do
        local effect = self.effectList:Get(i)
        if effect.type == EffectType.STAT_CHANGER then
            local logs = self:GetLogFromStatChangerEffect(effect)
            effectLogs:AddAll(logs)
        else
            local effectLog = EffectLog(effect.duration)
            effectLog:SetEffect(effect)
            effectLogs:Add(effectLog)
        end
    end

    return effectLogs
end


--- @return List<EffectLog>
--- @param effectList List<BaseEffect>
function HeroStatusLog:CreateLogFromEffect(effectList)
    local effectLogs = List()
    for i = 1, effectList:Count() do
        local effect = effectList:Get(i)
        if effect.type == EffectType.STAT_CHANGER then
            local logs = self:GetLogFromStatChangerEffect(effect)
            effectLogs:AddAll(logs)
        else
            local effectLog = EffectLog(effect.duration)
            effectLog:SetEffect(effect)
            effectLogs:Add(effectLog)
        end
    end

    return effectLogs
end

--- @return void
function HeroStatusLog:CreateLogFromPermanentEffect()
    local effectList = self.myHero.effectController.permanentEffectList

    for i = 1, effectList:Count() do
        local effect = effectList:Get(i)
        if effect.type == EffectType.STAT_CHANGER then
            local logs = self:GetLogFromStatChangerEffect(effect)

            if effect.effectSource == StatChangerEffectSource.PASSIVE then
                self.passiveEffectLogs:AddAll(logs)

            elseif effect.effectSource == StatChangerEffectSource.ITEM then
                self.itemEffectLogs:AddAll(logs)

            elseif effect.effectSource == StatChangerEffectSource.MASTERY then
                self.masteryEffectLogs:AddAll(logs)

            elseif effect.effectSource == StatChangerEffectSource.COMPANION_BUFF then
                self.companionBuffEffectLogs:AddAll(logs)

            elseif effect.effectSource == StatChangerEffectSource.LINKING then
                self.linkingEffectLogs:AddAll(logs)

            elseif effect.effectSource == StatChangerEffectSource.POSITION then
                self.positionEffectLogs:AddAll(logs)
            end
        else
            local effectLog = EffectLog(effect.duration)
            effectLog:SetEffect(effect)
            self.passiveEffectLogs:Add(effectLog)
        end
    end
end

--- @return void
--- @param effect BaseEffect
function HeroStatusLog:GetLogFromStatChangerEffect(effect)
    local logs = List()
    for i = 1, effect.statChangerList:Count() do
        local statChanger = effect.statChangerList:Get(i)

        local effectLog = EffectLog(effect.duration)
        effectLog:SetStatChanger(effect.initiator, statChanger, effect.persistentType)
        logs:Add(effectLog)
    end
    return logs
end

--- @return string
--- @param effectLogs List<EffectLog>
function HeroStatusLog:GetPermanentEffectLog(effectLogs)
    local result = ""
    for i = 1, effectLogs:Count() do
        local effect = effectLogs:Get(i)
        result = result .. effect:ToString() .. "\n"
    end
    return result
end

--- @return string
--- @param hero BaseHero
function HeroStatusLog:GetHeroString(hero)
    return string.format("> %s hp = %s, power = %s\n", hero:ToString(), self.hpPercent, self.powerPercent)
end

--- @return string
--- @param hero BaseHero
function HeroStatusLog:GetHeroDetailString(hero)
    return string.format("> %s\n", hero:ToDetailString())
end

--- @return string
--- @param runMode RunMode
function HeroStatusLog:ToString(runMode)
    local result = ""
    if runMode == RunMode.TEST then
        result = self.heroDetailString
    else
        result = self.heroString
    end

    if self.effectLogs:Count() > 0 then
        result = result .. "- EFFECTS:\n"
        for i = 1, self.effectLogs:Count() do
            local effect = self.effectLogs:Get(i)
            result = result .. effect:ToString() .. "\n"
        end
    end

    if runMode == RunMode.TEST then
        if self.passiveEffectLogs:Count() > 0 then
            result = result .. "- PASSIVE EFFECTS:\n"
            result = result .. self:GetPermanentEffectLog(self.passiveEffectLogs)
        end

        if self.itemEffectLogs:Count() > 0 then
            result = result .. "- ITEM EFFECTS:\n"
            result = result .. self:GetPermanentEffectLog(self.itemEffectLogs)
        end

        if self.masteryEffectLogs:Count() > 0 then
            result = result .. "- MASTERY EFFECTS:\n"
            result = result .. self:GetPermanentEffectLog(self.masteryEffectLogs)
        end

        if self.linkingEffectLogs:Count() > 0 then
            result = result .. "- LINKING EFFECTS:\n"
            result = result .. self:GetPermanentEffectLog(self.linkingEffectLogs)
        end

        if self.companionBuffEffectLogs:Count() > 0 then
            result = result .. "- COMPANION EFFECTS:\n"
            result = result .. self:GetPermanentEffectLog(self.companionBuffEffectLogs)
        end

        if self.positionEffectLogs:Count() > 0 then
            result = result .. "- POSITION EFFECTS:\n"
            result = result .. self:GetPermanentEffectLog(self.positionEffectLogs)
        end

        if self.dungeonEffectLogs:Count() > 0 then
            result = result .. "- DUNGEON EFFECTS:\n"
            result = result .. self:GetPermanentEffectLog(self.dungeonEffectLogs)
        end
    end

    result = result .. "\n"
    return result
end