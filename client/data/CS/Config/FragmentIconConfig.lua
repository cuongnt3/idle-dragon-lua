--- @class FragmentIconConfig
FragmentIconConfig = Class(FragmentIconConfig)

--- @return void
--- @param transform UnityEngine_Transform
function FragmentIconConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_RectTransform
	self.iconInfo = self.transform:Find("visual/icon_info"):GetComponent(ComponentName.UnityEngine_RectTransform)
	--- @type UnityEngine_UI_Image
	self.imageProcess = self.transform:Find("visual/thanh_so_luong/bg_quest_progress_bar_2"):GetComponent(ComponentName.UnityEngine_UI_Image)
	--- @type UnityEngine_GameObject
	self.imageProcessFull = self.transform:Find("visual/thanh_so_luong/bg_quest_progress_bar_1").gameObject
	--- @type UnityEngine_UI_Text
	self.textProcess = self.transform:Find("visual/thanh_so_luong/text_so_luong_nguyen_lieu"):GetComponent(ComponentName.UnityEngine_UI_Text)
end
