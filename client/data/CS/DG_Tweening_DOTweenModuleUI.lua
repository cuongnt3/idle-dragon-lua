--- @class DG_Tweening_DOTweenModuleUI
DG_Tweening_DOTweenModuleUI = Class(DG_Tweening_DOTweenModuleUI)

--- @return void
function DG_Tweening_DOTweenModuleUI:Ctor()
end

--- @return UnityEngine_CanvasGroup
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_CanvasGroup:DOFade(endValue, duration)
end

--- @return UnityEngine_UI_Graphic
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_UI_Graphic:DOColor(endValue, duration)
end

--- @return UnityEngine_UI_Graphic
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_UI_Graphic:DOFade(endValue, duration)
end

--- @return UnityEngine_UI_Image
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_UI_Image:DOColor(endValue, duration)
end

--- @return UnityEngine_UI_Image
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_UI_Image:DOFade(endValue, duration)
end

--- @return UnityEngine_UI_Image
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_UI_Image:DOFillAmount(endValue, duration)
end

--- @return UnityEngine_UI_Image
--- @param gradient UnityEngine_Gradient
--- @param duration System_Single
function UnityEngine_UI_Image:DOGradientColor(gradient, duration)
end

--- @return UnityEngine_UI_LayoutElement
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_UI_LayoutElement:DOFlexibleSize(endValue, duration, snapping)
end

--- @return UnityEngine_UI_LayoutElement
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_UI_LayoutElement:DOMinSize(endValue, duration, snapping)
end

--- @return UnityEngine_UI_LayoutElement
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_UI_LayoutElement:DOPreferredSize(endValue, duration, snapping)
end

--- @return UnityEngine_UI_Outline
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_UI_Outline:DOColor(endValue, duration)
end

--- @return UnityEngine_UI_Outline
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_UI_Outline:DOFade(endValue, duration)
end

--- @return UnityEngine_UI_Outline
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
function UnityEngine_UI_Outline:DOScale(endValue, duration)
end

--- @return UnityEngine_RectTransform
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorPos(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorPosX(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorPosY(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue UnityEngine_Vector3
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorPos3D(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorPos3DX(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorPos3DY(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorPos3DZ(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorMax(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOAnchorMin(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
function UnityEngine_RectTransform:DOPivot(endValue, duration)
end

--- @return UnityEngine_RectTransform
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_RectTransform:DOPivotX(endValue, duration)
end

--- @return UnityEngine_RectTransform
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_RectTransform:DOPivotY(endValue, duration)
end

--- @return UnityEngine_RectTransform
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOSizeDelta(endValue, duration, snapping)
end

--- @return UnityEngine_RectTransform
--- @param punch UnityEngine_Vector2
--- @param duration System_Single
--- @param vibrato System_Int32
--- @param elasticity System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOPunchAnchorPos(punch, duration, vibrato, elasticity, snapping)
end

--- @return UnityEngine_RectTransform
--- @param duration System_Single
--- @param strength System_Single
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param snapping System_Boolean
--- @param fadeOut System_Boolean
function UnityEngine_RectTransform:DOShakeAnchorPos(duration, strength, vibrato, randomness, snapping, fadeOut)
end

--- @return UnityEngine_RectTransform
--- @param duration System_Single
--- @param strength UnityEngine_Vector2
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param snapping System_Boolean
--- @param fadeOut System_Boolean
function UnityEngine_RectTransform:DOShakeAnchorPos(duration, strength, vibrato, randomness, snapping, fadeOut)
end

--- @return UnityEngine_RectTransform
--- @param endValue UnityEngine_Vector2
--- @param jumpPower System_Single
--- @param numJumps System_Int32
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_RectTransform:DOJumpAnchorPos(endValue, jumpPower, numJumps, duration, snapping)
end

--- @return UnityEngine_UI_ScrollRect
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_UI_ScrollRect:DONormalizedPos(endValue, duration, snapping)
end

--- @return UnityEngine_UI_ScrollRect
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_UI_ScrollRect:DOHorizontalNormalizedPos(endValue, duration, snapping)
end

--- @return UnityEngine_UI_ScrollRect
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_UI_ScrollRect:DOVerticalNormalizedPos(endValue, duration, snapping)
end

--- @return UnityEngine_UI_Slider
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_UI_Slider:DOValue(endValue, duration, snapping)
end

--- @return UnityEngine_UI_Text
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_UI_Text:DOColor(endValue, duration)
end

--- @return UnityEngine_UI_Text
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_UI_Text:DOFade(endValue, duration)
end

--- @return UnityEngine_UI_Text
--- @param endValue System_String
--- @param duration System_Single
--- @param richTextEnabled System_Boolean
--- @param scrambleMode DG_Tweening_ScrambleMode
--- @param scrambleChars System_String
function UnityEngine_UI_Text:DOText(endValue, duration, richTextEnabled, scrambleMode, scrambleChars)
end

--- @return UnityEngine_UI_Graphic
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_UI_Graphic:DOBlendableColor(endValue, duration)
end

--- @return UnityEngine_UI_Image
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_UI_Image:DOBlendableColor(endValue, duration)
end

--- @return UnityEngine_UI_Text
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_UI_Text:DOBlendableColor(endValue, duration)
end

--- @return System_Boolean
--- @param obj System_Object
function DG_Tweening_DOTweenModuleUI:Equals(obj)
end

--- @return System_Int32
function DG_Tweening_DOTweenModuleUI:GetHashCode()
end

--- @return System_Type
function DG_Tweening_DOTweenModuleUI:GetType()
end

--- @return System_String
function DG_Tweening_DOTweenModuleUI:ToString()
end
