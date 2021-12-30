local assetDict = {}

---@class AssetRecordTools
AssetRecordTools = {}

--- @return void
--- @param path string
function AssetRecordTools.Add(path)
    if assetDict[path] == nil then
        --print("Add Asset: " .. path)
        assetDict[path] = 1
    else
        assetDict[path] = assetDict[path] + 1
    end
end

--- @return string
function AssetRecordTools.GetAssetJson()
    local list = {}
    local count = 1
    for key, _ in pairs(assetDict) do
        list[count] = key
        count = count + 1
    end
    return json.encode(list)
end