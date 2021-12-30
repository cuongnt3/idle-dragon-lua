--- @class DamageAgainstItemOption
DamageAgainstItemOption = Class(DamageAgainstItemOption, DamageItemOption)

--- @return void
--- @param type ItemOptionType
--- @param data table
function DamageAgainstItemOption:Ctor(type, data)
    DamageItemOption.Ctor(self, type, data)
end

--- @return void
--- @param hero BaseHero
function DamageAgainstItemOption:ApplyToHero(hero)
    if DamageItemOption.IsCanApplyToHero(self, hero) == false then
        return
    end

    hero.battleHelper:AddDamageItemOption(self)
end

--- @return void
--- @param hero BaseHero
function DamageAgainstItemOption:IsCanApplyToEnemy(hero)
    if self.requirementGroupType == ItemConstants.ITEM_OPTION_ALL_OF_REQUIREMENT then
        if self.affectedHeroClass:Count() > 0 and self.affectedHeroClass:IsContainValue(hero.originInfo.class) == false then
            return false
        end

        if self.affectedHeroFaction:Count() > 0 and self.affectedHeroFaction:IsContainValue(hero.originInfo.faction) == false then
            return false
        end
    else
        if self.affectedHeroClass:Count() > 0 and self.affectedHeroClass:IsContainValue(hero.originInfo.class) == false then
            if self.affectedHeroFaction:Count() > 0 and self.affectedHeroFaction:IsContainValue(hero.originInfo.faction) == false then
                return false
            end
        end
    end

    return true
end

--- @return number
--- @param target BaseHero
--- @param totalDamage number
function DamageAgainstItemOption:CalculateDamage(target, totalDamage)
    if self:IsCanApplyToEnemy(target) == false then
        return totalDamage
    end

    return totalDamage * (1 + self.amount)
end