--- @class UnityEngine_UI_Image
UnityEngine_UI_Image = Class(UnityEngine_UI_Image)

--- @return void
function UnityEngine_UI_Image:Ctor()
	--- @type UnityEngine_Sprite
	self.sprite = nil
	--- @type UnityEngine_Sprite
	self.overrideSprite = nil
	--- @type UnityEngine_UI_Image_Type
	self.type = nil
	--- @type System_Boolean
	self.preserveAspect = nil
	--- @type System_Boolean
	self.fillCenter = nil
	--- @type UnityEngine_UI_Image_FillMethod
	self.fillMethod = nil
	--- @type System_Single
	self.fillAmount = nil
	--- @type System_Boolean
	self.fillClockwise = nil
	--- @type System_Int32
	self.fillOrigin = nil
	--- @type System_Single
	self.eventAlphaThreshold = nil
	--- @type System_Single
	self.alphaHitTestMinimumThreshold = nil
	--- @type UnityEngine_Material
	self.defaultETC1GraphicMaterial = nil
	--- @type UnityEngine_Texture
	self.mainTexture = nil
	--- @type System_Boolean
	self.hasBorder = nil
	--- @type System_Single
	self.pixelsPerUnit = nil
	--- @type UnityEngine_Material
	self.material = nil
	--- @type System_Single
	self.minWidth = nil
	--- @type System_Single
	self.preferredWidth = nil
	--- @type System_Single
	self.flexibleWidth = nil
	--- @type System_Single
	self.minHeight = nil
	--- @type System_Single
	self.preferredHeight = nil
	--- @type System_Single
	self.flexibleHeight = nil
	--- @type System_Int32
	self.layoutPriority = nil
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
end

--- @return System_Void
function UnityEngine_UI_Image:OnBeforeSerialize()
end

--- @return System_Void
function UnityEngine_UI_Image:OnAfterDeserialize()
end

--- @return System_Void
function UnityEngine_UI_Image:SetNativeSize()
end

--- @return System_Void
function UnityEngine_UI_Image:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_Image:CalculateLayoutInputVertical()
end

--- @return System_Boolean
--- @param screenPoint UnityEngine_Vector2
--- @param eventCamera UnityEngine_Camera
function UnityEngine_UI_Image:IsRaycastLocationValid(screenPoint, eventCamera)
end

--- @return UnityEngine_Material
--- @param baseMaterial UnityEngine_Material
function UnityEngine_UI_Image:GetModifiedMaterial(baseMaterial)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function UnityEngine_UI_Image:Cull(clipRect, validRect)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function UnityEngine_UI_Image:SetClipRect(clipRect, validRect)
end

--- @return System_Void
function UnityEngine_UI_Image:ParentMaskStateChanged()
end

--- @return System_Void
function UnityEngine_UI_Image:RecalculateClipping()
end

--- @return System_Void
function UnityEngine_UI_Image:RecalculateMasking()
end

--- @return System_Void
function UnityEngine_UI_Image:SetAllDirty()
end

--- @return System_Void
function UnityEngine_UI_Image:SetLayoutDirty()
end

--- @return System_Void
function UnityEngine_UI_Image:SetVerticesDirty()
end

--- @return System_Void
function UnityEngine_UI_Image:SetMaterialDirty()
end

--- @return System_Void
function UnityEngine_UI_Image:OnCullingChanged()
end

--- @return System_Void
--- @param update UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_Image:Rebuild(update)
end

--- @return System_Void
function UnityEngine_UI_Image:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_Image:GraphicUpdateComplete()
end

--- @return System_Void
function UnityEngine_UI_Image:OnRebuildRequested()
end

--- @return System_Boolean
--- @param sp UnityEngine_Vector2
--- @param eventCamera UnityEngine_Camera
function UnityEngine_UI_Image:Raycast(sp, eventCamera)
end

--- @return UnityEngine_Vector2
--- @param point UnityEngine_Vector2
function UnityEngine_UI_Image:PixelAdjustPoint(point)
end

--- @return UnityEngine_Rect
function UnityEngine_UI_Image:GetPixelAdjustedRect()
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
function UnityEngine_UI_Image:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha)
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
--- @param useRGB System_Boolean
function UnityEngine_UI_Image:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha, useRGB)
end

--- @return System_Void
--- @param alpha System_Single
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
function UnityEngine_UI_Image:CrossFadeAlpha(alpha, duration, ignoreTimeScale)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Image:RegisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Image:UnregisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Image:RegisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Image:UnregisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Image:RegisterDirtyMaterialCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Image:UnregisterDirtyMaterialCallback(action)
end

--- @return System_Boolean
function UnityEngine_UI_Image:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_Image:IsDestroyed()
end

--- @return System_Boolean
function UnityEngine_UI_Image:IsInvoking()
end

--- @return System_Void
function UnityEngine_UI_Image:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_Image:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_Image:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Image:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_Image:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_Image:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Image:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Image:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Image:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_Image:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Image:StopCoroutine(methodName)
end

--- @return System_Void
function UnityEngine_UI_Image:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_Image:GetComponent(type)
end

--- @return CS_T
function UnityEngine_UI_Image:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_Image:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Image:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Image:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_UI_Image:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_UI_Image:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Image:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Image:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Image:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_Image:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_UI_Image:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Image:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Image:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_UI_Image:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Image:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Image:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_UI_Image:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Image:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_UI_Image:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_Image:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_Image:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Image:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_UI_Image:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_Image:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Image:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Image:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Image:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Image:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Image:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Image:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Image:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Image:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Image:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_Image:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Image:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Image:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_UI_Image:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_Image:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_Image:Equals(other)
end

--- @return System_String
function UnityEngine_UI_Image:ToString()
end

--- @return System_Type
function UnityEngine_UI_Image:GetType()
end
