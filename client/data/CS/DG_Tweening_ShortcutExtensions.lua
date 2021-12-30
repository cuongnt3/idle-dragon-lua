--- @class DG_Tweening_ShortcutExtensions
DG_Tweening_ShortcutExtensions = Class(DG_Tweening_ShortcutExtensions)

--- @return void
function DG_Tweening_ShortcutExtensions:Ctor()
end

--- @return UnityEngine_Camera
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Camera:DOAspect(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_Camera:DOColor(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Camera:DOFarClipPlane(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Camera:DOFieldOfView(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Camera:DONearClipPlane(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Camera:DOOrthoSize(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param endValue UnityEngine_Rect
--- @param duration System_Single
function UnityEngine_Camera:DOPixelRect(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param endValue UnityEngine_Rect
--- @param duration System_Single
function UnityEngine_Camera:DORect(endValue, duration)
end

--- @return UnityEngine_Camera
--- @param duration System_Single
--- @param strength System_Single
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Camera:DOShakePosition(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Camera
--- @param duration System_Single
--- @param strength UnityEngine_Vector3
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Camera:DOShakePosition(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Camera
--- @param duration System_Single
--- @param strength System_Single
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Camera:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Camera
--- @param duration System_Single
--- @param strength UnityEngine_Vector3
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Camera:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Light
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_Light:DOColor(endValue, duration)
end

--- @return UnityEngine_Light
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Light:DOIntensity(endValue, duration)
end

--- @return UnityEngine_Light
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Light:DOShadowStrength(endValue, duration)
end

--- @return UnityEngine_LineRenderer
--- @param startValue DG_Tweening_Color2
--- @param endValue DG_Tweening_Color2
--- @param duration System_Single
function UnityEngine_LineRenderer:DOColor(startValue, endValue, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_Material:DOColor(endValue, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Color
--- @param property System_String
--- @param duration System_Single
function UnityEngine_Material:DOColor(endValue, property, duration)
end

--- @return UnityEngine_Material
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Material:DOFade(endValue, duration)
end

--- @return UnityEngine_Material
--- @param endValue System_Single
--- @param property System_String
--- @param duration System_Single
function UnityEngine_Material:DOFade(endValue, property, duration)
end

--- @return UnityEngine_Material
--- @param endValue System_Single
--- @param property System_String
--- @param duration System_Single
function UnityEngine_Material:DOFloat(endValue, property, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
function UnityEngine_Material:DOOffset(endValue, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Vector2
--- @param property System_String
--- @param duration System_Single
function UnityEngine_Material:DOOffset(endValue, property, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Vector2
--- @param duration System_Single
function UnityEngine_Material:DOTiling(endValue, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Vector2
--- @param property System_String
--- @param duration System_Single
function UnityEngine_Material:DOTiling(endValue, property, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Vector4
--- @param property System_String
--- @param duration System_Single
function UnityEngine_Material:DOVector(endValue, property, duration)
end

--- @return UnityEngine_TrailRenderer
--- @param toStartWidth System_Single
--- @param toEndWidth System_Single
--- @param duration System_Single
function UnityEngine_TrailRenderer:DOResize(toStartWidth, toEndWidth, duration)
end

--- @return UnityEngine_TrailRenderer
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_TrailRenderer:DOTime(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Vector3
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOMove(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOMoveX(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOMoveY(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOMoveZ(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Vector3
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOLocalMove(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOLocalMoveX(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOLocalMoveY(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOLocalMoveZ(endValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Vector3
--- @param duration System_Single
--- @param mode DG_Tweening_RotateMode
function UnityEngine_Transform:DORotate(endValue, duration, mode)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Quaternion
--- @param duration System_Single
function UnityEngine_Transform:DORotateQuaternion(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Vector3
--- @param duration System_Single
--- @param mode DG_Tweening_RotateMode
function UnityEngine_Transform:DOLocalRotate(endValue, duration, mode)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Quaternion
--- @param duration System_Single
function UnityEngine_Transform:DOLocalRotateQuaternion(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Vector3
--- @param duration System_Single
function UnityEngine_Transform:DOScale(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Transform:DOScale(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Transform:DOScaleX(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Transform:DOScaleY(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param endValue System_Single
--- @param duration System_Single
function UnityEngine_Transform:DOScaleZ(endValue, duration)
end

--- @return UnityEngine_Transform
--- @param towards UnityEngine_Vector3
--- @param duration System_Single
--- @param axisConstraint DG_Tweening_AxisConstraint
--- @param up System_Nullable`1[UnityEngine_Vector3]
function UnityEngine_Transform:DOLookAt(towards, duration, axisConstraint, up)
end

--- @return UnityEngine_Transform
--- @param punch UnityEngine_Vector3
--- @param duration System_Single
--- @param vibrato System_Int32
--- @param elasticity System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOPunchPosition(punch, duration, vibrato, elasticity, snapping)
end

--- @return UnityEngine_Transform
--- @param punch UnityEngine_Vector3
--- @param duration System_Single
--- @param vibrato System_Int32
--- @param elasticity System_Single
function UnityEngine_Transform:DOPunchScale(punch, duration, vibrato, elasticity)
end

--- @return UnityEngine_Transform
--- @param punch UnityEngine_Vector3
--- @param duration System_Single
--- @param vibrato System_Int32
--- @param elasticity System_Single
function UnityEngine_Transform:DOPunchRotation(punch, duration, vibrato, elasticity)
end

--- @return UnityEngine_Transform
--- @param duration System_Single
--- @param strength System_Single
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param snapping System_Boolean
--- @param fadeOut System_Boolean
function UnityEngine_Transform:DOShakePosition(duration, strength, vibrato, randomness, snapping, fadeOut)
end

--- @return UnityEngine_Transform
--- @param duration System_Single
--- @param strength UnityEngine_Vector3
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param snapping System_Boolean
--- @param fadeOut System_Boolean
function UnityEngine_Transform:DOShakePosition(duration, strength, vibrato, randomness, snapping, fadeOut)
end

--- @return UnityEngine_Transform
--- @param duration System_Single
--- @param strength System_Single
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Transform:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Transform
--- @param duration System_Single
--- @param strength UnityEngine_Vector3
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Transform:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Transform
--- @param duration System_Single
--- @param strength System_Single
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Transform:DOShakeScale(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Transform
--- @param duration System_Single
--- @param strength UnityEngine_Vector3
--- @param vibrato System_Int32
--- @param randomness System_Single
--- @param fadeOut System_Boolean
function UnityEngine_Transform:DOShakeScale(duration, strength, vibrato, randomness, fadeOut)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Vector3
--- @param jumpPower System_Single
--- @param numJumps System_Int32
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOJump(endValue, jumpPower, numJumps, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param endValue UnityEngine_Vector3
--- @param jumpPower System_Single
--- @param numJumps System_Int32
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOLocalJump(endValue, jumpPower, numJumps, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param path UnityEngine_Vector3[]
--- @param duration System_Single
--- @param pathType DG_Tweening_PathType
--- @param pathMode DG_Tweening_PathMode
--- @param resolution System_Int32
--- @param gizmoColor System_Nullable`1[UnityEngine_Color]
function UnityEngine_Transform:DOPath(path, duration, pathType, pathMode, resolution, gizmoColor)
end

--- @return UnityEngine_Transform
--- @param path UnityEngine_Vector3[]
--- @param duration System_Single
--- @param pathType DG_Tweening_PathType
--- @param pathMode DG_Tweening_PathMode
--- @param resolution System_Int32
--- @param gizmoColor System_Nullable`1[UnityEngine_Color]
function UnityEngine_Transform:DOLocalPath(path, duration, pathType, pathMode, resolution, gizmoColor)
end

--- @return UnityEngine_Transform
--- @param path DG_Tweening_Plugins_Core_PathCore_Path
--- @param duration System_Single
--- @param pathMode DG_Tweening_PathMode
function UnityEngine_Transform:DOPath(path, duration, pathMode)
end

--- @return UnityEngine_Transform
--- @param path DG_Tweening_Plugins_Core_PathCore_Path
--- @param duration System_Single
--- @param pathMode DG_Tweening_PathMode
function UnityEngine_Transform:DOLocalPath(path, duration, pathMode)
end

--- @return DG_Tweening_Tween
--- @param endValue System_Single
--- @param duration System_Single
function DG_Tweening_Tween:DOTimeScale(endValue, duration)
end

--- @return UnityEngine_Light
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_Light:DOBlendableColor(endValue, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Color
--- @param duration System_Single
function UnityEngine_Material:DOBlendableColor(endValue, duration)
end

--- @return UnityEngine_Material
--- @param endValue UnityEngine_Color
--- @param property System_String
--- @param duration System_Single
function UnityEngine_Material:DOBlendableColor(endValue, property, duration)
end

--- @return UnityEngine_Transform
--- @param byValue UnityEngine_Vector3
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOBlendableMoveBy(byValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param byValue UnityEngine_Vector3
--- @param duration System_Single
--- @param snapping System_Boolean
function UnityEngine_Transform:DOBlendableLocalMoveBy(byValue, duration, snapping)
end

--- @return UnityEngine_Transform
--- @param byValue UnityEngine_Vector3
--- @param duration System_Single
--- @param mode DG_Tweening_RotateMode
function UnityEngine_Transform:DOBlendableRotateBy(byValue, duration, mode)
end

--- @return UnityEngine_Transform
--- @param byValue UnityEngine_Vector3
--- @param duration System_Single
--- @param mode DG_Tweening_RotateMode
function UnityEngine_Transform:DOBlendableLocalRotateBy(byValue, duration, mode)
end

--- @return UnityEngine_Transform
--- @param punch UnityEngine_Vector3
--- @param duration System_Single
--- @param vibrato System_Int32
--- @param elasticity System_Single
function UnityEngine_Transform:DOBlendablePunchRotation(punch, duration, vibrato, elasticity)
end

--- @return UnityEngine_Transform
--- @param byValue UnityEngine_Vector3
--- @param duration System_Single
function UnityEngine_Transform:DOBlendableScaleBy(byValue, duration)
end

--- @return UnityEngine_Component
--- @param withCallbacks System_Boolean
function UnityEngine_Component:DOComplete(withCallbacks)
end

--- @return UnityEngine_Material
--- @param withCallbacks System_Boolean
function UnityEngine_Material:DOComplete(withCallbacks)
end

--- @return UnityEngine_Component
--- @param complete System_Boolean
function UnityEngine_Component:DOKill(complete)
end

--- @return UnityEngine_Material
--- @param complete System_Boolean
function UnityEngine_Material:DOKill(complete)
end

--- @return UnityEngine_Component
function UnityEngine_Component:DOFlip()
end

--- @return UnityEngine_Material
function UnityEngine_Material:DOFlip()
end

--- @return UnityEngine_Component
--- @param to System_Single
--- @param andPlay System_Boolean
function UnityEngine_Component:DOGoto(to, andPlay)
end

--- @return UnityEngine_Material
--- @param to System_Single
--- @param andPlay System_Boolean
function UnityEngine_Material:DOGoto(to, andPlay)
end

--- @return UnityEngine_Component
function UnityEngine_Component:DOPause()
end

--- @return UnityEngine_Material
function UnityEngine_Material:DOPause()
end

--- @return UnityEngine_Component
function UnityEngine_Component:DOPlay()
end

--- @return UnityEngine_Material
function UnityEngine_Material:DOPlay()
end

--- @return UnityEngine_Component
function UnityEngine_Component:DOPlayBackwards()
end

--- @return UnityEngine_Material
function UnityEngine_Material:DOPlayBackwards()
end

--- @return UnityEngine_Component
function UnityEngine_Component:DOPlayForward()
end

--- @return UnityEngine_Material
function UnityEngine_Material:DOPlayForward()
end

--- @return UnityEngine_Component
--- @param includeDelay System_Boolean
function UnityEngine_Component:DORestart(includeDelay)
end

--- @return UnityEngine_Material
--- @param includeDelay System_Boolean
function UnityEngine_Material:DORestart(includeDelay)
end

--- @return UnityEngine_Component
--- @param includeDelay System_Boolean
function UnityEngine_Component:DORewind(includeDelay)
end

--- @return UnityEngine_Material
--- @param includeDelay System_Boolean
function UnityEngine_Material:DORewind(includeDelay)
end

--- @return UnityEngine_Component
function UnityEngine_Component:DOSmoothRewind()
end

--- @return UnityEngine_Material
function UnityEngine_Material:DOSmoothRewind()
end

--- @return UnityEngine_Component
function UnityEngine_Component:DOTogglePause()
end

--- @return UnityEngine_Material
function UnityEngine_Material:DOTogglePause()
end

--- @return System_Boolean
--- @param obj System_Object
function DG_Tweening_ShortcutExtensions:Equals(obj)
end

--- @return System_Int32
function DG_Tweening_ShortcutExtensions:GetHashCode()
end

--- @return System_Type
function DG_Tweening_ShortcutExtensions:GetType()
end

--- @return System_String
function DG_Tweening_ShortcutExtensions:ToString()
end
