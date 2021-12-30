--- @class EquipmentDataEntry
EquipmentDataEntry = Class(EquipmentDataEntry)

--- @return void
--- @param data table
function EquipmentDataEntry:Ctor(data)
    --- @type number
    self.id = tonumber(data.id)

    --- @type number
    self.tier = tonumber(data.tier)

    --- @type number
    self.rarity = tonumber(data.rarity)

    --- @type number
    self.star = tonumber(data.star)

    --- @type number
    self.price = tonumber(data.price)

    --- @type number
    self.priceForge = tonumber(data.price_forge)
    if self.priceForge == nil then
        self.priceForge = 0
    end

    --- @type number
    self.setId = tonumber(data.set_id)

    --- @type List<BaseItemOption>
    self.optionList = List()
end

--- @return void
function EquipmentDataEntry:Validate()
    if MathUtils.IsInteger(self.id) == false then
        assert(false)
    end

    if MathUtils.IsInteger(self.tier) == false then
        assert(false)
    end

    if MathUtils.IsInteger(self.rarity) == false then
        assert(false)
    end

    if MathUtils.IsInteger(self.star) == false then
        assert(false)
    end

    if MathUtils.IsInteger(self.price) == false then
        assert(false)
    end

    if MathUtils.IsInteger(self.priceForge) == false then
        assert(false)
    end

    if MathUtils.IsInteger(self.setId) == false then
        assert(false)
    end
end

--- @return void
--- @param itemOption BaseItemOption
function EquipmentDataEntry:AddOption(itemOption)
    self.optionList:Add(itemOption)
end

--- @return void
--- @param hero BaseHero
function EquipmentDataEntry:ApplyToHero(hero)
    for i = 1, self.optionList:Count() do
        local option = self.optionList:Get(i)
        option:ApplyToHero(hero)
    end
end