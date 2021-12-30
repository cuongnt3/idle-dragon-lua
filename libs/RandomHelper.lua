require "lua.libs.Class"
require "lua.libs.MathUtils"

--- @class RandomHelper
RandomHelper = Class(RandomHelper)

--- @return void
function RandomHelper:Ctor()
    self.MBIG = 0x7fffffff
    self.MSEED = 0x9a4ec86

    self._numberRandom = 0
end

--- @return void
function RandomHelper:Init()
    self._numberRandom = 0
end

--- @return void
--- @param seed number
function RandomHelper:SetSeed(seed)
    self._numberRandom = 0

    self._inext = 0
    self._inextp = 0
    self._seed = seed
    self._seedArray = {}

    for i = 0, 0x37, 1 do
        self._seedArray[i] = 0
    end

    local num2 = self.MSEED - math.abs(seed)
    self._seedArray[0x37] = num2
    local num3 = 1

    for i = 1, 0x36, 1 do
        local index = (0x15 * i) % 0x37
        self._seedArray[index] = num3
        num3 = num2 - num3
        if num3 < 0 then
            num3 = num3 + self.MBIG
        end
        num2 = self._seedArray[index]
    end

    for _ = 1, 5, 1 do
        for k = 1, 0x37, 1 do
            self._seedArray[k] = self._seedArray[k] - self._seedArray[1 + ((k + 30) % 0x37)]
            if self._seedArray[k] < 0 then
                self._seedArray[k] = self._seedArray[k] + self.MBIG
            end
        end
    end

    self._inext = 0
    self._inextp = 0x15
end

---------------------------------------- Sample ----------------------------------------
--- @return void
function RandomHelper:_InternalSample()
    local inext = self._inext
    local inextp = self._inextp

    inext = inext + 1
    if inext >= 0x38 then
        inext = 1
    end

    inextp = inextp + 1
    if inextp >= 0x38 then
        inextp = 1
    end

    local num = self._seedArray[inext] - self._seedArray[inextp]

    while num < 0 do
        num = num + self.MBIG
    end

    while num > self.MBIG do
        num = num - self.MBIG
    end

    self._seedArray[inext] = num
    self._inext = inext
    self._inextp = inextp

    self._numberRandom = self._numberRandom + 1

    return num
end

--- @return number
function RandomHelper:_SampleMinMax(minValue, maxValue)
    if minValue == maxValue then
        return minValue
    end

    local num = maxValue - minValue
    if num <= 0x7fffffff then
        local sample = self:_InternalSample() * 4.6566128752457969E-10
        return math.floor(sample * num) + minValue
    end
    return math.floor(self:_SampleForLargeRange() * num) + minValue
end

--- @return void
function RandomHelper:_SampleForLargeRange()
    local num = self:_InternalSample()
    if (self:_InternalSample() % 2) == 0 then
        num = -num
    end
    return (num + 2147483646.0) / 4294967293
end

---------------------------------------- Public methods ----------------------------------------
--- @return number
function RandomHelper:GetSeed()
    return self._seed
end

--- @return number
function RandomHelper:GetNumberRandom()
    return self._numberRandom
end

--- @return number
--- @param maxExclusive number Random between 1 and maxExclusive
function RandomHelper:RandomMax(maxExclusive)
    return self:_SampleMinMax(1, maxExclusive)
end

--- @return number
--- @param minInclusive number
--- @param maxExclusive number
function RandomHelper:RandomMinMax(minInclusive, maxExclusive)
    --assert(MathUtils.IsNumber(minInclusive))
    --assert(MathUtils.IsNumber(maxExclusive))
    return self:_SampleMinMax(minInclusive, maxExclusive)
end

--- @return number
function RandomHelper:RandomFloat01()
    return self:_InternalSample() * 4.6566128752457969E-10
end

--- @return boolean is pass rate
--- @param rate number
function RandomHelper:RandomRate(rate)
    --assert(MathUtils.IsNumber(rate))
    local value = self:_InternalSample() * 4.6566128752457969E-10
    if value < rate then
        return true
    else
        return false
    end
end