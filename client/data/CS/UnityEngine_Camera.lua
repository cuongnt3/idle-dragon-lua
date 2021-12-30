--- @class UnityEngine_Camera
UnityEngine_Camera = Class(UnityEngine_Camera)

--- @return void
function UnityEngine_Camera:Ctor()
	--- @type System_Single
	self.nearClipPlane = nil
	--- @type System_Single
	self.farClipPlane = nil
	--- @type System_Single
	self.fieldOfView = nil
	--- @type UnityEngine_RenderingPath
	self.renderingPath = nil
	--- @type UnityEngine_RenderingPath
	self.actualRenderingPath = nil
	--- @type System_Boolean
	self.allowHDR = nil
	--- @type System_Boolean
	self.allowMSAA = nil
	--- @type System_Boolean
	self.allowDynamicResolution = nil
	--- @type System_Boolean
	self.forceIntoRenderTexture = nil
	--- @type System_Single
	self.orthographicSize = nil
	--- @type System_Boolean
	self.orthographic = nil
	--- @type UnityEngine_Rendering_OpaqueSortMode
	self.opaqueSortMode = nil
	--- @type UnityEngine_TransparencySortMode
	self.transparencySortMode = nil
	--- @type UnityEngine_Vector3
	self.transparencySortAxis = nil
	--- @type System_Single
	self.depth = nil
	--- @type System_Single
	self.aspect = nil
	--- @type UnityEngine_Vector3
	self.velocity = nil
	--- @type System_Int32
	self.cullingMask = nil
	--- @type System_Int32
	self.eventMask = nil
	--- @type System_Boolean
	self.layerCullSpherical = nil
	--- @type UnityEngine_CameraType
	self.cameraType = nil
	--- @type System_Single[]
	self.layerCullDistances = nil
	--- @type System_Boolean
	self.useOcclusionCulling = nil
	--- @type UnityEngine_Matrix4x4
	self.cullingMatrix = nil
	--- @type UnityEngine_Color
	self.backgroundColor = nil
	--- @type UnityEngine_CameraClearFlags
	self.clearFlags = nil
	--- @type UnityEngine_DepthTextureMode
	self.depthTextureMode = nil
	--- @type System_Boolean
	self.clearStencilAfterLightingPass = nil
	--- @type System_Boolean
	self.usePhysicalProperties = nil
	--- @type UnityEngine_Vector2
	self.sensorSize = nil
	--- @type UnityEngine_Vector2
	self.lensShift = nil
	--- @type System_Single
	self.focalLength = nil
	--- @type UnityEngine_Rect
	self.rect = nil
	--- @type UnityEngine_Rect
	self.pixelRect = nil
	--- @type System_Int32
	self.pixelWidth = nil
	--- @type System_Int32
	self.pixelHeight = nil
	--- @type System_Int32
	self.scaledPixelWidth = nil
	--- @type System_Int32
	self.scaledPixelHeight = nil
	--- @type UnityEngine_RenderTexture
	self.targetTexture = nil
	--- @type UnityEngine_RenderTexture
	self.activeTexture = nil
	--- @type System_Int32
	self.targetDisplay = nil
	--- @type UnityEngine_Matrix4x4
	self.cameraToWorldMatrix = nil
	--- @type UnityEngine_Matrix4x4
	self.worldToCameraMatrix = nil
	--- @type UnityEngine_Matrix4x4
	self.projectionMatrix = nil
	--- @type UnityEngine_Matrix4x4
	self.nonJitteredProjectionMatrix = nil
	--- @type System_Boolean
	self.useJitteredProjectionMatrixForTransparentRendering = nil
	--- @type UnityEngine_Matrix4x4
	self.previousViewProjectionMatrix = nil
	--- @type UnityEngine_Camera
	self.main = nil
	--- @type UnityEngine_Camera
	self.current = nil
	--- @type UnityEngine_SceneManagement_Scene
	self.scene = nil
	--- @type System_Boolean
	self.stereoEnabled = nil
	--- @type System_Single
	self.stereoSeparation = nil
	--- @type System_Single
	self.stereoConvergence = nil
	--- @type System_Boolean
	self.areVRStereoViewMatricesWithinSingleCullTolerance = nil
	--- @type UnityEngine_StereoTargetEyeMask
	self.stereoTargetEye = nil
	--- @type UnityEngine_Camera_MonoOrStereoscopicEye
	self.stereoActiveEye = nil
	--- @type System_Int32
	self.allCamerasCount = nil
	--- @type UnityEngine_Camera[]
	self.allCameras = nil
	--- @type System_Int32
	self.commandBufferCount = nil
	--- @type System_Boolean
	self.isOrthoGraphic = nil
	--- @type UnityEngine_Camera
	self.mainCamera = nil
	--- @type System_Single
	self.near = nil
	--- @type System_Single
	self.far = nil
	--- @type System_Single
	self.fov = nil
	--- @type System_Boolean
	self.hdr = nil
	--- @type System_Boolean
	self.stereoMirrorMode = nil
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
	--- @type UnityEngine_Camera_CameraCallback
	self.onPreCull = nil
	--- @type UnityEngine_Camera_CameraCallback
	self.onPreRender = nil
	--- @type UnityEngine_Camera_CameraCallback
	self.onPostRender = nil
end

--- @return UnityEngine_Rendering_CommandBuffer[]
--- @param evt UnityEngine_Rendering_CameraEvent
function UnityEngine_Camera:GetCommandBuffers(evt)
end

--- @return System_Void
function UnityEngine_Camera:Reset()
end

--- @return System_Void
function UnityEngine_Camera:ResetTransparencySortSettings()
end

--- @return System_Void
function UnityEngine_Camera:ResetAspect()
end

--- @return System_Void
function UnityEngine_Camera:ResetCullingMatrix()
end

--- @return System_Void
--- @param shader UnityEngine_Shader
--- @param replacementTag System_String
function UnityEngine_Camera:SetReplacementShader(shader, replacementTag)
end

--- @return System_Void
function UnityEngine_Camera:ResetReplacementShader()
end

--- @return System_Void
--- @param colorBuffer UnityEngine_RenderBuffer
--- @param depthBuffer UnityEngine_RenderBuffer
function UnityEngine_Camera:SetTargetBuffers(colorBuffer, depthBuffer)
end

--- @return System_Void
--- @param colorBuffer UnityEngine_RenderBuffer[]
--- @param depthBuffer UnityEngine_RenderBuffer
function UnityEngine_Camera:SetTargetBuffers(colorBuffer, depthBuffer)
end

--- @return System_Void
function UnityEngine_Camera:ResetWorldToCameraMatrix()
end

--- @return System_Void
function UnityEngine_Camera:ResetProjectionMatrix()
end

--- @return UnityEngine_Matrix4x4
--- @param clipPlane UnityEngine_Vector4
function UnityEngine_Camera:CalculateObliqueMatrix(clipPlane)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_Camera:WorldToScreenPoint(position, eye)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_Camera:WorldToViewportPoint(position, eye)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_Camera:ViewportToWorldPoint(position, eye)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_Camera:ScreenToWorldPoint(position, eye)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Camera:WorldToScreenPoint(position)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Camera:WorldToViewportPoint(position)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Camera:ViewportToWorldPoint(position)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Camera:ScreenToWorldPoint(position)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Camera:ScreenToViewportPoint(position)
end

--- @return UnityEngine_Vector3
--- @param position UnityEngine_Vector3
function UnityEngine_Camera:ViewportToScreenPoint(position)
end

--- @return UnityEngine_Ray
--- @param pos UnityEngine_Vector3
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_Camera:ViewportPointToRay(pos, eye)
end

--- @return UnityEngine_Ray
--- @param pos UnityEngine_Vector3
function UnityEngine_Camera:ViewportPointToRay(pos)
end

--- @return UnityEngine_Ray
--- @param pos UnityEngine_Vector3
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_Camera:ScreenPointToRay(pos, eye)
end

--- @return UnityEngine_Ray
--- @param pos UnityEngine_Vector3
function UnityEngine_Camera:ScreenPointToRay(pos)
end

--- @return System_Void
--- @param viewport UnityEngine_Rect
--- @param z System_Single
--- @param eye UnityEngine_Camera_MonoOrStereoscopicEye
--- @param outCorners UnityEngine_Vector3[]
function UnityEngine_Camera:CalculateFrustumCorners(viewport, z, eye, outCorners)
end

--- @return System_Single
--- @param focalLength System_Single
--- @param sensorSize System_Single
function UnityEngine_Camera:FocalLengthToFOV(focalLength, sensorSize)
end

--- @return System_Single
--- @param fov System_Single
--- @param sensorSize System_Single
function UnityEngine_Camera:FOVToFocalLength(fov, sensorSize)
end

--- @return UnityEngine_Matrix4x4
--- @param eye UnityEngine_Camera_StereoscopicEye
function UnityEngine_Camera:GetStereoNonJitteredProjectionMatrix(eye)
end

--- @return UnityEngine_Matrix4x4
--- @param eye UnityEngine_Camera_StereoscopicEye
function UnityEngine_Camera:GetStereoViewMatrix(eye)
end

--- @return System_Void
--- @param eye UnityEngine_Camera_StereoscopicEye
function UnityEngine_Camera:CopyStereoDeviceProjectionMatrixToNonJittered(eye)
end

--- @return UnityEngine_Matrix4x4
--- @param eye UnityEngine_Camera_StereoscopicEye
function UnityEngine_Camera:GetStereoProjectionMatrix(eye)
end

--- @return System_Void
--- @param eye UnityEngine_Camera_StereoscopicEye
--- @param matrix UnityEngine_Matrix4x4
function UnityEngine_Camera:SetStereoProjectionMatrix(eye, matrix)
end

--- @return System_Void
function UnityEngine_Camera:ResetStereoProjectionMatrices()
end

--- @return System_Void
--- @param eye UnityEngine_Camera_StereoscopicEye
--- @param matrix UnityEngine_Matrix4x4
function UnityEngine_Camera:SetStereoViewMatrix(eye, matrix)
end

--- @return System_Void
function UnityEngine_Camera:ResetStereoViewMatrices()
end

--- @return System_Int32
--- @param cameras UnityEngine_Camera[]
function UnityEngine_Camera:GetAllCameras(cameras)
end

--- @return System_Boolean
--- @param cubemap UnityEngine_Cubemap
--- @param faceMask System_Int32
function UnityEngine_Camera:RenderToCubemap(cubemap, faceMask)
end

--- @return System_Boolean
--- @param cubemap UnityEngine_Cubemap
function UnityEngine_Camera:RenderToCubemap(cubemap)
end

--- @return System_Boolean
--- @param cubemap UnityEngine_RenderTexture
--- @param faceMask System_Int32
function UnityEngine_Camera:RenderToCubemap(cubemap, faceMask)
end

--- @return System_Boolean
--- @param cubemap UnityEngine_RenderTexture
function UnityEngine_Camera:RenderToCubemap(cubemap)
end

--- @return System_Boolean
--- @param cubemap UnityEngine_RenderTexture
--- @param faceMask System_Int32
--- @param stereoEye UnityEngine_Camera_MonoOrStereoscopicEye
function UnityEngine_Camera:RenderToCubemap(cubemap, faceMask, stereoEye)
end

--- @return System_Void
function UnityEngine_Camera:Render()
end

--- @return System_Void
--- @param shader UnityEngine_Shader
--- @param replacementTag System_String
function UnityEngine_Camera:RenderWithShader(shader, replacementTag)
end

--- @return System_Void
function UnityEngine_Camera:RenderDontRestore()
end

--- @return System_Void
--- @param cur UnityEngine_Camera
function UnityEngine_Camera:SetupCurrent(cur)
end

--- @return System_Void
--- @param other UnityEngine_Camera
function UnityEngine_Camera:CopyFrom(other)
end

--- @return System_Void
--- @param evt UnityEngine_Rendering_CameraEvent
function UnityEngine_Camera:RemoveCommandBuffers(evt)
end

--- @return System_Void
function UnityEngine_Camera:RemoveAllCommandBuffers()
end

--- @return System_Void
--- @param evt UnityEngine_Rendering_CameraEvent
--- @param buffer UnityEngine_Rendering_CommandBuffer
function UnityEngine_Camera:AddCommandBuffer(evt, buffer)
end

--- @return System_Void
--- @param evt UnityEngine_Rendering_CameraEvent
--- @param buffer UnityEngine_Rendering_CommandBuffer
--- @param queueType UnityEngine_Rendering_ComputeQueueType
function UnityEngine_Camera:AddCommandBufferAsync(evt, buffer, queueType)
end

--- @return System_Void
--- @param evt UnityEngine_Rendering_CameraEvent
--- @param buffer UnityEngine_Rendering_CommandBuffer
function UnityEngine_Camera:RemoveCommandBuffer(evt, buffer)
end

--- @return System_Single
function UnityEngine_Camera:GetScreenWidth()
end

--- @return System_Single
function UnityEngine_Camera:GetScreenHeight()
end

--- @return System_Void
function UnityEngine_Camera:DoClear()
end

--- @return System_Void
function UnityEngine_Camera:ResetFieldOfView()
end

--- @return System_Void
--- @param leftMatrix UnityEngine_Matrix4x4
--- @param rightMatrix UnityEngine_Matrix4x4
function UnityEngine_Camera:SetStereoViewMatrices(leftMatrix, rightMatrix)
end

--- @return System_Void
--- @param leftMatrix UnityEngine_Matrix4x4
--- @param rightMatrix UnityEngine_Matrix4x4
function UnityEngine_Camera:SetStereoProjectionMatrices(leftMatrix, rightMatrix)
end

--- @return UnityEngine_Matrix4x4[]
function UnityEngine_Camera:GetStereoViewMatrices()
end

--- @return UnityEngine_Matrix4x4[]
function UnityEngine_Camera:GetStereoProjectionMatrices()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_Camera:GetComponent(type)
end

--- @return CS_T
function UnityEngine_Camera:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_Camera:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Camera:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Camera:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_Camera:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_Camera:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Camera:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Camera:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Camera:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_Camera:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_Camera:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Camera:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Camera:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_Camera:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Camera:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Camera:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Camera:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Camera:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_Camera:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_Camera:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_Camera:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Camera:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_Camera:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_Camera:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Camera:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Camera:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Camera:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Camera:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Camera:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Camera:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Camera:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Camera:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Camera:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_Camera:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Camera:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Camera:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_Camera:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Camera:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Camera:Equals(other)
end

--- @return System_String
function UnityEngine_Camera:ToString()
end

--- @return System_Type
function UnityEngine_Camera:GetType()
end
