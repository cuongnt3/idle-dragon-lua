--- @class TMPro_TextMeshPro
TMPro_TextMeshPro = Class(TMPro_TextMeshPro)

--- @return void
function TMPro_TextMeshPro:Ctor()
	--- @type System_Int32
	self.sortingLayerID = nil
	--- @type System_Int32
	self.sortingOrder = nil
	--- @type System_Boolean
	self.autoSizeTextContainer = nil
	--- @type TMPro_TextContainer
	self.textContainer = nil
	--- @type UnityEngine_Transform
	self.transform = nil
	--- @type UnityEngine_Renderer
	self.renderer = nil
	--- @type UnityEngine_Mesh
	self.mesh = nil
	--- @type UnityEngine_MeshFilter
	self.meshFilter = nil
	--- @type TMPro_MaskingTypes
	self.maskType = nil
	--- @type System_String
	self.text = nil
	--- @type System_Boolean
	self.isRightToLeftText = nil
	--- @type TMPro_TMP_FontAsset
	self.font = nil
	--- @type UnityEngine_Material
	self.fontSharedMaterial = nil
	--- @type UnityEngine_Material[]
	self.fontSharedMaterials = nil
	--- @type UnityEngine_Material
	self.fontMaterial = nil
	--- @type UnityEngine_Material[]
	self.fontMaterials = nil
	--- @type UnityEngine_Color
	self.color = nil
	--- @type System_Single
	self.alpha = nil
	--- @type System_Boolean
	self.enableVertexGradient = nil
	--- @type TMPro_VertexGradient
	self.colorGradient = nil
	--- @type TMPro_TMP_ColorGradient
	self.colorGradientPreset = nil
	--- @type TMPro_TMP_SpriteAsset
	self.spriteAsset = nil
	--- @type System_Boolean
	self.tintAllSprites = nil
	--- @type System_Boolean
	self.overrideColorTags = nil
	--- @type UnityEngine_Color32
	self.faceColor = nil
	--- @type UnityEngine_Color32
	self.outlineColor = nil
	--- @type System_Single
	self.outlineWidth = nil
	--- @type System_Single
	self.fontSize = nil
	--- @type System_Single
	self.fontScale = nil
	--- @type System_Int32
	self.fontWeight = nil
	--- @type System_Single
	self.pixelsPerUnit = nil
	--- @type System_Boolean
	self.enableAutoSizing = nil
	--- @type System_Single
	self.fontSizeMin = nil
	--- @type System_Single
	self.fontSizeMax = nil
	--- @type TMPro_FontStyles
	self.fontStyle = nil
	--- @type System_Boolean
	self.isUsingBold = nil
	--- @type TMPro_TextAlignmentOptions
	self.alignment = nil
	--- @type System_Single
	self.characterSpacing = nil
	--- @type System_Single
	self.wordSpacing = nil
	--- @type System_Single
	self.lineSpacing = nil
	--- @type System_Single
	self.lineSpacingAdjustment = nil
	--- @type System_Single
	self.paragraphSpacing = nil
	--- @type System_Single
	self.characterWidthAdjustment = nil
	--- @type System_Boolean
	self.enableWordWrapping = nil
	--- @type System_Single
	self.wordWrappingRatios = nil
	--- @type TMPro_TextOverflowModes
	self.overflowMode = nil
	--- @type System_Boolean
	self.isTextOverflowing = nil
	--- @type System_Int32
	self.firstOverflowCharacterIndex = nil
	--- @type TMPro_TMP_Text
	self.linkedTextComponent = nil
	--- @type System_Boolean
	self.isLinkedTextComponent = nil
	--- @type System_Boolean
	self.isTextTruncated = nil
	--- @type System_Boolean
	self.enableKerning = nil
	--- @type System_Boolean
	self.extraPadding = nil
	--- @type System_Boolean
	self.richText = nil
	--- @type System_Boolean
	self.parseCtrlCharacters = nil
	--- @type System_Boolean
	self.isOverlay = nil
	--- @type System_Boolean
	self.isOrthographic = nil
	--- @type System_Boolean
	self.enableCulling = nil
	--- @type System_Boolean
	self.ignoreRectMaskCulling = nil
	--- @type System_Boolean
	self.ignoreVisibility = nil
	--- @type TMPro_TextureMappingOptions
	self.horizontalMapping = nil
	--- @type TMPro_TextureMappingOptions
	self.verticalMapping = nil
	--- @type System_Single
	self.mappingUvLineOffset = nil
	--- @type TMPro_TextRenderFlags
	self.renderMode = nil
	--- @type TMPro_VertexSortingOrder
	self.geometrySortingOrder = nil
	--- @type System_Int32
	self.firstVisibleCharacter = nil
	--- @type System_Int32
	self.maxVisibleCharacters = nil
	--- @type System_Int32
	self.maxVisibleWords = nil
	--- @type System_Int32
	self.maxVisibleLines = nil
	--- @type System_Boolean
	self.useMaxVisibleDescender = nil
	--- @type System_Int32
	self.pageToDisplay = nil
	--- @type UnityEngine_Vector4
	self.margin = nil
	--- @type TMPro_TMP_TextInfo
	self.textInfo = nil
	--- @type System_Boolean
	self.havePropertiesChanged = nil
	--- @type System_Boolean
	self.isUsingLegacyAnimationComponent = nil
	--- @type UnityEngine_RectTransform
	self.rectTransform = nil
	--- @type System_Boolean
	self.isVolumetricText = nil
	--- @type UnityEngine_Bounds
	self.bounds = nil
	--- @type UnityEngine_Bounds
	self.textBounds = nil
	--- @type System_Single
	self.flexibleHeight = nil
	--- @type System_Single
	self.flexibleWidth = nil
	--- @type System_Single
	self.minWidth = nil
	--- @type System_Single
	self.minHeight = nil
	--- @type System_Single
	self.maxWidth = nil
	--- @type System_Single
	self.maxHeight = nil
	--- @type System_Single
	self.preferredWidth = nil
	--- @type System_Single
	self.preferredHeight = nil
	--- @type System_Single
	self.renderedWidth = nil
	--- @type System_Single
	self.renderedHeight = nil
	--- @type System_Int32
	self.layoutPriority = nil
	--- @type UnityEngine_UI_MaskableGraphic_CullStateChangedEvent
	self.onCullStateChanged = nil
	--- @type System_Boolean
	self.maskable = nil
	--- @type System_Boolean
	self.raycastTarget = nil
	--- @type System_Int32
	self.depth = nil
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
	--- @type UnityEngine_Texture
	self.mainTexture = nil
	--- @type System_Boolean
	self.useGUILayout = nil
	--- @type System_Boolean
	self.runInEditMode = nil
	--- @type System_Boolean
	self.enabled = nil
	--- @type System_Boolean
	self.isActiveAndEnabled = nil
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
--- @param type TMPro_MaskingTypes
--- @param maskCoords UnityEngine_Vector4
function TMPro_TextMeshPro:SetMask(type, maskCoords)
end

--- @return System_Void
--- @param type TMPro_MaskingTypes
--- @param maskCoords UnityEngine_Vector4
--- @param softnessX System_Single
--- @param softnessY System_Single
function TMPro_TextMeshPro:SetMask(type, maskCoords, softnessX, softnessY)
end

--- @return System_Void
function TMPro_TextMeshPro:SetVerticesDirty()
end

--- @return System_Void
function TMPro_TextMeshPro:SetLayoutDirty()
end

--- @return System_Void
function TMPro_TextMeshPro:SetMaterialDirty()
end

--- @return System_Void
function TMPro_TextMeshPro:SetAllDirty()
end

--- @return System_Void
--- @param update UnityEngine_UI_CanvasUpdate
function TMPro_TextMeshPro:Rebuild(update)
end

--- @return System_Void
function TMPro_TextMeshPro:UpdateMeshPadding()
end

--- @return System_Void
function TMPro_TextMeshPro:ForceMeshUpdate()
end

--- @return System_Void
--- @param ignoreInactive System_Boolean
function TMPro_TextMeshPro:ForceMeshUpdate(ignoreInactive)
end

--- @return TMPro_TMP_TextInfo
--- @param text System_String
function TMPro_TextMeshPro:GetTextInfo(text)
end

--- @return System_Void
--- @param updateMesh System_Boolean
function TMPro_TextMeshPro:ClearMesh(updateMesh)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
--- @param index System_Int32
function TMPro_TextMeshPro:UpdateGeometry(mesh, index)
end

--- @return System_Void
--- @param flags TMPro_TMP_VertexDataUpdateFlags
function TMPro_TextMeshPro:UpdateVertexData(flags)
end

--- @return System_Void
function TMPro_TextMeshPro:UpdateVertexData()
end

--- @return System_Void
function TMPro_TextMeshPro:UpdateFontAsset()
end

--- @return System_Void
function TMPro_TextMeshPro:CalculateLayoutInputHorizontal()
end

--- @return System_Void
function TMPro_TextMeshPro:CalculateLayoutInputVertical()
end

--- @return System_Void
--- @param vertices UnityEngine_Vector3[]
function TMPro_TextMeshPro:SetVertices(vertices)
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
function TMPro_TextMeshPro:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha)
end

--- @return System_Void
--- @param alpha System_Single
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
function TMPro_TextMeshPro:CrossFadeAlpha(alpha, duration, ignoreTimeScale)
end

--- @return System_Void
--- @param text System_String
function TMPro_TextMeshPro:SetText(text)
end

--- @return System_Void
--- @param text System_String
--- @param syncTextInputBox System_Boolean
function TMPro_TextMeshPro:SetText(text, syncTextInputBox)
end

--- @return System_Void
--- @param text System_String
--- @param arg0 System_Single
function TMPro_TextMeshPro:SetText(text, arg0)
end

--- @return System_Void
--- @param text System_String
--- @param arg0 System_Single
--- @param arg1 System_Single
function TMPro_TextMeshPro:SetText(text, arg0, arg1)
end

--- @return System_Void
--- @param text System_String
--- @param arg0 System_Single
--- @param arg1 System_Single
--- @param arg2 System_Single
function TMPro_TextMeshPro:SetText(text, arg0, arg1, arg2)
end

--- @return System_Void
--- @param text System_Text_StringBuilder
function TMPro_TextMeshPro:SetText(text)
end

--- @return System_Void
--- @param sourceText System_Char[]
function TMPro_TextMeshPro:SetCharArray(sourceText)
end

--- @return System_Void
--- @param sourceText System_Char[]
--- @param start System_Int32
--- @param length System_Int32
function TMPro_TextMeshPro:SetCharArray(sourceText, start, length)
end

--- @return System_Void
--- @param sourceText System_Int32[]
--- @param start System_Int32
--- @param length System_Int32
function TMPro_TextMeshPro:SetCharArray(sourceText, start, length)
end

--- @return UnityEngine_Vector2
function TMPro_TextMeshPro:GetPreferredValues()
end

--- @return UnityEngine_Vector2
--- @param width System_Single
--- @param height System_Single
function TMPro_TextMeshPro:GetPreferredValues(width, height)
end

--- @return UnityEngine_Vector2
--- @param text System_String
function TMPro_TextMeshPro:GetPreferredValues(text)
end

--- @return UnityEngine_Vector2
--- @param text System_String
--- @param width System_Single
--- @param height System_Single
function TMPro_TextMeshPro:GetPreferredValues(text, width, height)
end

--- @return UnityEngine_Vector2
function TMPro_TextMeshPro:GetRenderedValues()
end

--- @return UnityEngine_Vector2
--- @param onlyVisibleCharacters System_Boolean
function TMPro_TextMeshPro:GetRenderedValues(onlyVisibleCharacters)
end

--- @return System_Void
function TMPro_TextMeshPro:ClearMesh()
end

--- @return System_String
function TMPro_TextMeshPro:GetParsedText()
end

--- @return UnityEngine_Material
--- @param baseMaterial UnityEngine_Material
function TMPro_TextMeshPro:GetModifiedMaterial(baseMaterial)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function TMPro_TextMeshPro:Cull(clipRect, validRect)
end

--- @return System_Void
--- @param clipRect UnityEngine_Rect
--- @param validRect System_Boolean
function TMPro_TextMeshPro:SetClipRect(clipRect, validRect)
end

--- @return System_Void
function TMPro_TextMeshPro:ParentMaskStateChanged()
end

--- @return System_Void
function TMPro_TextMeshPro:RecalculateClipping()
end

--- @return System_Void
function TMPro_TextMeshPro:RecalculateMasking()
end

--- @return System_Void
function TMPro_TextMeshPro:OnCullingChanged()
end

--- @return System_Void
function TMPro_TextMeshPro:LayoutComplete()
end

--- @return System_Void
function TMPro_TextMeshPro:GraphicUpdateComplete()
end

--- @return System_Void
function TMPro_TextMeshPro:OnRebuildRequested()
end

--- @return System_Void
function TMPro_TextMeshPro:SetNativeSize()
end

--- @return System_Boolean
--- @param sp UnityEngine_Vector2
--- @param eventCamera UnityEngine_Camera
function TMPro_TextMeshPro:Raycast(sp, eventCamera)
end

--- @return UnityEngine_Vector2
--- @param point UnityEngine_Vector2
function TMPro_TextMeshPro:PixelAdjustPoint(point)
end

--- @return UnityEngine_Rect
function TMPro_TextMeshPro:GetPixelAdjustedRect()
end

--- @return System_Void
--- @param targetColor UnityEngine_Color
--- @param duration System_Single
--- @param ignoreTimeScale System_Boolean
--- @param useAlpha System_Boolean
--- @param useRGB System_Boolean
function TMPro_TextMeshPro:CrossFadeColor(targetColor, duration, ignoreTimeScale, useAlpha, useRGB)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function TMPro_TextMeshPro:RegisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function TMPro_TextMeshPro:UnregisterDirtyLayoutCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function TMPro_TextMeshPro:RegisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function TMPro_TextMeshPro:UnregisterDirtyVerticesCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function TMPro_TextMeshPro:RegisterDirtyMaterialCallback(action)
end

--- @return System_Void
--- @param action UnityEngine_Events_UnityAction
function TMPro_TextMeshPro:UnregisterDirtyMaterialCallback(action)
end

--- @return System_Boolean
function TMPro_TextMeshPro:IsActive()
end

--- @return System_Boolean
function TMPro_TextMeshPro:IsDestroyed()
end

--- @return System_Boolean
function TMPro_TextMeshPro:IsInvoking()
end

--- @return System_Void
function TMPro_TextMeshPro:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function TMPro_TextMeshPro:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function TMPro_TextMeshPro:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function TMPro_TextMeshPro:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function TMPro_TextMeshPro:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function TMPro_TextMeshPro:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function TMPro_TextMeshPro:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function TMPro_TextMeshPro:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function TMPro_TextMeshPro:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function TMPro_TextMeshPro:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function TMPro_TextMeshPro:StopCoroutine(methodName)
end

--- @return System_Void
function TMPro_TextMeshPro:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function TMPro_TextMeshPro:GetComponent(type)
end

--- @return CS_T
function TMPro_TextMeshPro:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function TMPro_TextMeshPro:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function TMPro_TextMeshPro:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function TMPro_TextMeshPro:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function TMPro_TextMeshPro:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function TMPro_TextMeshPro:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function TMPro_TextMeshPro:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function TMPro_TextMeshPro:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function TMPro_TextMeshPro:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function TMPro_TextMeshPro:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function TMPro_TextMeshPro:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function TMPro_TextMeshPro:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function TMPro_TextMeshPro:GetComponentInParent(t)
end

--- @return CS_T
function TMPro_TextMeshPro:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function TMPro_TextMeshPro:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function TMPro_TextMeshPro:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function TMPro_TextMeshPro:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function TMPro_TextMeshPro:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function TMPro_TextMeshPro:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function TMPro_TextMeshPro:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function TMPro_TextMeshPro:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function TMPro_TextMeshPro:GetComponents(results)
end

--- @return CS_T[]
function TMPro_TextMeshPro:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function TMPro_TextMeshPro:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function TMPro_TextMeshPro:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function TMPro_TextMeshPro:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function TMPro_TextMeshPro:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function TMPro_TextMeshPro:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function TMPro_TextMeshPro:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function TMPro_TextMeshPro:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function TMPro_TextMeshPro:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function TMPro_TextMeshPro:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function TMPro_TextMeshPro:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function TMPro_TextMeshPro:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function TMPro_TextMeshPro:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function TMPro_TextMeshPro:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function TMPro_TextMeshPro:GetInstanceID()
end

--- @return System_Int32
function TMPro_TextMeshPro:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function TMPro_TextMeshPro:Equals(other)
end

--- @return System_String
function TMPro_TextMeshPro:ToString()
end

--- @return System_Type
function TMPro_TextMeshPro:GetType()
end
