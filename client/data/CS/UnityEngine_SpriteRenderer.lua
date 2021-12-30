--- @class UnityEngine_SpriteRenderer
UnityEngine_SpriteRenderer = Class(UnityEngine_SpriteRenderer)

--- @return void
function UnityEngine_SpriteRenderer:Ctor()
	--- @type UnityEngine_Sprite
	self.sprite = nil
	--- @type UnityEngine_SpriteDrawMode
	self.drawMode = nil
	--- @type UnityEngine_Vector2
	self.size = nil
	--- @type System_Single
	self.adaptiveModeThreshold = nil
	--- @type UnityEngine_SpriteTileMode
	self.tileMode = nil
	--- @type UnityEngine_Color
	self.color = nil
	--- @type UnityEngine_SpriteMaskInteraction
	self.maskInteraction = nil
	--- @type System_Boolean
	self.flipX = nil
	--- @type System_Boolean
	self.flipY = nil
	--- @type UnityEngine_SpriteSortPoint
	self.spriteSortPoint = nil
	--- @type UnityEngine_Vector4
	self.lightmapTilingOffset = nil
	--- @type UnityEngine_Transform
	self.lightProbeAnchor = nil
	--- @type System_Boolean
	self.castShadows = nil
	--- @type System_Boolean
	self.motionVectors = nil
	--- @type System_Boolean
	self.useLightProbes = nil
	--- @type UnityEngine_Bounds
	self.bounds = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Boolean
	self.isVisible = nil
	--- @type UnityEngine_Rendering_ShadowCastingMode
	self.shadowCastingMode = nil
	--- @type System_Boolean
	self.receiveShadows = nil
	--- @type UnityEngine_MotionVectorGenerationMode
	self.motionVectorGenerationMode = nil
	--- @type UnityEngine_Rendering_LightProbeUsage
	self.lightProbeUsage = nil
	--- @type UnityEngine_Rendering_ReflectionProbeUsage
	self.reflectionProbeUsage = nil
	--- @type System_UInt32
	self.renderingLayerMask = nil
	--- @type System_String
	self.sortingLayerName = nil
	--- @type System_Int32
	self.sortingLayerID = nil
	--- @type System_Int32
	self.sortingOrder = nil
	--- @type System_Boolean
	self.allowOcclusionWhenDynamic = nil
	--- @type System_Boolean
	self.isPartOfStaticBatch = nil
	--- @type UnityEngine_Matrix4x4
	self.worldToLocalMatrix = nil
	--- @type UnityEngine_Matrix4x4
	self.localToWorldMatrix = nil
	--- @type UnityEngine_GameObject
	self.lightProbeProxyVolumeOverride = nil
	--- @type UnityEngine_Transform
	self.probeAnchor = nil
	--- @type System_Int32
	self.lightmapIndex = nil
	--- @type System_Int32
	self.realtimeLightmapIndex = nil
	--- @type UnityEngine_Vector4
	self.lightmapScaleOffset = nil
	--- @type UnityEngine_Vector4
	self.realtimeLightmapScaleOffset = nil
	--- @type UnityEngine_Material[]
	self.materials = nil
	--- @type UnityEngine_Material
	self.material = nil
	--- @type UnityEngine_Material
	self.sharedMaterial = nil
	--- @type UnityEngine_Material[]
	self.sharedMaterials = nil
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
function UnityEngine_SpriteRenderer:HasPropertyBlock()
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
function UnityEngine_SpriteRenderer:SetPropertyBlock(properties)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
--- @param materialIndex System_Int32
function UnityEngine_SpriteRenderer:SetPropertyBlock(properties, materialIndex)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
function UnityEngine_SpriteRenderer:GetPropertyBlock(properties)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
--- @param materialIndex System_Int32
function UnityEngine_SpriteRenderer:GetPropertyBlock(properties, materialIndex)
end

--- @return System_Void
--- @param m System_Collections_Generic_List`1[UnityEngine_Material]
function UnityEngine_SpriteRenderer:GetMaterials(m)
end

--- @return System_Void
--- @param m System_Collections_Generic_List`1[UnityEngine_Material]
function UnityEngine_SpriteRenderer:GetSharedMaterials(m)
end

--- @return System_Void
--- @param result System_Collections_Generic_List`1[UnityEngine_Rendering_ReflectionProbeBlendInfo]
function UnityEngine_SpriteRenderer:GetClosestReflectionProbes(result)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_SpriteRenderer:GetComponent(type)
end

--- @return CS_T
function UnityEngine_SpriteRenderer:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_SpriteRenderer:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_SpriteRenderer:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_SpriteRenderer:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_SpriteRenderer:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_SpriteRenderer:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_SpriteRenderer:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_SpriteRenderer:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_SpriteRenderer:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_SpriteRenderer:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_SpriteRenderer:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_SpriteRenderer:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_SpriteRenderer:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_SpriteRenderer:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_SpriteRenderer:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_SpriteRenderer:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_SpriteRenderer:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_SpriteRenderer:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_SpriteRenderer:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_SpriteRenderer:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_SpriteRenderer:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_SpriteRenderer:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_SpriteRenderer:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_SpriteRenderer:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_SpriteRenderer:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_SpriteRenderer:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_SpriteRenderer:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_SpriteRenderer:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_SpriteRenderer:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_SpriteRenderer:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_SpriteRenderer:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_SpriteRenderer:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_SpriteRenderer:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_SpriteRenderer:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_SpriteRenderer:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_SpriteRenderer:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_SpriteRenderer:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_SpriteRenderer:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_SpriteRenderer:Equals(other)
end

--- @return System_String
function UnityEngine_SpriteRenderer:ToString()
end

--- @return System_Type
function UnityEngine_SpriteRenderer:GetType()
end
