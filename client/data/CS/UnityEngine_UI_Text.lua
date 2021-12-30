--- @class UnityEngine_UI_Text
UnityEngine_UI_Text = Class(UnityEngine_UI_Text)

--- @return void
function UnityEngine_UI_Text:Ctor()
	--- @type UnityEngine_TextGenerator
	self.cachedTextGenerator = nil
	--- @type UnityEngine_TextGenerator
	self.cachedTextGeneratorForLayout = nil
	--- @type UnityEngine_Texture
	self.mainTexture = nil
	--- @type UnityEngine_Font
	self.font = nil
	--- @type System_String
	self.text = nil
	--- @type System_Boolean
	self.supportRichText = nil
	--- @type System_Boolean
	self.resizeTextForBestFit = nil
	--- @type System_Int32
	self.resizeTextMinSize = nil
	--- @type System_Int32
	self.resizeTextMaxSize = nil
	--- @type UnityEngine_TextAnchor
	self.alignment = nil
	--- @type System_Boolean
	self.alignByGeometry = nil
	--- @type System_Int32
	self.fontSize = nil
	--- @type UnityEngine_HorizontalWrapMode
	self.horizontalOverflow = nil
	--- @type UnityEngine_VerticalWrapMode
	self.verticalOverflow = nil
	--- @type System_Single
	self.lineSpacing = nil
	--- @type UnityEngine_FontStyle
	self.fontStyle = nil
	--- @type System_Single
	self.pixelsPerUnit = nil
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
	--- @type UnityEngine_UI_MaskableGraphic+CullStateChangedEvent
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
end

--- @return System_Void
function UnityEngine_UI_Text:FontTextureChanged()
end

--- @return UnityEngine_TextGenerationSettings
--- @param extents UnityEngine_Vector2
function UnityEngine_UI_Text:GetGenerationSettings(extents)
end

--- @return UnityEngine_Vector2
--- @param anchor UnityEngine_TextAnchor
function UnityEngine_UI_Text:GetTextAnchorPivot(anchor)
end

--- @return System_Void
function UnityEngine_UI_Text:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function UnityEngine_UI_Text:CalculateLayoutInputVertical()
end

--- @return System_Void
function UnityEngine_UI_Text:OnRebuildRequested()
end

--- @return UnityEngine_Material
--- @param baseMaterial UnityEngine_Material
function UnityEngine_UI_Text:GetModifiedMaterial(baseMaterial)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function UnityEngine_UI_Text:Cull(clipRect, validRect)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function UnityEngine_UI_Text:SetClipRect(clipRect, validRect)
end

--- @return System_Void
function UnityEngine_UI_Text:ParentMaskStateChanged()
end

--- @return System_Void
function UnityEngine_UI_Text:RecalculateClipping()
end

--- @return System_Void
function UnityEngine_UI_Text:RecalculateMasking()
end

--- @return System_Void
function UnityEngine_UI_Text:SetAllDirty()
end

--- @return System_Void
function UnityEngine_UI_Text:SetLayoutDirty()
end

--- @return System_Void
function UnityEngine_UI_Text:SetVerticesDirty()
end

--- @return System_Void
function UnityEngine_UI_Text:SetMaterialDirty()
end

--- @return System_Void
function UnityEngine_UI_Text:OnCullingChanged()
end

--- @return System_Void
--- @param update UnityEngine_UI_CanvasUpdate
function UnityEngine_UI_Text:Rebuild(update)
end

--- @return System_Void
function UnityEngine_UI_Text:LayoutComplete()
end

--- @return System_Void
function UnityEngine_UI_Text:GraphicUpdateComplete()
end

--- @return System_Void
function UnityEngine_UI_Text:SetNativeSize()
end

--- @return System_Boolean
--- @param sp UnityEngine_Vector2
--- @param eventCamera UnityEngine_Camera
function UnityEngine_UI_Text:Raycast(sp, eventCamera)
end

--- @return UnityEngine_Vector2
--- @param point UnityEngine_Vector2
function UnityEngine_UI_Text:PixelAdjustPoint(point)
end

--- @return UnityEngine_Rect
function UnityEngine_UI_Text:GetPixelAdjustedRect()
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
function UnityEngine_UI_Text:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha)
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
--- @param useRGB System_Boolean
function UnityEngine_UI_Text:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha, useRGB)
end

--- @return System_Void
--- @param alpha System_Single
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
function UnityEngine_UI_Text:CrossFadeAlpha(alpha, duration, ignoreTimeScale)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Text:RegisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Text:UnregisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Text:RegisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Text:UnregisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Text:RegisterDirtyMaterialCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function UnityEngine_UI_Text:UnregisterDirtyMaterialCallback(action)
end

--- @return System_Boolean
function UnityEngine_UI_Text:IsActive()
end

--- @return System_Boolean
function UnityEngine_UI_Text:IsDestroyed()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function UnityEngine_UI_Text:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function UnityEngine_UI_Text:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
function UnityEngine_UI_Text:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Text:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function UnityEngine_UI_Text:IsInvoking(methodName)
end

--- @return System_Boolean
function UnityEngine_UI_Text:IsInvoking()
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Text:StartCoroutine(routine)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Text:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function UnityEngine_UI_Text:StartCoroutine(methodName)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Text:StopCoroutine(methodName)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function UnityEngine_UI_Text:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function UnityEngine_UI_Text:StopCoroutine(routine)
end

--- @return System_Void
function UnityEngine_UI_Text:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_UI_Text:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_UI_Text:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Text:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Text:GetComponentInChildren(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Text:GetComponentsInChildren(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Text:GetComponentsInChildren(t, includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_UI_Text:GetComponentsInChildren(includeInactive, result)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Text:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_UI_Text:GetComponentInParent(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_UI_Text:GetComponentsInParent(t)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_UI_Text:GetComponentsInParent(t, includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Text:GetComponentsInParent(includeInactive, results)
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_UI_Text:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_UI_Text:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_UI_Text:GetComponents(results)
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_UI_Text:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Text:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Text:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Text:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Text:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Text:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_UI_Text:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Text:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Text:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Text:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_UI_Text:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_UI_Text:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_UI_Text:BroadcastMessage(methodName, options)
end

--- @return System_String
function UnityEngine_UI_Text:ToString()
end

--- @return System_Int32
function UnityEngine_UI_Text:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_UI_Text:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_UI_Text:Equals(other)
end

--- @return System_Type
function UnityEngine_UI_Text:GetType()
end
