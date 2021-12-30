--- @class SelectServerConfig
SelectServerConfig = Class(SelectServerConfig)

--- @return void
--- @param transform UnityEngine_Transform
function SelectServerConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.avatarTuong = self.transform:Find("avatar_tuong"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Text
	self.textNameUser = self.transform:Find("text_ten_user"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Text
	self.textNameServer = self.transform:Find("text_ten_server"):GetComponent(ComponentName.UnityEngine_UI_Text)
	--- @type UnityEngine_UI_Button
	self.button = self.transform:Find(""):GetComponent(ComponentName.UnityEngine_UI_Button)
	--- @type UnityEngine_UI_Image
	self.effectServerDuocChon = self.transform:Find("effect_server_duoc_chon"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.new = self.transform:Find("new").gameObject
	--- @type UnityEngine_UI_Text
	self.textNew = self.transform:Find("new/text_new"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
