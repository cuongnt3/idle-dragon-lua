--- @class UnityEngine_CanvasGroup
UnityEngine_CanvasGroup = Class(UnityEngine_CanvasGroup)

--- @return void
function UnityEngine_CanvasGroup:Ctor()
	--- @type System_Single
	self.alpha = nil
	--- @type System_Boolean
	self.interactable = nil
	--- @type System_Boolean
	self.blocksRaycasts = nil
	--- @type System_Boolean
	self.ignoreParentGroups = nil
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
end

--- @return System_Boolean
--- @param sp UnityEngine_Vector2
--- @param eventCamera UnityEngine_Camera
function UnityEngine_CanvasGroup:IsRaycastLocationValid(sp, eventCamera)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_CanvasGroup:GetComponent(type)
end

--- @return CS_T
function UnityEngine_CanvasGroup:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_CanvasGroup:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_CanvasGroup:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_CanvasGroup:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_CanvasGroup:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_CanvasGroup:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_CanvasGroup:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_CanvasGroup:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_CanvasGroup:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_CanvasGroup:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_CanvasGroup:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_CanvasGroup:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_CanvasGroup:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_CanvasGroup:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_CanvasGroup:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_CanvasGroup:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_CanvasGroup:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_CanvasGroup:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_CanvasGroup:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_CanvasGroup:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_CanvasGroup:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_CanvasGroup:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_CanvasGroup:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_CanvasGroup:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasGroup:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_CanvasGroup:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_CanvasGroup:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasGroup:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_CanvasGroup:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_CanvasGroup:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasGroup:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasGroup:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasGroup:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_CanvasGroup:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_CanvasGroup:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasGroup:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_CanvasGroup:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_CanvasGroup:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_CanvasGroup:Equals(other)
end

--- @return System_String
function UnityEngine_CanvasGroup:ToString()
end

--- @return System_Type
function UnityEngine_CanvasGroup:GetType()
end
