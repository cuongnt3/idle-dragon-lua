--- @class ToolDesign_AnalyticTool
ToolDesign_AnalyticTool = Class(ToolDesign_AnalyticTool)

--- @return void
function ToolDesign_AnalyticTool:Ctor()
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
	--- @type ToolDesign_AnalyticConfig
	self.config = nil
	--- @type ToolDesign_HeroPool
	self.attackerPool = nil
	--- @type ToolDesign_HeroPool
	self.defenderPool = nil
	--- @type System_Action
	self.onFinishBattle = nil
	--- @type System_Collections_Generic_List`1[System_Int32]
	self.attackerDataBattleList = nil
	--- @type System_Collections_Generic_List`1[System_Int32]
	self.defenderDataBattleList = nil
end

--- @return System_Void
function ToolDesign_AnalyticTool:InitHeroList()
end

--- @return System_String
--- @param attacker System_Int32
--- @param defender System_Int32
function ToolDesign_AnalyticTool:CreateBattle(attacker, defender)
end

--- @return System_Void
function ToolDesign_AnalyticTool:FinishBattle()
end

--- @return System_Void
--- @param list System_Collections_Generic_List`1[System_Int32]
--- @param numberHero System_Int32
function ToolDesign_AnalyticTool:PrintList(list, numberHero)
end

--- @return System_Boolean
function ToolDesign_AnalyticTool:IsInvoking()
end

--- @return System_Void
function ToolDesign_AnalyticTool:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function ToolDesign_AnalyticTool:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function ToolDesign_AnalyticTool:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function ToolDesign_AnalyticTool:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function ToolDesign_AnalyticTool:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function ToolDesign_AnalyticTool:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function ToolDesign_AnalyticTool:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function ToolDesign_AnalyticTool:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function ToolDesign_AnalyticTool:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function ToolDesign_AnalyticTool:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function ToolDesign_AnalyticTool:StopCoroutine(methodName)
end

--- @return System_Void
function ToolDesign_AnalyticTool:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function ToolDesign_AnalyticTool:GetComponent(type)
end

--- @return CS_T
function ToolDesign_AnalyticTool:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function ToolDesign_AnalyticTool:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function ToolDesign_AnalyticTool:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function ToolDesign_AnalyticTool:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function ToolDesign_AnalyticTool:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function ToolDesign_AnalyticTool:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function ToolDesign_AnalyticTool:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function ToolDesign_AnalyticTool:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function ToolDesign_AnalyticTool:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function ToolDesign_AnalyticTool:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function ToolDesign_AnalyticTool:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function ToolDesign_AnalyticTool:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function ToolDesign_AnalyticTool:GetComponentInParent(t)
end

--- @return CS_T
function ToolDesign_AnalyticTool:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function ToolDesign_AnalyticTool:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function ToolDesign_AnalyticTool:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function ToolDesign_AnalyticTool:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function ToolDesign_AnalyticTool:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function ToolDesign_AnalyticTool:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function ToolDesign_AnalyticTool:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function ToolDesign_AnalyticTool:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function ToolDesign_AnalyticTool:GetComponents(results)
end

--- @return CS_T[]
function ToolDesign_AnalyticTool:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function ToolDesign_AnalyticTool:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function ToolDesign_AnalyticTool:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function ToolDesign_AnalyticTool:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function ToolDesign_AnalyticTool:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function ToolDesign_AnalyticTool:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function ToolDesign_AnalyticTool:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function ToolDesign_AnalyticTool:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function ToolDesign_AnalyticTool:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function ToolDesign_AnalyticTool:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function ToolDesign_AnalyticTool:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function ToolDesign_AnalyticTool:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function ToolDesign_AnalyticTool:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function ToolDesign_AnalyticTool:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function ToolDesign_AnalyticTool:GetInstanceID()
end

--- @return System_Int32
function ToolDesign_AnalyticTool:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function ToolDesign_AnalyticTool:Equals(other)
end

--- @return System_String
function ToolDesign_AnalyticTool:ToString()
end

--- @return System_Type
function ToolDesign_AnalyticTool:GetType()
end
