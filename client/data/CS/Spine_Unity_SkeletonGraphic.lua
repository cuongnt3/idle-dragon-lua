--- @class Spine_Unity_SkeletonGraphic
Spine_Unity_SkeletonGraphic = Class(Spine_Unity_SkeletonGraphic)

--- @return void
function Spine_Unity_SkeletonGraphic:Ctor()
	--- @type Spine_Unity_SkeletonDataAsset
	self.SkeletonDataAsset = nil
	--- @type UnityEngine_Texture
	self.OverrideTexture = nil
	--- @type UnityEngine_Texture
	self.mainTexture = nil
	--- @type Spine_Skeleton
	self.Skeleton = nil
	--- @type Spine_SkeletonData
	self.SkeletonData = nil
	--- @type System_Boolean
	self.IsValid = nil
	--- @type Spine_AnimationState
	self.AnimationState = nil
	--- @type Spine_Unity_MeshGenerator
	self.MeshGenerator = nil
	--- @type UnityEngine_UI_MaskableGraphic_CullStateChangedEvent
	self.onCullStateChanged = nil
	--- @type System_Boolean
	self.maskable = nil
	--- @type UnityEngine_Color
	self.color = nil
	--- @type System_Boolean
	self.raycastTarget = nil
	--- @type System_Int32
	self.depth = nil
	--- @type UnityEngine_RectTransform
	self.rectTransform = nil
	--- @type UnityEngine_Canvas
	self.canvas = nil
	--- @type UnityEngine_CanvasRenderer
	self.canvasRenderer = nil
	--- @type UnityEngine_Material
	self.defaultMaterial = nil
	--- @type UnityEngine_Material
	self.material = nil
	--- @type UnityEngine_Material
	self.materialForRendering = nil
	--- @type System_Boolean
	self.useGUILayout = nil
	--- @type System_Boolean
	self.runInEditMode = nil
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
	--- @type Spine_Unity_SkeletonDataAsset
	self.skeletonDataAsset = nil
	--- @type System_String
	self.initialSkinName = nil
	--- @type System_Boolean
	self.initialFlipX = nil
	--- @type System_Boolean
	self.initialFlipY = nil
	--- @type System_String
	self.startingAnimation = nil
	--- @type System_Boolean
	self.startingLoop = nil
	--- @type System_Single
	self.timeScale = nil
	--- @type System_Boolean
	self.freeze = nil
	--- @type System_Boolean
	self.unscaledTime = nil
	--- @type System_Action
	self.onAssignState = nil
end

--- @return Spine_Unity_SkeletonGraphic
--- @param skeletonDataAsset Spine_Unity_SkeletonDataAsset
--- @param parent UnityEngine_Transform
function Spine_Unity_SkeletonGraphic:NewSkeletonGraphicGameObject(skeletonDataAsset, parent)
end

--- @return Spine_Unity_SkeletonGraphic
--- @param gameObject UnityEngine_GameObject
--- @param skeletonDataAsset Spine_Unity_SkeletonDataAsset
function Spine_Unity_SkeletonGraphic:AddSkeletonGraphicComponent(gameObject, skeletonDataAsset)
end

--- @return System_Void
--- @param update UnityEngine_UI_CanvasUpdate
function Spine_Unity_SkeletonGraphic:Rebuild(update)
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:Update()
end

--- @return System_Void
--- @param deltaTime System_Single
function Spine_Unity_SkeletonGraphic:Update(deltaTime)
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:LateUpdate()
end

--- @return UnityEngine_Mesh
function Spine_Unity_SkeletonGraphic:GetLastMesh()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:Clear()
end

--- @return System_Void
--- @param overwrite System_Boolean
function Spine_Unity_SkeletonGraphic:Initialize(overwrite)
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:UpdateMesh()
end

--- @return UnityEngine_Material
--- @param baseMaterial UnityEngine_Material
function Spine_Unity_SkeletonGraphic:GetModifiedMaterial(baseMaterial)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function Spine_Unity_SkeletonGraphic:Cull(clipRect, validRect)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function Spine_Unity_SkeletonGraphic:SetClipRect(clipRect, validRect)
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:ParentMaskStateChanged()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:RecalculateClipping()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:RecalculateMasking()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:SetAllDirty()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:SetLayoutDirty()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:SetVerticesDirty()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:SetMaterialDirty()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:OnCullingChanged()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:LayoutComplete()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:GraphicUpdateComplete()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:OnRebuildRequested()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:SetNativeSize()
end

--- @return System_Boolean
--- @param sp UnityEngine_Vector2
--- @param eventCamera UnityEngine_Camera
function Spine_Unity_SkeletonGraphic:Raycast(sp, eventCamera)
end

--- @return UnityEngine_Vector2
--- @param point UnityEngine_Vector2
function Spine_Unity_SkeletonGraphic:PixelAdjustPoint(point)
end

--- @return UnityEngine_Rect
function Spine_Unity_SkeletonGraphic:GetPixelAdjustedRect()
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
function Spine_Unity_SkeletonGraphic:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha)
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
--- @param useRGB System_Boolean
function Spine_Unity_SkeletonGraphic:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha, useRGB)
end

--- @return System_Void
--- @param alpha System_Single
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
function Spine_Unity_SkeletonGraphic:CrossFadeAlpha(alpha, duration, ignoreTimeScale)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function Spine_Unity_SkeletonGraphic:RegisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function Spine_Unity_SkeletonGraphic:UnregisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function Spine_Unity_SkeletonGraphic:RegisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function Spine_Unity_SkeletonGraphic:UnregisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function Spine_Unity_SkeletonGraphic:RegisterDirtyMaterialCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function Spine_Unity_SkeletonGraphic:UnregisterDirtyMaterialCallback(action)
end

--- @return System_Boolean
function Spine_Unity_SkeletonGraphic:IsActive()
end

--- @return System_Boolean
function Spine_Unity_SkeletonGraphic:IsDestroyed()
end

--- @return System_Boolean
function Spine_Unity_SkeletonGraphic:IsInvoking()
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function Spine_Unity_SkeletonGraphic:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function Spine_Unity_SkeletonGraphic:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonGraphic:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function Spine_Unity_SkeletonGraphic:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function Spine_Unity_SkeletonGraphic:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function Spine_Unity_SkeletonGraphic:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function Spine_Unity_SkeletonGraphic:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function Spine_Unity_SkeletonGraphic:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function Spine_Unity_SkeletonGraphic:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonGraphic:StopCoroutine(methodName)
end

--- @return System_Void
function Spine_Unity_SkeletonGraphic:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function Spine_Unity_SkeletonGraphic:GetComponent(type)
end

--- @return CS_T
function Spine_Unity_SkeletonGraphic:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function Spine_Unity_SkeletonGraphic:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonGraphic:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function Spine_Unity_SkeletonGraphic:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonGraphic:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function Spine_Unity_SkeletonGraphic:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonGraphic:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function Spine_Unity_SkeletonGraphic:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonGraphic:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonGraphic:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function Spine_Unity_SkeletonGraphic:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonGraphic:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function Spine_Unity_SkeletonGraphic:GetComponentInParent(t)
end

--- @return CS_T
function Spine_Unity_SkeletonGraphic:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonGraphic:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function Spine_Unity_SkeletonGraphic:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonGraphic:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonGraphic:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function Spine_Unity_SkeletonGraphic:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function Spine_Unity_SkeletonGraphic:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function Spine_Unity_SkeletonGraphic:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonGraphic:GetComponents(results)
end

--- @return CS_T[]
function Spine_Unity_SkeletonGraphic:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function Spine_Unity_SkeletonGraphic:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonGraphic:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function Spine_Unity_SkeletonGraphic:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonGraphic:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonGraphic:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function Spine_Unity_SkeletonGraphic:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonGraphic:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonGraphic:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonGraphic:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonGraphic:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function Spine_Unity_SkeletonGraphic:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonGraphic:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonGraphic:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function Spine_Unity_SkeletonGraphic:GetInstanceID()
end

--- @return System_Int32
function Spine_Unity_SkeletonGraphic:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function Spine_Unity_SkeletonGraphic:Equals(other)
end

--- @return System_String
function Spine_Unity_SkeletonGraphic:ToString()
end

--- @return System_Type
function Spine_Unity_SkeletonGraphic:GetType()
end
