--- @class UnityEngine_Transform
UnityEngine_Transform = Class(UnityEngine_Transform)

--- @return void
function UnityEngine_Transform:Ctor()
	--- @type UnityEngine_Vector3
	self.position = nil
	--- @type UnityEngine_Vector3
	self.localPosition = nil
	--- @type UnityEngine_Vector3
	self.eulerAngles = nil
	--- @type UnityEngine_Vector3
	self.localEulerAngles = nil
	--- @type UnityEngine_Vector3
	self.right = nil
	--- @type UnityEngine_Vector3
	self.up = nil
	--- @type UnityEngine_Vector3
	self.forward = nil
	--- @type UnityEngine_Quaternion
	self.rotation = nil
	--- @type UnityEngine_Quaternion
	self.localRotation = nil
	--- @type UnityEngine_Vector3
	self.localScale = nil
	--- @type UnityEngine_Transform
	self.parent = nil
	--- @type UnityEngine_Matrix4x4
	self.worldToLocalMatrix = nil
	--- @type UnityEngine_Matrix4x4
	self.localToWorldMatrix = nil
	--- @type UnityEngine_Transform
	self.root = nil
	--- @type System_Int32
	self.childCount = nil
	--- @type UnityEngine_Vector3
	self.lossyScale = nil
	--- @type System_Boolean
	self.hasChanged = nil
	--- @type System_Int32
	self.hierarchyCapacity = nil
	--- @type System_Int32
	self.hierarchyCount = nil
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
--- @param parent UnityEngine_Transform
function UnityEngine_Transform:SetParent(parent)
end

--- @return System_Void
--- @param parent UnityEngine_Transform
--- @param worldPositionStays System_Boolean
function UnityEngine_Transform:SetParent(parent, worldPositionStays)
end

--- @return System_Void
--- @param position UnityEngine_Vector3
--- @param rotation UnityEngine_Quaternion
function UnityEngine_Transform:SetPositionAndRotation(position, rotation)
end

--- @return System_Void
--- @param translation UnityEngine_Vector3
function UnityEngine_Transform:Translate(translation)
end

--- @return System_Void
--- @param translation UnityEngine_Vector3
--- @param relativeTo UnityEngine_Space
function UnityEngine_Transform:Translate(translation, relativeTo)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Transform:Translate(x, y, z)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
--- @param relativeTo UnityEngine_Space
function UnityEngine_Transform:Translate(x, y, z, relativeTo)
end

--- @return System_Void
--- @param translation UnityEngine_Vector3
--- @param relativeTo UnityEngine_Transform
function UnityEngine_Transform:Translate(translation, relativeTo)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
--- @param relativeTo UnityEngine_Transform
function UnityEngine_Transform:Translate(x, y, z, relativeTo)
end

--- @return System_Void
--- @param eulerAngles UnityEngine_Vector3
function UnityEngine_Transform:Rotate(eulerAngles)
end

--- @return System_Void
--- @param eulerAngles UnityEngine_Vector3
--- @param relativeTo UnityEngine_Space
function UnityEngine_Transform:Rotate(eulerAngles, relativeTo)
end

--- @return System_Void
--- @param xAngle System_Single
--- @param yAngle System_Single
--- @param zAngle System_Single
function UnityEngine_Transform:Rotate(xAngle, yAngle, zAngle)
end

--- @return System_Void
--- @param xAngle System_Single
--- @param yAngle System_Single
--- @param zAngle System_Single
--- @param relativeTo UnityEngine_Space
function UnityEngine_Transform:Rotate(xAngle, yAngle, zAngle, relativeTo)
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_Transform:Rotate(axis, angle)
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
--- @param relativeTo UnityEngine_Space
function UnityEngine_Transform:Rotate(axis, angle, relativeTo)
end

--- @return System_Void
--- @param point UnityEngine_Vector3
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_Transform:RotateAround(point, axis, angle)
end

--- @return System_Void
--- @param target UnityEngine_Transform
function UnityEngine_Transform:LookAt(target)
end

--- @return System_Void
--- @param target UnityEngine_Transform
--- @param worldUp UnityEngine_Vector3
function UnityEngine_Transform:LookAt(target, worldUp)
end

--- @return System_Void
--- @param worldPosition UnityEngine_Vector3
--- @param worldUp UnityEngine_Vector3
function UnityEngine_Transform:LookAt(worldPosition, worldUp)
end

--- @return System_Void
--- @param worldPosition UnityEngine_Vector3
function UnityEngine_Transform:LookAt(worldPosition)
end

--- @return UnityEngine_Vector3
--- @param direction UnityEngine_Vector3
function UnityEngine_Transform:TransformDirection(direction)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Transform:TransformDirection(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param direction UnityEngine_Vector3
function UnityEngine_Transform:InverseTransformDirection(direction)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Transform:InverseTransformDirection(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
function UnityEngine_Transform:TransformVector(vector)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Transform:TransformVector(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
function UnityEngine_Transform:InverseTransformVector(vector)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Transform:InverseTransformVector(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Transform:TransformPoint(position)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Transform:TransformPoint(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Transform:InverseTransformPoint(position)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_Transform:InverseTransformPoint(x, y, z)
end

--- @return System_Void
function UnityEngine_Transform:DetachChildren()
end

--- @return System_Void
function UnityEngine_Transform:SetAsFirstSibling()
end

--- @return System_Void
function UnityEngine_Transform:SetAsLastSibling()
end

--- @return System_Void
--- @param index System_Int32
function UnityEngine_Transform:SetSiblingIndex(index)
end

--- @return System_Int32
function UnityEngine_Transform:GetSiblingIndex()
end

--- @return UnityEngine_Transform
--- @param name System_String
function UnityEngine_Transform:Find(name)
end

--- @return System_Boolean
--- @param parent UnityEngine_Transform
function UnityEngine_Transform:IsChildOf(parent)
end

--- @return UnityEngine_Transform
--- @param name System_String
function UnityEngine_Transform:FindChild(name)
end

--- @return System_Collections_IEnumerator
function UnityEngine_Transform:GetEnumerator()
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_Transform:RotateAround(axis, angle)
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_Transform:RotateAroundLocal(axis, angle)
end

--- @return UnityEngine_Transform
--- @param index System_Int32
function UnityEngine_Transform:GetChild(index)
end

--- @return System_Int32
function UnityEngine_Transform:GetChildCount()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_Transform:GetComponent(type)
end

--- @return CS_T
function UnityEngine_Transform:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_Transform:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Transform:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Transform:GetComponentInChildren(t)
end

--- @return CS_T
function UnityEngine_Transform:GetComponentInChildren()
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_Transform:GetComponentInChildren(includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Transform:GetComponentsInChildren(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Transform:GetComponentsInChildren(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Transform:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_Transform:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_Transform:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Transform:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Transform:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_Transform:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Transform:GetComponentsInParent(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Transform:GetComponentsInParent(t, includeInactive)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Transform:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Transform:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_Transform:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_Transform:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_Transform:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Transform:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_Transform:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_Transform:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Transform:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Transform:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Transform:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Transform:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Transform:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Transform:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Transform:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Transform:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Transform:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_Transform:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Transform:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Transform:BroadcastMessage(methodName, options)
end

--- @return System_String
function UnityEngine_Transform:ToString()
end

--- @return System_Int32
function UnityEngine_Transform:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Transform:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Transform:Equals(other)
end

--- @return System_Type
function UnityEngine_Transform:GetType()
end
