--- @class UIChatOptionConfig
UIChatOptionConfig = Class(UIChatOptionConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UIChatOptionConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_UI_Button
	self.hideVip = self.transform:Find("hide_vip/bg_tick_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.blockWorldChat = self.transform:Find("block_world_chat/bg_tick_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.blockGuildChat = self.transform:Find("bock_guild_chat/bg_tick_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Button
	self.blockRecruitChat = self.transform:Find("block_recruit_chat/bg_tick_1"):GetComponent(ComponentName.UnityEngine_UI_Button)
end
