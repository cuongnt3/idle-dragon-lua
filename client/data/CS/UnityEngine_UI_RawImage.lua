--- @class UnityEngine_UI_RawImage
UnityEngine_UI_RawImage = Class(UnityEngine_UI_RawImage)

--- @return void
function UnityEngine_UI_RawImage:Ctor()
	--- @type UnityEngine_Texture
	self.mainTexture = nil
	--- @type UnityEngine_Texture
	self.texture = nil
	--- @type UnityEngine_Rect
	self.uvRect = nil
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
	self.particleSystem = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
function UnityEngine_UI_RawImage:SetNativeSize()
end

--- @return UnityEngine_Material
--- @param baseMaterial UnityEngine_Material
function UnityEngine_UI_RawImage:GetModifiedMaterial(baseMaterial)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function UnityEngine_UI_RawImage:Cull(clipRect, validRect)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function UnityEngine_UI_RawImage:SetClipRect(clipRect, validRect)
end

--- @return System_Void
function UnityEngine_UI_RawImage:ParentMaskStateChanged()
end

--- @return System_Void
function UnityEngine_UI_RawImage:RecalculateClipping()
end

--- @return System_Void
function UnityEngine_UI_RawImage:RecalculateMasking()
end

--- @return System_Void
function UnityEngine_UI_RawImage:SetAllDirty()
end

--- @return System_Void
function UnityEngine_UI_RawImage:SetLayoutDirty()
end

--- @return System_Void
function UnityEngine_UI_RawImage:SetVerticesDirty()
end

--- @return System_Void
function UnityEngine_UI_RawImage:SetMaterialDirty()
end

--- @return System_Void
function UnityEngine_UI_RawImage:OnCullingChanged()
end

--- @return System_Void
--- @param update UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_RawImage:Rebuild(update)
end

--- @return System_Void
function UnityEngine_UI_RawImage:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_RawImage:GraphicUpdateComplete()
end

--- @return System_Void
function UnityEngine_UI_RawImage:OnRebuildRequested()
end

--- @return System_Boolean
--- @param sp UnityEngine_Vector2
--- @param eventCamera UnityEngine_Camera
function UnityEngine_UI_RawImage:Raycast(sp, eventCamera)
end

--- @return UnityEngine_Vector2
--- @param point UnityEngine_Vector2
function UnityEngine_UI_RawImage:PixelAdjustPoint(point)
end

--- @return UnityEngine_Rect
function UnityEngine_UI_RawImage:GetPixelAdjustedRect()
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
function UnityEngine_UI_RawImage:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha)
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
--- @param useRGB System_Boolean
function UnityEngine_UI_RawImage:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha, useRGB)
end

--- @return System_Void
--- @param alpha System_Single
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
function UnityEngine_UI_RawImage:CrossFadeAlpha(alpha, duration, ignoreTimeScale)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_RawImage:RegisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_RawImage:UnregisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_RawImage:RegisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_RawImage:UnregisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_RawImage:RegisterDirtyMaterialCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_RawImage:UnregisterDirtyMaterialCallback(action)
end

--- @return System_Boolean
function UnityEngine_UI_RawImage:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_RawImage:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_RawImage:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_RawImage:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_RawImage:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_RawImage:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_RawImage:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_RawImage:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_RawImage:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_RawImage:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_RawImage:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_RawImage:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_RawImage:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_RawImage:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_RawImage:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_RawImage:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_RawImage:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_RawImage:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_RawImage:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_RawImage:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_RawImage:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_RawImage:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_RawImage:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_RawImage:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_RawImage:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_RawImage:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_RawImage:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_RawImage:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_RawImage:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_RawImage:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_RawImage:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_RawImage:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_RawImage:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_RawImage:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_RawImage:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_RawImage:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_RawImage:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_RawImage:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_RawImage:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_RawImage:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_RawImage:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_RawImage:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_RawImage:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_RawImage:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_RawImage:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_RawImage:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_RawImage:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_RawImage:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_RawImage:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_RawImage:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_RawImage:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_RawImage:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_RawImage:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_RawImage:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_RawImage:Equals(other)
end

--- @return System_String
function UnityEngine_UI_RawImage:ToString()
end

--- @return System_Type
function UnityEngine_UI_RawImage:GetType()
end
