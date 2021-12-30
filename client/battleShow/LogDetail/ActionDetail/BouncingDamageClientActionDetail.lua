
--- @class BouncingDamageClientActionDetail : ClientActionDetail
BouncingDamageClientActionDetail = Class(BouncingDamageClientActionDetail, ClientActionDetail)

--- @return void
--- @param type ActionResultType
function BouncingDamageClientActionDetail:Ctor(type)
    ClientActionDetail.Ctor(self, type)
    --- @type Dictionary --<BaseHero, value>
    self.targetDict = Dictionary()
end

--- @return void
function BouncingDamageClientActionDetail:Execute()
    for i = 1, self.actionResults:Count() do
        --- @type BaseActionResult
        local action = self.actionResults:Get(i)
        local target = action.target
        if self.targetDict:IsContainKey(target) then
            --- @type BaseActionResult
            local actionDetail = self.targetDict:Get(target)
            actionDetail.damage = actionDetail.damage + action.damage
            actionDetail.index = action.index
            actionDetail.targetHpPercent = action.targetHpPercent
        else
            self.targetDict:Add(target, action)
        end
    end
end

--- @return table
function BouncingDamageClientActionDetail:GetItems()
    local listItems = List()
    for _, value in pairs(self.targetDict:GetItems()) do
        listItems:Add(value)
    end
    return listItems
end

--- @return void
function BouncingDamageClientActionDetail:ToString()
    local content = "[DOT]\n"
    for key, value in pairs(self.targetDict:GetItems()) do
        content = content .. value:ToString() .. "\n"
    end
    return content
end