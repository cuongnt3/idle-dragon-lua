require "lua.client.core.network.test.TestOutBound"
require "lua.client.core.network.test.TestInBound"

--- @class TestNetwork
TestNetwork = Class(TestNetwork)

--- @return void
function TestNetwork:Ctor()
    Coroutine.start(function ()
        XDebug.Log("Start")
        while zg.networkMgr.isConnected == false do
            coroutine.waitforendofframe()
        end
        XDebug.Log("Finish")
        self:TestRecieve()
        self:TestSend()
    end)
end

--- @return void
function TestNetwork:TestSend()
    local testOutboundMessage = TestOutBound()
    testOutboundMessage.testString = "test ă â ẩ ơ ư ộ ễ"
    testOutboundMessage.testByte = 1
    testOutboundMessage.testShort = 100
    testOutboundMessage.testInt = 100000
    testOutboundMessage.testLong = 1000000000000
    testOutboundMessage.testFloat = 1.23
    NetworkUtils.Request(OpCode.ECHO, testOutboundMessage)
end

--- @return void
function TestNetwork:TestRecieve()
    local increaseListener = EventDispatcherListener(self, self.ReceiveTest)
    zg.netDispatcherMgr:AddListener(OpCode.ECHO, increaseListener)
end

--- @return void
--- @param buffer UnifiedNetwork_ByteBuf
function TestNetwork:ReceiveTest(buffer)
    local inbound = TestInBound()
    inbound:Deserialize(buffer)

    XDebug.Log(inbound:ToString())
end