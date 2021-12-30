--- @class DomainMemberWorldSlotConfig
DomainMemberWorldSlotConfig = Class(DomainMemberWorldSlotConfig)

--- @return void
--- @param transform UnityEngine_Transform
function DomainMemberWorldSlotConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.avatarAnchor = self.transform:Find("world_canvas/avatar_anchor"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_GameObject
	self.ready = self.transform:Find("ready").gameObject
	--- @type UnityEngine_GameObject
	self.unready = self.transform:Find("un_ready").gameObject
	--- @type UnityEngine_GameObject
	self.worldCanvas = self.transform:Find("world_canvas").gameObject
	--- @type UnityEngine_GameObject
	self.selectSelf = self.transform:Find("world_canvas/select_self").gameObject
	--- @type UnityEngine_UI_Text
	self.playerName = self.transform:Find("world_canvas/player_name"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
