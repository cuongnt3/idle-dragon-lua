local File = CS.System.IO.File

local open = io.open

local function ReadFile(path)
    local file = open(path, "rb") -- r read mode and b binary mode
    if not file then return nil end
    local content = file:read "*a" -- *a or *all reads the whole file
    file:close()
    return content
end

--- @class AnalyticUtils
AnalyticUtils = {}

--- @return string
--- @param path string
function AnalyticUtils.ReadFile(path)
    return ReadFile(path)
end

--- @return void
--- @param path string
--- @param content string
function AnalyticUtils.WriteFile(path, content)
    File.WriteAllText(path, content)
end

--- @return void
function AnalyticUtils.RequireLuaFiles(parsedData)
    local requireDict = {}
    for i = 1, #parsedData do
        local heroId = tonumber(parsedData[i].hero_id)
        assert(MathUtils.IsInteger(heroId) and heroId >= 0, "heroId = " .. tostring(heroId))
        if requireDict[heroId] == nil then
            local luaFiles = ResourceMgr.GetHeroesConfig():GetHeroLua():Get(heroId)
            for _, value in pairs(luaFiles) do
                require(value)
            end
            requireDict[heroId] = true
        end
    end
end

--- @return void
---@ param self AnalyticTool
function AnalyticUtils.InitService(self)
    require("lua.client.data.Service.ServiceConfig")
    self.serviceController = ServiceConfig().serviceController
    XDebug.Log("Complete initRate service")
end