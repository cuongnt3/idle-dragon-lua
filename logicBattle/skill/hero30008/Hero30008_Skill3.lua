--- @class Hero30008_Skill3 Kozorg
Hero30008_Skill3 = Class(Hero30008_Skill3, BaseSkill)

---------------------------------------- Initialization ----------------------------------------
--- @return BaseSkill
--- @param id number id of skill (1: activeSkill, 2-4: passiveSkills)
--- @param hero BaseHero
function Hero30008_Skill3:CreateInstance(id, hero)
    return Hero30008_Skill3(id, hero)
end

--- @return void
function Hero30008_Skill3:Init()
    local attackerTeam, defenderTeam = self.myHero.battle:GetTeam()

    local numberMultiBuff = 0
    local allyTeam = TargetSelectorUtils.GetAllyTeam(attackerTeam, defenderTeam, self.myHero.teamId)
    local allyList = allyTeam:GetHeroList()
    local i = 1
    while i <= allyList:Count() do
        local ally = allyList:Get(i)
        if ally.originInfo.faction == HeroFactionType.DARK
                or ally.originInfo.faction == HeroFactionType.FIRE
                or ally.originInfo.faction == HeroFactionType.ABYSS then
            numberMultiBuff = numberMultiBuff + 1
        end
        i = i + 1
    end

    if numberMultiBuff > 0 then
        local statChangeEffect = StatChangerEffect(self.myHero, self.myHero, true)

        local statChanger_1 = StatChanger(true)
        statChanger_1:SetInfo(self.data.statPerFactionBuffType_1, StatChangerCalculationType.PERCENT_ADD,
                self.data.statPerFactionBuffAmount_1 * numberMultiBuff)
        local statChanger_2 = StatChanger(true)
        statChanger_2:SetInfo(self.data.statPerFactionBuffType_2, StatChangerCalculationType.PERCENT_ADD,
                self.data.statPerFactionBuffAmount_2 * numberMultiBuff)

        statChangeEffect:AddStatChanger(statChanger_1)
        statChangeEffect:AddStatChanger(statChanger_2)
        statChangeEffect:SetPersistentType(EffectPersistentType.PERMANENT)
        self.myHero.effectController:AddEffect(statChangeEffect)
    end
end

return Hero30008_Skill3