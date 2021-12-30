--- @class UnityEngine_RectTransform
UnityEngine_RectTransform = Class(UnityEngine_RectTransform)

--- @return void
function UnityEngine_RectTransform:Ctor()
	--- @type UnityEngine_Rect
	self.rect = nil
	--- @type UnityEngine_Vector2
	self.anchorMin = nil
	--- @type UnityEngine_Vector2
	self.anchorMax = nil
	--- @type UnityEngine_Vector2
	self.anchoredPosition = nil
	--- @type UnityEngine_Vector2
	self.sizeDelta = nil
	--- @type UnityEngine_Vector2
	self.pivot = nil
	--- @type UnityEngine_Vector3
	self.anchoredPosition3D = nil
	--- @type UnityEngine_Vector2
	self.offsetMin = nil
	--- @type UnityEngine_Vector2
	self.offsetMax = nil
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
function UnityEngine_RectTransform:ForceUpdateRectTransforms()
end

--- @return System_Void
--- @param fourCornersArray UnityEngine_Vector3[]
function UnityEngine_RectTransform:GetLocalCorners(fourCornersArray)
end

--- @return System_Void
--- @param fourCornersArray UnityEngine_Vector3[]
function UnityEngine_RectTransform:GetWorldCorners(fourCornersArray)
end

--- @return System_Void
--- @param edge UnityEngine_RectTransform_Edge
--- @param inset System_Single
--- @param size System_Single
function UnityEngine_RectTransform:SetInsetAndSizeFromParentEdge(edge, inset, size)
end

--- @return System_Void
--- @param axis UnityEngine_RectTransform_Axis
--- @param size System_Single
function UnityEngine_RectTransform:SetSizeWithCurrentAnchors(axis, size)
end

--- @return System_Void
--- @param p UnityEngine_Transform
function UnityEngine_RectTransform:SetParent(p)
end

--- @return System_Void
--- @param parent UnityEngine_Transform
--- @param worldPositionStays System_Boolean
function UnityEngine_RectTransform:SetParent(parent, worldPositionStays)
end

--- @return System_Void
--- @param position UnityEngine_Vector3
--- @param rotation UnityEngine_Quaternion
function UnityEngine_RectTransform:SetPositionAndRotation(position, rotation)
end

--- @return System_Void
--- @param translation UnityEngine_Vector3
--- @param relativeTo UnityEngine_Space
function UnityEngine_RectTransform:Translate(translation, relativeTo)
end

--- @return System_Void
--- @param translation UnityEngine_Vector3
function UnityEngine_RectTransform:Translate(translation)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
--- @param relativeTo UnityEngine_Space
function UnityEngine_RectTransform:Translate(x, y, z, relativeTo)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_RectTransform:Translate(x, y, z)
end

--- @return System_Void
--- @param translation UnityEngine_Vector3
--- @param relativeTo UnityEngine_Transform
function UnityEngine_RectTransform:Translate(translation, relativeTo)
end

--- @return System_Void
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
--- @param relativeTo UnityEngine_Transform
function UnityEngine_RectTransform:Translate(x, y, z, relativeTo)
end

--- @return System_Void
--- @param eulers UnityEngine_Vector3
--- @param relativeTo UnityEngine_Space
function UnityEngine_RectTransform:Rotate(eulers, relativeTo)
end

--- @return System_Void
--- @param eulers UnityEngine_Vector3
function UnityEngine_RectTransform:Rotate(eulers)
end

--- @return System_Void
--- @param xAngle System_Single
--- @param yAngle System_Single
--- @param zAngle System_Single
--- @param relativeTo UnityEngine_Space
function UnityEngine_RectTransform:Rotate(xAngle, yAngle, zAngle, relativeTo)
end

--- @return System_Void
--- @param xAngle System_Single
--- @param yAngle System_Single
--- @param zAngle System_Single
function UnityEngine_RectTransform:Rotate(xAngle, yAngle, zAngle)
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
--- @param relativeTo UnityEngine_Space
function UnityEngine_RectTransform:Rotate(axis, angle, relativeTo)
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_RectTransform:Rotate(axis, angle)
end

--- @return System_Void
--- @param point UnityEngine_Vector3
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_RectTransform:RotateAround(point, axis, angle)
end

--- @return System_Void
--- @param target UnityEngine_Transform
--- @param worldUp UnityEngine_Vector3
function UnityEngine_RectTransform:LookAt(target, worldUp)
end

--- @return System_Void
--- @param target UnityEngine_Transform
function UnityEngine_RectTransform:LookAt(target)
end

--- @return System_Void
--- @param worldPosition UnityEngine_Vector3
--- @param worldUp UnityEngine_Vector3
function UnityEngine_RectTransform:LookAt(worldPosition, worldUp)
end

--- @return System_Void
--- @param worldPosition UnityEngine_Vector3
function UnityEngine_RectTransform:LookAt(worldPosition)
end

--- @return UnityEngine_Vector3
--- @param direction UnityEngine_Vector3
function UnityEngine_RectTransform:TransformDirection(direction)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_RectTransform:TransformDirection(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param direction UnityEngine_Vector3
function UnityEngine_RectTransform:InverseTransformDirection(direction)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_RectTransform:InverseTransformDirection(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
function UnityEngine_RectTransform:TransformVector(vector)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_RectTransform:TransformVector(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
function UnityEngine_RectTransform:InverseTransformVector(vector)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_RectTransform:InverseTransformVector(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_RectTransform:TransformPoint(position)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_RectTransform:TransformPoint(x, y, z)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_RectTransform:InverseTransformPoint(position)
end

--- @return UnityEngine_Vector3
--- @param x System_Single
--- @param y System_Single
--- @param z System_Single
function UnityEngine_RectTransform:InverseTransformPoint(x, y, z)
end

--- @return System_Void
function UnityEngine_RectTransform:DetachChildren()
end

--- @return System_Void
function UnityEngine_RectTransform:SetAsFirstSibling()
end

--- @return System_Void
function UnityEngine_RectTransform:SetAsLastSibling()
end

--- @return System_Void
--- @param index System_Int32
function UnityEngine_RectTransform:SetSiblingIndex(index)
end

--- @return System_Int32
function UnityEngine_RectTransform:GetSiblingIndex()
end

--- @return UnityEngine_Transform
--- @param n System_String
function UnityEngine_RectTransform:Find(n)
end

--- @return System_Boolean
--- @param parent UnityEngine_Transform
function UnityEngine_RectTransform:IsChildOf(parent)
end

--- @return UnityEngine_Transform
--- @param n System_String
function UnityEngine_RectTransform:FindChild(n)
end

--- @return System_Collections_IEnumerator
function UnityEngine_RectTransform:GetEnumerator()
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_RectTransform:RotateAround(axis, angle)
end

--- @return System_Void
--- @param axis UnityEngine_Vector3
--- @param angle System_Single
function UnityEngine_RectTransform:RotateAroundLocal(axis, angle)
end

--- @return UnityEngine_Transform
--- @param index System_Int32
function UnityEngine_RectTransform:GetChild(index)
end

--- @return System_Int32
function UnityEngine_RectTransform:GetChildCount()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_RectTransform:GetComponent(type)
end

--- @return CS_T
function UnityEngine_RectTransform:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_RectTransform:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_RectTransform:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_RectTransform:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_RectTransform:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_RectTransform:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_RectTransform:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_RectTransform:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_RectTransform:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_RectTransform:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_RectTransform:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_RectTransform:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_RectTransform:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_RectTransform:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_RectTransform:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_RectTransform:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_RectTransform:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_RectTransform:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_RectTransform:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_RectTransform:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_RectTransform:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_RectTransform:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_RectTransform:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_RectTransform:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_RectTransform:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_RectTransform:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_RectTransform:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_RectTransform:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_RectTransform:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_RectTransform:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_RectTransform:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_RectTransform:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_RectTransform:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_RectTransform:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_RectTransform:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_RectTransform:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_RectTransform:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_RectTransform:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_RectTransform:Equals(other)
end

--- @return System_String
function UnityEngine_RectTransform:ToString()
end

--- @return System_Type
function UnityEngine_RectTransform:GetType()
end
