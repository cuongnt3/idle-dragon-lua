--- @class CS_GenConfigUI
CS_GenConfigUI = Class(CS_GenConfigUI)

--- @return void
function CS_GenConfigUI:Ctor()
	--- @type System_String
	self.linkFileConfig = nil
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
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
	--- @type System_String
	self.link = nil
	--- @type UnityEngine_Transform
	self.root = nil
	--- @type System_Collections_Generic_List`1[GenConfigUI_PropertyData]
	self.propertyDatas = nil
end

--- @return System_Void
function CS_GenConfigUI:FixLink()
end

--- @return System_Void
function CS_GenConfigUI:FixTextToTMP()
end

--- @return System_Void
function CS_GenConfigUI:FixTMPToText()
end

--- @return System_Void
function CS_GenConfigUI:GenConfig()
end

--- @return System_Void
function CS_GenConfigUI:ReGenConfig()
end

--- @return System_Void
--- @param components System_Collections_Generic_List`1[System_Type]
function CS_GenConfigUI:WriteComponentName(components)
end

--- @return System_String
--- @param type System_Type
function CS_GenConfigUI:GetTypeInLua(type)
end

--- @return System_String
--- @param selected UnityEngine_GameObject[]
function CS_GenConfigUI:LogPathToParent(selected)
end

--- @return System_Boolean
function CS_GenConfigUI:IsInvoking()
end

--- @return System_Void
function CS_GenConfigUI:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_GenConfigUI:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_GenConfigUI:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function CS_GenConfigUI:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_GenConfigUI:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_GenConfigUI:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_GenConfigUI:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_GenConfigUI:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_GenConfigUI:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_GenConfigUI:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function CS_GenConfigUI:StopCoroutine(methodName)
end

--- @return System_Void
function CS_GenConfigUI:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_GenConfigUI:GetComponent(type)
end

--- @return CS_T
function CS_GenConfigUI:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_GenConfigUI:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_GenConfigUI:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_GenConfigUI:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_GenConfigUI:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function CS_GenConfigUI:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_GenConfigUI:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_GenConfigUI:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_GenConfigUI:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_GenConfigUI:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_GenConfigUI:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_GenConfigUI:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_GenConfigUI:GetComponentInParent(t)
end

--- @return CS_T
function CS_GenConfigUI:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_GenConfigUI:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_GenConfigUI:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_GenConfigUI:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_GenConfigUI:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_GenConfigUI:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_GenConfigUI:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_GenConfigUI:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_GenConfigUI:GetComponents(results)
end

--- @return CS_T[]
function CS_GenConfigUI:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_GenConfigUI:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_GenConfigUI:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_GenConfigUI:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_GenConfigUI:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_GenConfigUI:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_GenConfigUI:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_GenConfigUI:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_GenConfigUI:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_GenConfigUI:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_GenConfigUI:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_GenConfigUI:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_GenConfigUI:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_GenConfigUI:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function CS_GenConfigUI:GetInstanceID()
end

--- @return System_Int32
function CS_GenConfigUI:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_GenConfigUI:Equals(other)
end

--- @return System_String
function CS_GenConfigUI:ToString()
end

--- @return System_Type
function CS_GenConfigUI:GetType()
end
