--- @class UnityEngine_TextMesh
UnityEngine_TextMesh = Class(UnityEngine_TextMesh)

--- @return void
function UnityEngine_TextMesh:Ctor()
	--- @type System_String
	self.text = nil
	--- @type UnityEngine_Font
	self.font = nil
	--- @type System_Int32
	self.fontSize = nil
	--- @type UnityEngine_FontStyle
	self.fontStyle = nil
	--- @type System_Single
	self.offsetZ = nil
	--- @type UnityEngine_TextAlignment
	self.alignment = nil
	--- @type UnityEngine_TextAnchor
	self.anchor = nil
	--- @type System_Single
	self.characterSize = nil
	--- @type System_Single
	self.lineSpacing = nil
	--- @type System_Single
	self.tabSize = nil
	--- @type System_Boolean
	self.richText = nil
	--- @type UnityEngine_Color
	self.color = nil
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

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_TextMesh:GetComponent(type)
end

--- @return CS_T
function UnityEngine_TextMesh:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_TextMesh:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_TextMesh:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_TextMesh:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_TextMesh:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_TextMesh:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_TextMesh:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_TextMesh:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_TextMesh:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_TextMesh:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_TextMesh:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_TextMesh:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_TextMesh:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_TextMesh:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_TextMesh:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_TextMesh:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_TextMesh:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_TextMesh:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_TextMesh:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_TextMesh:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_TextMesh:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_TextMesh:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_TextMesh:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_TextMesh:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_TextMesh:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_TextMesh:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_TextMesh:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_TextMesh:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_TextMesh:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_TextMesh:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_TextMesh:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_TextMesh:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_TextMesh:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_TextMesh:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_TextMesh:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_TextMesh:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_TextMesh:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_TextMesh:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_TextMesh:Equals(other)
end

--- @return System_String
function UnityEngine_TextMesh:ToString()
end

--- @return System_Type
function UnityEngine_TextMesh:GetType()
end
