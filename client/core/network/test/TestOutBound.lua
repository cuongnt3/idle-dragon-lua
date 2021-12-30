--- @class TestOutBound : OutBound
TestOutBound = Class(TestOutBound, InBound)

function TestOutBound:Ctor()
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
function TestOutBound:Serialize(buffer)
    buffer:PutString(self.testString)
    buffer:PutByte(self.testByte)
    buffer:PutShort(self.testShort)
    buffer:PutInt(self.testInt)
    buffer:PutLong(self.testLong)
    buffer:PutFloat(self.testFloat)
    XDebug.Log(LogUtils.ToDetail(buffer))
end

function TestOutBound:ToString()
    return string.format("string[%s], byte[%d], short[%d], int[%d], long[%d], float[%f]",
            self.testString, self.testByte, self.testShort, self.testInt, self.testLong, self.testFloat)
end