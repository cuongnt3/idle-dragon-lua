local Reporter = CS.Reporter
local MAX_SERVER = 5

local function ButtonEndTutorial()
    local tutorialButton = CS.ButtonDataTool()
    tutorialButton.text = "end_tut"
    tutorialButton.onClick = function()
        require "lua.client.core.network.fake.FakeDataRequest"
        if zg.networkMgr.isLogin == true then
            FakeDataRequest.FakeTutorial(0, true, 0)
        else
            print("Need login to fake end tutorial")
        end
    end
    Reporter.buttons:Add(tutorialButton)
end

---@class ServerIndex
local ServerIndex = {
    Sandbox = 1,
    Production = 2,
    Staging = 3,
    Dev = 4,
    Pbe = 5,
}

local function ServerByIndex(index)
    if index == ServerIndex.Sandbox then
        return "sand_box"
    elseif index == ServerIndex.Production then
        return "production"
    elseif index == ServerIndex.Staging then
        return "staging"
    elseif index == ServerIndex.Dev then
        return "dev"
    elseif index == ServerIndex.Pbe then
        return "pbe"
    end
end

--- @return void
---@param index ServerIndex
local function SetNetConfig(index)
    if index == ServerIndex.Sandbox then
        NetConfig.isProduction = false
        NetConfig.isUseBalancingServer = false
        NetConfig.loadBalancerIP = "35.198.248.251"
        NetConfig.loadBalancerPort = 8150
        NetConfig.logicServerIP = "35.198.248.251"
        NetConfig.logicServerPort = 8100
        if IS_VIET_NAM_VERSION then
            CheckConfigSunGame(false)
        end
    elseif index == ServerIndex.Production then
        NetConfig.isProduction = true
        NetConfig.isUseBalancingServer = true
        NetConfig.loadBalancerIP = "35.240.141.95"
        NetConfig.loadBalancerPort = 8150
        NetConfig.logServerIP = "35.240.141.95"
        if IS_VIET_NAM_VERSION then
            CheckConfigSunGame(true)
        end
    elseif index == ServerIndex.Staging then
        NetConfig.isProduction = false
        NetConfig.isUseBalancingServer = false
        NetConfig.loadBalancerIP = "35.240.141.95"
        NetConfig.loadBalancerPort = 8150
        NetConfig.logicServerIP = "35.198.248.251"
        NetConfig.logicServerPort = 8104
    elseif index == ServerIndex.Dev then
        NetConfig.isProduction = false
        NetConfig.isUseBalancingServer = false
        NetConfig.loadBalancerIP = "35.198.248.251"
        NetConfig.loadBalancerPort = 8150
        NetConfig.logicServerIP = "35.198.248.251"
        NetConfig.logicServerPort = 8107
    elseif index == ServerIndex.Pbe then
        NetConfig.isProduction = false
        NetConfig.isUseBalancingServer = false
        NetConfig.loadBalancerIP = "35.240.145.190"
        NetConfig.loadBalancerPort = 8150
        NetConfig.logicServerIP = "35.240.145.190"
        NetConfig.logicServerPort = 8100
    end
    if SungameDefine ~= nil then
        SungameDefine.IS_PROD = NetConfig.isProduction
    end
end

--- @return void
local function NetworkConfig()
    local index = U_PlayerPrefs.GetInt(PlayerPrefsKey.SERVER_KEY, ServerIndex.Production)
    if index > MAX_SERVER or index < 1 then
        index = 1
    end
	if IS_PBE_VERSION then
        index = ServerIndex.Pbe
    end
    
    print(string.format("Current Server: %s", ServerByIndex(index)))
    SetNetConfig(index)
end

local function ButtonServerSelection()
    local nonTestSv = ServerIndex.Production
    if IS_PBE_VERSION then
        nonTestSv = ServerIndex.Pbe
    end
    local currentValue = U_PlayerPrefs.GetInt(PlayerPrefsKey.SERVER_KEY, nonTestSv)
    local sandbox = CS.ButtonDataTool()
    local setServerConfig = function()
        sandbox.text = ServerByIndex(currentValue)
        NetworkConfig()
    end
    setServerConfig()
    sandbox.onClick = function()
        currentValue = (currentValue % MAX_SERVER) + 1
        U_PlayerPrefs.SetInt(PlayerPrefsKey.SERVER_KEY, currentValue)
        setServerConfig()
    end
    Reporter.buttons:Add(sandbox)
end

local function ButtonStartGame()
    local button = CS.ButtonDataTool()
    button.text = "START GAME"
    button.onClick = function()
        Main.CreateZg()
    end
    Reporter.buttons:Add(button)
end

local function GetAutoTest()
    if uiCanvas ~= nil then
        local AutoTestComponent = typeof(CS.AutoTest)
        local autoTest = uiCanvas.config.gameObject:GetComponent(AutoTestComponent)
        if autoTest == nil then
            autoTest = uiCanvas.config.gameObject:AddComponent(AutoTestComponent)
            autoTest.m_EventSystem = uiCanvas.config.eventSystem
            autoTest.root = uiCanvas.config.transform
            autoTest.cam = uiCanvas.config.blurCacher.gameObject:GetComponent(ComponentName.UnityEngine_Camera)
        end
        return autoTest
    end
end

local function FixClick()
    if uiCanvas ~= nil then
        if uiCanvas.config.eventSystem.enabled == true then
            Coroutine.start(function()
                uiCanvas.config.eventSystem.enabled = false
                coroutine.waitforendofframe()
                uiCanvas.config.eventSystem.enabled = true
            end)
        end
    end
end

local function ButtonAutoTest()
    local button = CS.ButtonDataTool()
    button.text = "AUTO TEST"
    button.onClick = function()
        local autoTest = GetAutoTest()
        autoTest:RunTestCaseByName(Reporter.patchText)
        FixClick()
    end
    Reporter.buttons:Add(button)
end

local function ButtonNewRecord()
    local saveActive = false
    local buttonSave = CS.ButtonDataTool()
    buttonSave.text = "SAVE RECORD"
    buttonSave.onClick = function()
        local autoTest = GetAutoTest()
        autoTest.testName = Reporter.patchText
        autoTest:SaveTestCase()
        Reporter.buttons:Remove(buttonSave)
        saveActive = false
        FixClick()
    end

    local button = CS.ButtonDataTool()
    button.text = "NEW RECORD"
    button.onClick = function()
        local autoTest = GetAutoTest()
        autoTest:NewRecord()
        if saveActive == false then
            Reporter.buttons:Add(buttonSave)
            saveActive = true
        end
        FixClick()
    end
    Reporter.buttons:Add(button)
end

local function ButtonSaveAssetRecord()
    local button = CS.ButtonDataTool()
    button.text = "SAVE ASSET"
    button.onClick = function()
        local json = AssetRecordTools.GetAssetJson()
        XDebug.Log("AssetJson: \n" .. json)
        U_GameUtils.SafeWriteAllText(string.format("%s/../AssetBundles/tutorial_asset_config.json", U_Application.dataPath), json)
    end
    Reporter.buttons:Add(button)
end

local function ButtonTutSummoner()
    local button = CS.ButtonDataTool()
    button.text = "TUT SUMMONER"
    button.onClick = function()
        require("lua.client.core.network.fake.FakeDataRequest")
        FakeDataRequest.FakeMoney(110, 1000)
        FakeDataRequest.FakeMoney(0, 10000000)
        FixClick()
    end
    Reporter.buttons:Add(button)
end

local function ButtonCreateCsvBattle()
    local button = CS.ButtonDataTool()
    button.text = "Gen Csv Battle"
    button.onClick = function()
        require "lua.client.utils.ClientConfigUtils"
        require "lua.client.core.BattleMgr"
        BattleMgr.GenCsvBattle(Reporter)
    end
    Reporter.buttons:Add(button)
end

--- @return void
local function InitTool()
    if Reporter ~= nil then
        if Reporter.buttons.Count == 0 then
            ButtonStartGame()
            ButtonServerSelection()
            ButtonEndTutorial()
            ButtonTutSummoner()
            ButtonAutoTest()
            if IS_EDITOR_PLATFORM then
                ButtonNewRecord()
                ButtonSaveAssetRecord()
                ButtonCreateCsvBattle()
            end
        else
            NetworkConfig()
            Main.CreateZg()
        end
    end
end

--- @class SupportTool
local SupportTool = {}
SupportTool.InitTool = InitTool
SupportTool.SetNetConfig = SetNetConfig
SupportTool.ServerIndex = ServerIndex

return SupportTool