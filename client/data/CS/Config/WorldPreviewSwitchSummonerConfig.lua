--- @class WorldPreviewSwitchSummonerConfig
WorldPreviewSwitchSummonerConfig = Class(WorldPreviewSwitchSummonerConfig)

--- @return void
--- @param transform UnityEngine_Transform
function WorldPreviewSwitchSummonerConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
	--- @type UnityEngine_Transform
	self.summonerAnchor = self.transform:Find("summoner_anchor")
	--- @type UnityEngine_Camera
	self.camera = self.transform:Find("camera"):GetComponent(ComponentName.UnityEngine_Camera)
end
