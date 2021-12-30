--- @class UnityEngine_GameObject
UnityEngine_GameObject = Class(UnityEngine_GameObject)

--- @return void
function UnityEngine_GameObject:Ctor()
	--- @type UnityEngine_Transform
	self.transform = nil
	--- @type System_Int32
	self.layer = nil
	--- @type System_Boolean
	self.active = nil
	--- @type System_Boolean
	self.activeSelf = nil
	--- @type System_Boolean
	self.activeInHierarchy = nil
	--- @type System_Boolean
	self.isStatic = nil
	--- @type System_String
	self.tag = nil
	--- @type UnityEngine_SceneManagement_Scene
	self.scene = nil
	--- @type UnityEngine_GameObject
	self.gameObject = nil
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

--- @return UnityEngine_GameObject
--- @param type UnityEngine_PrimitiveType
function UnityEngine_GameObject:CreatePrimitive(type)
end

--- @return CS_T
function UnityEngine_GameObject:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_GameObject:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_GameObject:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param type System_Type
--- @param includeInactive System_Boolean
function UnityEngine_GameObject:GetComponentInChildren(type, includeInactive)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_GameObject:GetComponentInChildren(type)
end

--- @return CS_T
function UnityEngine_GameObject:GetComponentInChildren()
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_GameObject:GetComponentInChildren(includeInactive)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_GameObject:GetComponentInParent(type)
end

--- @return CS_T
function UnityEngine_GameObject:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_GameObject:GetComponents(type)
end

--- @return CS_T[]
function UnityEngine_GameObject:GetComponents()
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_GameObject:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_GameObject:GetComponents(results)
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_GameObject:GetComponentsInChildren(type)
end

--- @return UnityEngine_Component[]
--- @param type System_Type
--- @param includeInactive System_Boolean
function UnityEngine_GameObject:GetComponentsInChildren(type, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_GameObject:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_GameObject:GetComponentsInChildren(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_GameObject:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_GameObject:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_GameObject:GetComponentsInParent(type)
end

--- @return UnityEngine_Component[]
--- @param type System_Type
--- @param includeInactive System_Boolean
function UnityEngine_GameObject:GetComponentsInParent(type, includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_GameObject:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_GameObject:GetComponentsInParent(includeInactive)
end

--- @return CS_T[]
function UnityEngine_GameObject:GetComponentsInParent()
end

--- @return UnityEngine_GameObject
--- @param tag System_String
function UnityEngine_GameObject:FindWithTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_GameObject:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_GameObject:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_GameObject:BroadcastMessage(methodName, options)
end

--- @return UnityEngine_Component
--- @param componentType System_Type
function UnityEngine_GameObject:AddComponent(componentType)
end

--- @return CS_T
function UnityEngine_GameObject:AddComponent()
end

--- @return System_Void
--- @param value System_Boolean
function UnityEngine_GameObject:SetActive(value)
end

--- @return System_Void
--- @param state System_Boolean
function UnityEngine_GameObject:SetActiveRecursively(state)
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_GameObject:CompareTag(tag)
end

--- @return UnityEngine_GameObject
--- @param tag System_String
function UnityEngine_GameObject:FindGameObjectWithTag(tag)
end

--- @return UnityEngine_GameObject[]
--- @param tag System_String
function UnityEngine_GameObject:FindGameObjectsWithTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_GameObject:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_GameObject:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_GameObject:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_GameObject:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_GameObject:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_GameObject:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_GameObject:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_GameObject:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_GameObject:BroadcastMessage(methodName)
end

--- @return UnityEngine_GameObject
--- @param name System_String
function UnityEngine_GameObject:Find(name)
end

--- @return System_Void
--- @param clip UnityEngine_Object
--- @param time System_Single
function UnityEngine_GameObject:SampleAnimation(clip, time)
end

--- @return UnityEngine_Component
--- @param className System_String
function UnityEngine_GameObject:AddComponent(className)
end

--- @return System_Void
--- @param animation UnityEngine_Object
function UnityEngine_GameObject:PlayAnimation(animation)
end

--- @return System_Void
function UnityEngine_GameObject:StopAnimation()
end

--- @return System_Int32
function UnityEngine_GameObject:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_GameObject:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_GameObject:Equals(other)
end

--- @return System_String
function UnityEngine_GameObject:ToString()
end

--- @return System_Type
function UnityEngine_GameObject:GetType()
end
