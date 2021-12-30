require "lua.libs.collection.Dictionary"

require "lua.libs.LogUtils"
require "lua.libs.MathUtils"
require "lua.libs.CsvReader"
require "lua.libs.Class"

TestCsvReader = Class(TestCsvReader)

--- @return void
--- @param content string
function TestCsvReader:Test(content)
    print("csv = \n" .. content)
    assert(content ~= nil, "content = nil")

    local parsedData = CsvReader.ReadContent(content)

    assert(#parsedData == 3, "length of parsedData = " .. tostring(#parsedData))

    local refTable = { 1.1, 2.2, 3.3 }
    for i = 1, #parsedData do
        local line = parsedData[i]

        if i ~= 2 then
            local field_0 = tonumber(line.field_0)
            assert(MathUtils.IsInteger(field_0) and field_0 == i, "field_0 = " .. tostring(field_0))
        end

        local field_1 = line.field_1
        assert(field_1 ~= nil and field_1 == "test_name_" .. i, "field_1 = " .. tostring(field_1))

        local field_2 = tonumber(line.field_2)
        assert(MathUtils.IsNumber(field_2) and field_2 == refTable[i], "field_2 = " .. tostring(field_2))

        local field_3 = tonumber(line.field_3)
        assert(MathUtils.IsInteger(field_3) and field_3 == i, "field_3 = " .. tostring(field_3))
    end

    print(LogUtils.ToDetail(parsedData))
    print("[TestCsvReader] test done")
end