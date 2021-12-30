--- @class CsvReader
CsvReader = {}

---------------------------------------------------------------------
--- @return table
--- @param content string
--- @param sep string
function CsvReader.ReadContent(content, sep)
    if content == nil then
        return nil
    end
    sep = sep ~= nil and sep or ","
    local parsedData = {}
    local lines = {}

    content = StringUtils.Trim(content)
    lines = content:SplitLine("\n")
    local header = lines[1]:Split(sep)
    for i = 1, #header do
        header[i] = StringUtils.Trim(header[i])
    end

    for i = 2, #lines do
        local fields = lines[i]:Split(sep)
        local tbLine = {}

        local isEmpty = true
        for j = 1, #header do
            local rowData = StringUtils.Trim(fields[j])
            if rowData ~= nil and rowData ~= '' then
                if tbLine[header[j]] ~= nil then
                    string.format("Csv data with header = %s in line %s is already existed", header[j], i)
                end
                tbLine[header[j]] = rowData
                isEmpty = false
            end
        end

        if #fields > 0 and isEmpty == false then
            -- only insert a new line if not empty
            table.insert(parsedData, tbLine)
        end
    end
    return parsedData
end