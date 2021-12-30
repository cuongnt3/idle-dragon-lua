--- @class UnityEngine_MeshRenderer
UnityEngine_MeshRenderer = Class(UnityEngine_MeshRenderer)

--- @return void
function UnityEngine_MeshRenderer:Ctor()
	--- @type UnityEngine_Mesh
	self.additionalVertexStreams = nil
	--- @type System_Int32
	self.subMeshStartIndex = nil
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
	--- @type System_Int32
	self.rendererPriority = nil
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
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Boolean
function UnityEngine_MeshRenderer:HasPropertyBlock()
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
function UnityEngine_MeshRenderer:SetPropertyBlock(properties)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
--- @param materialIndex System_Int32
function UnityEngine_MeshRenderer:SetPropertyBlock(properties, materialIndex)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
function UnityEngine_MeshRenderer:GetPropertyBlock(properties)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
--- @param materialIndex System_Int32
function UnityEngine_MeshRenderer:GetPropertyBlock(properties, materialIndex)
end

--- @return System_Void
--- @param m System_Collections_Generic_List`1[UnityEngine_Material]
function UnityEngine_MeshRenderer:GetMaterials(m)
end

--- @return System_Void
--- @param m System_Collections_Generic_List`1[UnityEngine_Material]
function UnityEngine_MeshRenderer:GetSharedMaterials(m)
end

--- @return System_Void
--- @param result System_Collections_Generic_List`1[UnityEngine_Rendering_ReflectionProbeBlendInfo]
function UnityEngine_MeshRenderer:GetClosestReflectionProbes(result)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_MeshRenderer:GetComponent(type)
end

--- @return CS_T
function UnityEngine_MeshRenderer:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_MeshRenderer:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_MeshRenderer:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_MeshRenderer:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_MeshRenderer:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_MeshRenderer:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_MeshRenderer:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_MeshRenderer:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_MeshRenderer:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_MeshRenderer:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_MeshRenderer:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_MeshRenderer:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_MeshRenderer:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_MeshRenderer:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_MeshRenderer:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_MeshRenderer:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_MeshRenderer:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_MeshRenderer:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_MeshRenderer:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_MeshRenderer:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_MeshRenderer:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_MeshRenderer:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_MeshRenderer:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_MeshRenderer:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_MeshRenderer:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_MeshRenderer:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_MeshRenderer:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_MeshRenderer:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_MeshRenderer:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_MeshRenderer:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_MeshRenderer:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_MeshRenderer:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_MeshRenderer:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_MeshRenderer:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_MeshRenderer:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_MeshRenderer:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_MeshRenderer:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_MeshRenderer:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_MeshRenderer:Equals(other)
end

--- @return System_String
function UnityEngine_MeshRenderer:ToString()
end

--- @return System_Type
function UnityEngine_MeshRenderer:GetType()
end
