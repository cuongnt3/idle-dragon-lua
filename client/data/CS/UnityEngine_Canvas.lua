--- @class UnityEngine_Canvas
UnityEngine_Canvas = Class(UnityEngine_Canvas)

--- @return void
function UnityEngine_Canvas:Ctor()
	--- @type UnityEngine_RenderMode
	self.renderMode = nil
	--- @type System_Boolean
	self.isRootCanvas = nil
	--- @type UnityEngine_Rect
	self.pixelRect = nil
	--- @type System_Single
	self.scaleFactor = nil
	--- @type System_Single
	self.referencePixelsPerUnit = nil
	--- @type System_Boolean
	self.overridePixelPerfect = nil
	--- @type System_Boolean
	self.pixelPerfect = nil
	--- @type System_Single
	self.planeDistance = nil
	--- @type System_Int32
	self.renderOrder = nil
	--- @type System_Boolean
	self.overrideSorting = nil
	--- @type System_Int32
	self.sortingOrder = nil
	--- @type System_Int32
	self.targetDisplay = nil
	--- @type System_Int32
	self.sortingLayerID = nil
	--- @type System_Int32
	self.cachedSortingLayerValue = nil
	--- @type UnityEngine_AdditionalCanvasShaderChannels
	self.additionalShaderChannels = nil
	--- @type System_String
	self.sortingLayerName = nil
	--- @type UnityEngine_Canvas
	self.rootCanvas = nil
	--- @type UnityEngine_Camera
	self.worldCamera = nil
	--- @type System_Single
	self.normalizedSortingGridSize = nil
	--- @type System_Int32
	self.sortingGridNormalizedSize = nil
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

--- @return UnityEngine_Material
function UnityEngine_Canvas:GetDefaultCanvasTextMaterial()
end

--- @return UnityEngine_Material
function UnityEngine_Canvas:GetDefaultCanvasMaterial()
end

--- @return UnityEngine_Material
function UnityEngine_Canvas:GetETC1SupportedCanvasMaterial()
end

--- @return System_Void
function UnityEngine_Canvas:ForceUpdateCanvases()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_Canvas:GetComponent(type)
end

--- @return CS_T
function UnityEngine_Canvas:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_Canvas:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Canvas:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Canvas:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_Canvas:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_Canvas:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Canvas:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Canvas:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Canvas:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_Canvas:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_Canvas:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Canvas:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Canvas:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_Canvas:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Canvas:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Canvas:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Canvas:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Canvas:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_Canvas:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_Canvas:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_Canvas:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Canvas:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_Canvas:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_Canvas:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Canvas:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Canvas:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Canvas:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Canvas:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Canvas:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Canvas:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Canvas:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Canvas:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Canvas:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_Canvas:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Canvas:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Canvas:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_Canvas:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Canvas:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Canvas:Equals(other)
end

--- @return System_String
function UnityEngine_Canvas:ToString()
end

--- @return System_Type
function UnityEngine_Canvas:GetType()
end
