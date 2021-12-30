--- @class UnityEngine_LineRenderer
UnityEngine_LineRenderer = Class(UnityEngine_LineRenderer)

--- @return void
function UnityEngine_LineRenderer:Ctor()
	--- @type System_Int32
	self.numPositions = nil
	--- @type System_Single
	self.startWidth = nil
	--- @type System_Single
	self.endWidth = nil
	--- @type System_Single
	self.widthMultiplier = nil
	--- @type System_Int32
	self.numCornerVertices = nil
	--- @type System_Int32
	self.numCapVertices = nil
	--- @type System_Boolean
	self.useWorldSpace = nil
	--- @type System_Boolean
	self.loop = nil
	--- @type UnityEngine_Color
	self.startColor = nil
	--- @type UnityEngine_Color
	self.endColor = nil
	--- @type System_Int32
	self.positionCount = nil
	--- @type System_Single
	self.shadowBias = nil
	--- @type System_Boolean
	self.generateLightingData = nil
	--- @type UnityEngine_LineTextureMode
	self.textureMode = nil
	--- @type UnityEngine_LineAlignment
	self.alignment = nil
	--- @type UnityEngine_AnimationCurve
	self.widthCurve = nil
	--- @type UnityEngine_Gradient
	self.colorGradient = nil
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

--- @return System_Void
--- @param start System_Single
--- @param end System_Single
function UnityEngine_LineRenderer:SetWidth(start, end)
end

--- @return System_Void
--- @param start UnityEngine_Color
--- @param end UnityEngine_Color
function UnityEngine_LineRenderer:SetColors(start, end)
end

--- @return System_Void
--- @param count System_Int32
function UnityEngine_LineRenderer:SetVertexCount(count)
end

--- @return System_Void
--- @param index System_Int32
--- @param position UnityEngine_Vector3
function UnityEngine_LineRenderer:SetPosition(index, position)
end

--- @return UnityEngine_Vector3
--- @param index System_Int32
function UnityEngine_LineRenderer:GetPosition(index)
end

--- @return System_Void
--- @param tolerance System_Single
function UnityEngine_LineRenderer:Simplify(tolerance)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
--- @param useTransform System_Boolean
function UnityEngine_LineRenderer:BakeMesh(mesh, useTransform)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
--- @param camera UnityEngine_Camera
--- @param useTransform System_Boolean
function UnityEngine_LineRenderer:BakeMesh(mesh, camera, useTransform)
end

--- @return System_Int32
--- @param positions UnityEngine_Vector3[]
function UnityEngine_LineRenderer:GetPositions(positions)
end

--- @return System_Void
--- @param positions UnityEngine_Vector3[]
function UnityEngine_LineRenderer:SetPositions(positions)
end

--- @return System_Boolean
function UnityEngine_LineRenderer:HasPropertyBlock()
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
function UnityEngine_LineRenderer:SetPropertyBlock(properties)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
--- @param materialIndex System_Int32
function UnityEngine_LineRenderer:SetPropertyBlock(properties, materialIndex)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
function UnityEngine_LineRenderer:GetPropertyBlock(properties)
end

--- @return System_Void
--- @param properties UnityEngine_MaterialPropertyBlock
--- @param materialIndex System_Int32
function UnityEngine_LineRenderer:GetPropertyBlock(properties, materialIndex)
end

--- @return System_Void
--- @param m System_Collections_Generic_List`1[UnityEngine_Material]
function UnityEngine_LineRenderer:GetMaterials(m)
end

--- @return System_Void
--- @param m System_Collections_Generic_List`1[UnityEngine_Material]
function UnityEngine_LineRenderer:GetSharedMaterials(m)
end

--- @return System_Void
--- @param result System_Collections_Generic_List`1[UnityEngine_Rendering_ReflectionProbeBlendInfo]
function UnityEngine_LineRenderer:GetClosestReflectionProbes(result)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_LineRenderer:GetComponent(type)
end

--- @return CS_T
function UnityEngine_LineRenderer:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_LineRenderer:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_LineRenderer:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_LineRenderer:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_LineRenderer:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_LineRenderer:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_LineRenderer:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_LineRenderer:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_LineRenderer:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_LineRenderer:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_LineRenderer:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_LineRenderer:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_LineRenderer:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_LineRenderer:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_LineRenderer:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_LineRenderer:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_LineRenderer:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_LineRenderer:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_LineRenderer:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_LineRenderer:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_LineRenderer:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_LineRenderer:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_LineRenderer:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_LineRenderer:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_LineRenderer:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_LineRenderer:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_LineRenderer:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_LineRenderer:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_LineRenderer:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_LineRenderer:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_LineRenderer:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_LineRenderer:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_LineRenderer:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_LineRenderer:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_LineRenderer:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_LineRenderer:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_LineRenderer:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_LineRenderer:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_LineRenderer:Equals(other)
end

--- @return System_String
function UnityEngine_LineRenderer:ToString()
end

--- @return System_Type
function UnityEngine_LineRenderer:GetType()
end
