--- @class DiceRewardResult
DiceRewardResult = Class(DiceRewardResult)

function DiceRewardResult:Ctor(buffer)
    self.rewards = NetworkUtils.GetListDataInBound(buffer, RewardInBound.CreateByBuffer)
    self.diceValue = buffer:GetByte()
    self.newPosition = buffer:GetByte()
end
