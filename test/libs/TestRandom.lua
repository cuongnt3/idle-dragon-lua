require "lua.libs.Class"
require "lua.libs.MathUtils"
require "lua.libs.RandomHelper"
require "lua.libs.StopWatch"

TestRandom = Class(TestRandom)

local DELTA_RATE = 0.02
local TEST_ITERATION = 10000

--- @return void
function TestRandom:Test()
    --- @type RandomHelper
    self.randomHelper = RandomHelper()
    self.randomHelper:SetSeed(math.random(1, 999999999))

    self:TestRandomMinMax()
    self:TestRandomRate()
    self:TestSimpleDistribution()
    self:TestSeed()

    self:Benchmark()

    print("[TestRandom] test done")
end

--- @return void
function TestRandom:TestRandomMinMax()
    print("[TestRandom] TestRandomMinMax")
    for _ = 1, TEST_ITERATION do
        local value = self.randomHelper:RandomMinMax(0, 2 ^ 52)
        assert(MathUtils.IsInteger(value) and value >= 0 and value < 2 ^ 52,
                "value = " .. tostring(value))
    end

    for _ = 1, TEST_ITERATION do
        local value = self.randomHelper:RandomMinMax(0, 1)
        assert(MathUtils.IsInteger(value) and value == 0, "value = " .. tostring(value))
    end
end

--- @return void
function TestRandom:TestRandomRate()
    print("[TestRandom] TestRandomRate")
    local numberTrueValue = 0
    local numberFalseValue = 0

    for _ = 1, TEST_ITERATION do
        local value = self.randomHelper:RandomRate(0.5)
        assert(MathUtils.IsBoolean(value), "value = " .. tostring(value))

        if value then
            numberTrueValue = numberTrueValue + 1
        else
            numberFalseValue = numberFalseValue + 1
        end
    end

    local trueValueRate = numberTrueValue / TEST_ITERATION
    local falseValueRate = numberFalseValue / TEST_ITERATION

    assert(math.abs(trueValueRate - 0.5) < DELTA_RATE, "trueValueRate = " .. tostring(trueValueRate))
    assert(math.abs(falseValueRate - 0.5) < DELTA_RATE, "falseValueRate = " .. tostring(falseValueRate))

    print(string.format("[TestRandom] Number true value: %s, rate: %s", numberTrueValue, trueValueRate))
    print(string.format("[TestRandom] Number false value: %s, rate: %s", numberFalseValue, falseValueRate))
end

--- @return void
function TestRandom:TestSimpleDistribution()
    print("[TestRandom] TestSimpleDistribution")
    local buckets = {}
    for _ = 1, TEST_ITERATION do
        local value = self.randomHelper:RandomMinMax(1, 11)
        if buckets[value] == nil then
            buckets[value] = 0
        end

        buckets[value] = buckets[value] + 1
    end

    for i = 1, 10 do
        local bucketRate = buckets[i] / TEST_ITERATION
        assert(math.abs(bucketRate - 0.1) < DELTA_RATE, "bucketRate = " .. tostring(bucketRate))

        print(string.format("[TestRandom] bucket %s value: %s, rate: %s", i, buckets[i], bucketRate))
    end
end

--- @return void
function TestRandom:TestSeed()
    local seed = math.random(1, 999999999)

    self.randomHelper = RandomHelper()
    self.randomHelper:SetSeed(seed)

    local generatedList_1 = List()
    for _ = 1, TEST_ITERATION do
        local value = self.randomHelper:RandomMinMax(1, 999999999)
        generatedList_1:Add(value)
    end

    self.randomHelper = RandomHelper()
    self.randomHelper:SetSeed(seed)

    local generatedList_2 = List()
    for _ = 1, TEST_ITERATION do
        local value = self.randomHelper:RandomMinMax(1, 999999999)
        generatedList_2:Add(value)
    end

    for i = 1, TEST_ITERATION do
        local value_1 = generatedList_1:Get(i)
        local value_2 = generatedList_2:Get(i)
        assert(value_1 == value_2, string.format("value_1 = %s, value_2 = %s", value_1, value_2))
    end
end

--- @return void
function TestRandom:Benchmark()
    local stopWatch = StopWatch()
    local randomHelper = self.randomHelper

    stopWatch:Start()
    for _ = 1, TEST_ITERATION do
        randomHelper:RandomMinMax(1, 999999999)
    end
    stopWatch:Stop("Benchmark RandomMinMax, iterations=" .. TEST_ITERATION)

    stopWatch:Start()
    for _ = 1, TEST_ITERATION do
        randomHelper:RandomRate(0.5)
    end
    stopWatch:Stop("Benchmark RandomRate, iterations=" .. TEST_ITERATION)
end