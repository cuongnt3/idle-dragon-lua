--- @class IS_Battle_BattleTeamManager
IS_Battle_BattleTeamManager = Class(IS_Battle_BattleTeamManager)

--- @return void
function IS_Battle_BattleTeamManager:Ctor()
	--- @type IS_Battle_TeamManager
	self.AttackerTeam = nil
	--- @type IS_Battle_TeamManager
	self.DefenderTeam = nil
	--- @type System_Boolean
	self.useGUILayout = nil
	--- @type System_Boolean
	self.runInEditMode = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Boolean
	self.isActiveAndEnabled = nil
	--- @type UnityEngine_Transform
	self.transform = nil
	--- @type UnityEngine_GameObject
	self.gameObject = nil
	--- @type System_String
	self.tag = nil
	--- @type UnityEngine_Component
	self.rigidbody = nil
	--- @type UnityEngine_Component
	self.rigidbody2D = nil
	--- @type UnityEngine_Component
	self.camera = nil
	--- @type UnityEngine_Component
	self.light = nil
	--- @type UnityEngine_Component
	self.animation = nil
	--- @type UnityEngine_Component
	self.constantForce = nil
	--- @type UnityEngine_Component
	self.renderer = nil
	--- @type UnityEngine_Component
	self.audio = nil
	--- @type UnityEngine_Component
	self.guiText = nil
	--- @type UnityEngine_Component
	self.networkView = nil
	--- @type UnityEngine_Component
	self.guiElement = nil
	--- @type UnityEngine_Component
	self.guiTexture = nil
	--- @type UnityEngine_Component
	self.collider = nil
	--- @type UnityEngine_Component
	self.collider2D = nil
	--- @type UnityEngine_Component
	self.hingeJoint = nil
	--- @type UnityEngine_Component
	self.particleEmitter = nil
	--- @type UnityEngine_Component
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param teamId System_Single
--- @param companionId System_Single
--- @param formationId System_Single
function IS_Battle_BattleTeamManager:InitTeam(teamId, companionId, formationId)
end

--- @return IS_Battle_Hero
--- @param heroId System_Int32
--- @param teamId System_Int32
--- @param isFront System_Boolean
--- @param positionId System_Int32
function IS_Battle_BattleTeamManager:AddHero(heroId, teamId, isFront, positionId)
end

--- @return System_Void
--- @param heroId System_Int32
--- @param teamId System_Int32
--- @param isFront System_Boolean
--- @param position System_Int32
function IS_Battle_BattleTeamManager:RemoveHero(heroId, teamId, isFront, position)
end

--- @return IS_Battle_Hero
--- @param teamId System_Int32
--- @param isFront System_Boolean
--- @param position System_Int32
function IS_Battle_BattleTeamManager:GetHero(teamId, isFront, position)
end

--- @return System_Boolean
function IS_Battle_BattleTeamManager:IsInvoking()
end

--- @return System_Void
function IS_Battle_BattleTeamManager:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Battle_BattleTeamManager:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Battle_BattleTeamManager:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleTeamManager:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Battle_BattleTeamManager:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Battle_BattleTeamManager:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_BattleTeamManager:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Battle_BattleTeamManager:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Battle_BattleTeamManager:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Battle_BattleTeamManager:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleTeamManager:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Battle_BattleTeamManager:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Battle_BattleTeamManager:GetComponent(type)
end

--- @return CS_T
function IS_Battle_BattleTeamManager:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Battle_BattleTeamManager:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_BattleTeamManager:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_BattleTeamManager:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Battle_BattleTeamManager:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Battle_BattleTeamManager:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_BattleTeamManager:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_BattleTeamManager:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_BattleTeamManager:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Battle_BattleTeamManager:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Battle_BattleTeamManager:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_BattleTeamManager:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_BattleTeamManager:GetComponentInParent(t)
end

--- @return CS_T
function IS_Battle_BattleTeamManager:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_BattleTeamManager:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_BattleTeamManager:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_BattleTeamManager:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_BattleTeamManager:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Battle_BattleTeamManager:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Battle_BattleTeamManager:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Battle_BattleTeamManager:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_BattleTeamManager:GetComponents(results)
end

--- @return CS_T[]
function IS_Battle_BattleTeamManager:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Battle_BattleTeamManager:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleTeamManager:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_BattleTeamManager:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleTeamManager:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleTeamManager:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_BattleTeamManager:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleTeamManager:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleTeamManager:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleTeamManager:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleTeamManager:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Battle_BattleTeamManager:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_BattleTeamManager:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_BattleTeamManager:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Battle_BattleTeamManager:GetInstanceID()
end

--- @return System_Int32
function IS_Battle_BattleTeamManager:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Battle_BattleTeamManager:Equals(other)
end

--- @return System_String
function IS_Battle_BattleTeamManager:ToString()
end

--- @return System_Type
function IS_Battle_BattleTeamManager:GetType()
end
