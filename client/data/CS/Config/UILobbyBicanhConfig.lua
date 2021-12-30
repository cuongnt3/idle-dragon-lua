--- @class UILobbyDomainConfig
UILobbyDomainConfig = Class(UILobbyDomainConfig)

--- @return void
--- @param transform UnityEngine_Transform
function UILobbyDomainConfig:Ctor(transform)
	--- @type UnityEngine_GameObject
	self.gameObject = transform.gameObject
	--- @type UnityEngine_Transform
	self.transform = transform.transform
end

