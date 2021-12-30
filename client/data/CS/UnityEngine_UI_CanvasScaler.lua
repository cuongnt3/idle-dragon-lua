--- @class UnityEngine_UI_CanvasScaler
UnityEngine_UI_CanvasScaler = Class(UnityEngine_UI_CanvasScaler)

--- @return void
function UnityEngine_UI_CanvasScaler:Ctor()
	--- @type UnityEngine_UI_CanvasScaler_ScaleMode
	self.uiScaleMode = nil
	--- @type System_Single
	self.referencePixelsPerUnit = nil
	--- @type System_Single
	self.scaleFactor = nil
	--- @type UnityEngine_Vector2
	self.referenceResolution = nil
	--- @type UnityEngine_UI_CanvasScaler_ScreenMatchMode
	self.screenMatchMode = nil
	--- @type System_Single
	self.matchWidthOrHeight = nil
	--- @type UnityEngine_UI_CanvasScaler_Unit
	self.physicalUnit = nil
	--- @type System_Single
	self.fallbackScreenDPI = nil
	--- @type System_Single
	self.defaultSpriteDPI = nil
	--- @type System_Single
	self.dynamicPixelsPerUnit = nil
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

--- @return System_Boolean
function UnityEngine_UI_CanvasScaler:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_CanvasScaler:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_CanvasScaler:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_CanvasScaler:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_CanvasScaler:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_CanvasScaler:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_CanvasScaler:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_CanvasScaler:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_CanvasScaler:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_CanvasScaler:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_CanvasScaler:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_CanvasScaler:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_CanvasScaler:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_CanvasScaler:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_CanvasScaler:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_CanvasScaler:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_CanvasScaler:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_CanvasScaler:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_CanvasScaler:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_CanvasScaler:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_CanvasScaler:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_CanvasScaler:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_CanvasScaler:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_CanvasScaler:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_CanvasScaler:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_CanvasScaler:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_CanvasScaler:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_CanvasScaler:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_CanvasScaler:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_CanvasScaler:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_CanvasScaler:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_CanvasScaler:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_CanvasScaler:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_CanvasScaler:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_CanvasScaler:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_CanvasScaler:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_CanvasScaler:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_CanvasScaler:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_CanvasScaler:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_CanvasScaler:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_CanvasScaler:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_CanvasScaler:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_CanvasScaler:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_CanvasScaler:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_CanvasScaler:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_CanvasScaler:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_CanvasScaler:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_CanvasScaler:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_CanvasScaler:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_CanvasScaler:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_CanvasScaler:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_CanvasScaler:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_CanvasScaler:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_CanvasScaler:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_CanvasScaler:Equals(other)
end

--- @return System_String
function UnityEngine_UI_CanvasScaler:ToString()
end

--- @return System_Type
function UnityEngine_UI_CanvasScaler:GetType()
end
