--- @class TestInBound : InBound
TestInBound = Class(TestInBound, InBound)

function TestInBound:Ctor()
    --- @type string
    self.testString = nil
    --- @type number
    self.testByte = nil
    --- @type number
    self.testShort = nil
    --- @type number
    self.testInt = nil
    --- @type number
    self.testLong = nil
    --- @type number
    self.testFloat = nil
end

--- @param buffer UnifiedNetwork_ByteBuf
function TestInBound:Deserialize(buffer)
    self.testString = buffer:GetString()
    self.testByte = buffer:GetByte()
    self.testShort = buffer:GetShort()
    self.testInt = buffer:GetInt()
    self.testLong = buffer:GetLong()
    self.testFloat = buffer:GetFloat()
end

function TestInBound:ToString()
    return string.format("string[%s], byte[%d], short[%d], int[%d], long[%d], float[%f]",
            self.testString, self.testByte, self.testShort, self.testInt, self.testLong, self.testFloat)
end