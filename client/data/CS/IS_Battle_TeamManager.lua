--- @class IS_Battle_TeamManager
IS_Battle_TeamManager = Class(IS_Battle_TeamManager)

--- @return void
function IS_Battle_TeamManager:Ctor()
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
function IS_Battle_TeamManager:InitTeam(teamId, companionId, formationId)
end

--- @return IS_Battle_Hero
--- @param heroId System_Int32
--- @param isFront System_Boolean
--- @param positionId System_Int32
function IS_Battle_TeamManager:AddHero(heroId, isFront, positionId)
end

--- @return System_Void
--- @param isFront System_Boolean
--- @param position System_Int32
function IS_Battle_TeamManager:RemoveHero(isFront, position)
end

--- @return IS_Battle_Hero
--- @param isFront System_Boolean
--- @param position System_Int32
function IS_Battle_TeamManager:GetHero(isFront, position)
end

--- @return System_Boolean
function IS_Battle_TeamManager:IsInvoking()
end

--- @return System_Void
function IS_Battle_TeamManager:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function IS_Battle_TeamManager:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function IS_Battle_TeamManager:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_TeamManager:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function IS_Battle_TeamManager:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function IS_Battle_TeamManager:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_TeamManager:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function IS_Battle_TeamManager:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function IS_Battle_TeamManager:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function IS_Battle_TeamManager:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_TeamManager:StopCoroutine(methodName)
end

--- @return System_Void
function IS_Battle_TeamManager:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function IS_Battle_TeamManager:GetComponent(type)
end

--- @return CS_T
function IS_Battle_TeamManager:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function IS_Battle_TeamManager:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_TeamManager:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_TeamManager:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function IS_Battle_TeamManager:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function IS_Battle_TeamManager:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_TeamManager:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_TeamManager:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_TeamManager:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function IS_Battle_TeamManager:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function IS_Battle_TeamManager:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_TeamManager:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function IS_Battle_TeamManager:GetComponentInParent(t)
end

--- @return CS_T
function IS_Battle_TeamManager:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function IS_Battle_TeamManager:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function IS_Battle_TeamManager:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function IS_Battle_TeamManager:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_TeamManager:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function IS_Battle_TeamManager:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function IS_Battle_TeamManager:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function IS_Battle_TeamManager:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function IS_Battle_TeamManager:GetComponents(results)
end

--- @return CS_T[]
function IS_Battle_TeamManager:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function IS_Battle_TeamManager:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_TeamManager:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_TeamManager:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_TeamManager:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_TeamManager:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function IS_Battle_TeamManager:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_TeamManager:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_TeamManager:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_TeamManager:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_TeamManager:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function IS_Battle_TeamManager:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function IS_Battle_TeamManager:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function IS_Battle_TeamManager:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function IS_Battle_TeamManager:GetInstanceID()
end

--- @return System_Int32
function IS_Battle_TeamManager:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function IS_Battle_TeamManager:Equals(other)
end

--- @return System_String
function IS_Battle_TeamManager:ToString()
end

--- @return System_Type
function IS_Battle_TeamManager:GetType()
end
