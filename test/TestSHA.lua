-- Copyright (c) 2015  Phil Leblanc  -- see LICENSE file
-- link to check online: https://quickhash.com/
------------------------------------------------------------
-- sha2 tests
require("lua.client.utils.SHA2")
local sha2 = SHA2
local bin = require("lua.client.utils.Bin")  -- for hex conversion
local xts = bin.hextos

local function test_sha2()
    -- checked with sha2 on https://quickhash.com/
    assert(sha2.shaBinary256("") == xts [[
		e3b0c44298fc1c149afbf4c8996fb924
		27ae41e4649b934ca495991b7852b855  ]])

    assert(sha2.shaBinary256("abc") == xts [[
		ba7816bf8f01cfea414140de5dae2223
		b00361a396177a9cb410ff61f20015ad  ]])

    assert(sha2.shaBinary256(('1'):rep(128)) == xts [[
		4ff5ac52aa16dbe3db447ea12d090c5b
		b6f1325aaaca5ee059b248a89f673972  ]])


    -- tests for sha512

    assert(sha2.shaBinary512("") == xts [[
		cf83e1357eefb8bdf1542850d66d8007
		d620e4050b5715dc83f4a921d36ce9ce
		47d0d13c5d85f2b0ff8318d2877eec2f
		63b931bd47417a81a538327af927da3e  ]])

    assert(sha2.shaBinary512("abc") == xts [[
		ddaf35a193617abacc417349ae204131
		12e6fa4e89a97ea20a9eeee64b55d39a
		2192992a274fc1a836ba3c23a3feebbd
		454d4423643ce80e2a9ac94fa54ca49f  ]])

    assert(sha2.shaBinary512(('1'):rep(128)) == xts [[
		610e0f364ac647d7a78be9e1e4b1f423
		132a5cb2fa94b0d8baa8d21d42639a77
		da897f3d8b3aec464b44d170eb9cf802
		0b6e4a377672bce649746be941a1d47d  ]])

end

test_sha2()

print("test_sha2: ok")