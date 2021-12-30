local Rx = require "lua.client.utils.Rx.Rx"
local Subject = Rx.Subject

local log = ""


-- TEST SUBSCRIBE, UNSUBSCRIBE
log = ""
local a = Subject.Create()
local s1
s1 = a:Subscribe(function (i)
    log = string.format("%s_%s_%s", log, "s1", i)
end)

---@type Subscription
local s2
s2 = a:Subscribe(function (i)
    log = string.format("%s_%s_%s", log, "s2", i)
    s2:Unsubscribe()
end)

local s3
s3 = a:Subscribe(function (i)
    log = string.format("%s_%s_%s", log, "s3", i)
    s3:Unsubscribe()
end)

local s4
s4 = a:Subscribe(function (i)
    log = string.format("%s_%s_%s", log, "s4", i)
end)

a:Next(1)
a:Next(2)
s1:Unsubscribe()
a:Next(3)
s4:Unsubscribe()
a:Next(4)

assert(log == "_s1_1_s2_1_s3_1_s4_1_s1_2_s4_2_s4_3", "Not Pass Subscribe, UnSubscribe log: " .. log)



-- TEST MERGER
log = ""
local a = Subject.Create()
local b = Subject.Create()
local c = Subject.Create()

local merger = a:Merge(b, c)

a:Next("a1")
local s = merger:Subscribe(function (i)
    log = string.format("%s_%s", log, i)
end)
a:Next("a2")
b:Next("b1")
c:Next("c1")
b:Next("b2")
s:Unsubscribe()
c:Next("c2")

assert(log == "_a2_b1_c1_b2", "Not Pass Merger log: " .. log)


-- TEST FILTER
log = ""
local a = Subject.Create()
local b = Subject.Create()
local c = Subject.Create()

local merger = a:Merge(b, c)
merger:Subscribe(function (i)
    log = string.format("%s_%s", log, i)
end)
local filter = merger:Filter(function (data) return string.find(data, "1") ~= nil end)

a:Next("a1")
local s = filter:Subscribe(function (i)
    log = string.format("%s_[Filter]%s", log, i)
end)
a:Next("a2")
b:Next("b1")
c:Next("c1")
b:Next("b2")
s:Unsubscribe()
c:Next("c2")

assert(log == "_a1_a2_b1_[Filter]b1_c1_[Filter]c1_b2_c2", "Not Pass FILTER log: " .. log)


-- TEST SAMPLE
log = ""
local a = Subject.Create()
local b = Subject.Create()

local sample = a:Sample(b)

local sab = a:Merge(b):Subscribe(function (i)
    log = string.format("%s_%s", log, i)
end)

a:Next("a1")
local s = sample:Subscribe(function (i)
    log = string.format("%s_[Sample]%s", log, i)
end)
b:Next("b1")
a:Next("a2")
b:Next("b2")
b:Next("b3")
a:Next("a3")
a:Next("a4")
b:Next("b4")
s:Unsubscribe()
a:Next("a5")
sab:Unsubscribe()

assert(log == "_a1_b1_a2_b2_[Sample]a2_b3_[Sample]a2_a3_a4_b4_[Sample]a4_a5", "Not Pass SAMPLE log: " .. log)


-- TEST BUFFER
log = ""
local a = Subject.Create()
local b = Subject.Create()
local c = Subject.Create()

local merger = a:Merge(b, c)
merger:Subscribe(function (i)
    log = string.format("%s_%s", log, i)
end)
local buffer = merger:Buffer(2)

a:Next("a1")
local s = buffer:Subscribe(function (i1, i2)
    log = string.format("%s_[Buffer](%s_%s)", log, i1, i2)
end)
a:Next("a2")
b:Next("b1")
c:Next("c1")
b:Next("b2")
s:Unsubscribe()
c:Next("c2")

assert(log == "_a1_a2_b1_[Buffer](a2_b1)_c1_b2_[Buffer](c1_b2)_c2", "Not Pass BUFFER log: " .. log)


-- TEST MAP
log = ""
local a = Subject.Create()
local b = Subject.Create()
local c = Subject.Create()

local merger = a:Merge(b, c)
merger:Subscribe(function (i)
    log = string.format("%s_%s", log, i)
end)
local map = merger:Map(function (data) return string.format("[Map]%s", data) end)

a:Next("a1")
local s = map:Subscribe(function (i)
    log = string.format("%s_%s", log, i)
end)
a:Next("a2")
b:Next("b1")
c:Next("c1")
b:Next("b2")
s:Unsubscribe()
c:Next("c2")

assert(log == "_a1_a2_[Map]a2_b1_[Map]b1_c1_[Map]c1_b2_[Map]b2_c2", "Not Pass MAP log: " .. log)


-- TEST CombineLatest
log = ""
local a = Subject.Create()
local b = Subject.Create()
local c = Subject.Create()

local merger = a:Merge(b, c)
merger:Subscribe(function (i)
    log = string.format("%s_%s", log, i)
end)
local CombineLatest = a:CombineLatest(b, c)
CombineLatest:Subscribe(function (a, b, c)
    log = string.format("%s_[CombineLatest1]%s%s%s", log, a, b, c)
end)

a:Next("a1")
a:Next("a2")
b:Next("b1")
CombineLatest:Subscribe(function (a, b, c)
    log = string.format("%s_[CombineLatest2]%s%s%s", log, a, b, c)
end)
c:Next("c1")
b:Next("b2")
c:Next("c2")
a:Next("a3")

assert(log == "_a1_a2_b1_c1_[CombineLatest1]a2b1c1_b2_[CombineLatest1]a2b2c1_c2_[CombineLatest1]a2b2c2_a3_[CombineLatest1]a3b2c2_[CombineLatest2]a3b2c2", "Not Pass CombineLatest log: " .. log)



print("PASS")
