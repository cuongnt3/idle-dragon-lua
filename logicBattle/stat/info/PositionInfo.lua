--- @class PositionInfo
PositionInfo = Class(PositionInfo)

--- @return void
--- @param hero BaseHero
function PositionInfo:Ctor(hero)
    --- @type BaseHero
    self.myHero = hero

    --- @type number
    self.formationId = -1
    --- @type boolean
    self.isFrontLine = false
    --- @type number
    self.position = -1
end

--- @return void
--- @param isFrontLine boolean
--- @param position number
function PositionInfo:SetPosition(isFrontLine, position)
    self.isFrontLine = isFrontLine
    self.position = position
end

--- @return void
--- @param formationId number
function PositionInfo:SetFormationId(formationId)
    self.formationId = formationId
end

--- @return string
function PositionInfo:ToString()
    if self.isFrontLine then
        return string.format("FRONT, POS %s", self.position)
    else
        return string.format("BACK, POS %s", self.position)
    end
end