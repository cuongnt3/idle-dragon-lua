--- @class DG_Tweening_DOTweenAnimation
DG_Tweening_DOTweenAnimation = Class(DG_Tweening_DOTweenAnimation)

--- @return void
function DG_Tweening_DOTweenAnimation:Ctor()
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
	--- @type System_Boolean
	self.targetIsSelf = nil
	--- @type UnityEngine_GameObject
	self.targetGO = nil
	--- @type System_Boolean
	self.tweenTargetIsTargetGO = nil
	--- @type System_Single
	self.delay = nil
	--- @type System_Single
	self.duration = nil
	--- @type DG_Tweening_Ease
	self.easeType = nil
	--- @type UnityEngine_AnimationCurve
	self.easeCurve = nil
	--- @type DG_Tweening_LoopType
	self.loopType = nil
	--- @type System_Int32
	self.loops = nil
	--- @type System_String
	self.id = nil
	--- @type System_Boolean
	self.isRelative = nil
	--- @type System_Boolean
	self.isFrom = nil
	--- @type System_Boolean
	self.isIndependentUpdate = nil
	--- @type System_Boolean
	self.autoKill = nil
	--- @type System_Boolean
	self.isActive = nil
	--- @type System_Boolean
	self.isValid = nil
	--- @type UnityEngine_Component
	self.target = nil
	--- @type DG_Tweening_Core_DOTweenAnimationType
	self.animationType = nil
	--- @type DG_Tweening_Core_TargetType
	self.targetType = nil
	--- @type DG_Tweening_Core_TargetType
	self.forcedTargetType = nil
	--- @type System_Boolean
	self.autoPlay = nil
	--- @type System_Boolean
	self.useTargetAsV3 = nil
	--- @type System_Single
	self.endValueFloat = nil
	--- @type UnityEngine_Vector3
	self.endValueV3 = nil
	--- @type UnityEngine_Vector2
	self.endValueV2 = nil
	--- @type UnityEngine_Color
	self.endValueColor = nil
	--- @type System_String
	self.endValueString = nil
	--- @type UnityEngine_Rect
	self.endValueRect = nil
	--- @type UnityEngine_Transform
	self.endValueTransform = nil
	--- @type System_Boolean
	self.optionalBool0 = nil
	--- @type System_Single
	self.optionalFloat0 = nil
	--- @type System_Int32
	self.optionalInt0 = nil
	--- @type DG_Tweening_RotateMode
	self.optionalRotationMode = nil
	--- @type DG_Tweening_ScrambleMode
	self.optionalScrambleMode = nil
	--- @type System_String
	self.optionalString = nil
	--- @type DG_Tweening_UpdateType
	self.updateType = nil
	--- @type System_Boolean
	self.isSpeedBased = nil
	--- @type System_Boolean
	self.hasOnStart = nil
	--- @type System_Boolean
	self.hasOnPlay = nil
	--- @type System_Boolean
	self.hasOnUpdate = nil
	--- @type System_Boolean
	self.hasOnStepComplete = nil
	--- @type System_Boolean
	self.hasOnComplete = nil
	--- @type System_Boolean
	self.hasOnTweenCreated = nil
	--- @type System_Boolean
	self.hasOnRewind = nil
	--- @type UnityEngine_Events_UnityEvent
	self.onStart = nil
	--- @type UnityEngine_Events_UnityEvent
	self.onPlay = nil
	--- @type UnityEngine_Events_UnityEvent
	self.onUpdate = nil
	--- @type UnityEngine_Events_UnityEvent
	self.onStepComplete = nil
	--- @type UnityEngine_Events_UnityEvent
	self.onComplete = nil
	--- @type UnityEngine_Events_UnityEvent
	self.onTweenCreated = nil
	--- @type UnityEngine_Events_UnityEvent
	self.onRewind = nil
	--- @type DG_Tweening_Tween
	self.tween = nil
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:CreateTween()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOPlay()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOPlayBackwards()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOPlayForward()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOPause()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOTogglePause()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DORewind()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DORestart()
end

--- @return System_Void
--- @param fromHere System_Boolean
function DG_Tweening_DOTweenAnimation:DORestart(fromHere)
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOComplete()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOKill()
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DOPlayById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DOPlayAllById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DOPauseAllById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DOPlayBackwardsById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DOPlayBackwardsAllById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DOPlayForwardById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DOPlayForwardAllById(id)
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DOPlayNext()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:DORewindAndPlayNext()
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DORewindAllById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DORestartById(id)
end

--- @return System_Void
--- @param id System_String
function DG_Tweening_DOTweenAnimation:DORestartAllById(id)
end

--- @return System_Collections_Generic_List`1[DG_Tweening_Tween]
function DG_Tweening_DOTweenAnimation:GetTweens()
end

--- @return DG_Tweening_Core_TargetType
--- @param t System_Type
function DG_Tweening_DOTweenAnimation:TypeToDOTargetType(t)
end

--- @return DG_Tweening_Tween
function DG_Tweening_DOTweenAnimation:CreateEditorPreview()
end

--- @return System_Boolean
function DG_Tweening_DOTweenAnimation:IsInvoking()
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function DG_Tweening_DOTweenAnimation:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function DG_Tweening_DOTweenAnimation:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function DG_Tweening_DOTweenAnimation:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function DG_Tweening_DOTweenAnimation:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function DG_Tweening_DOTweenAnimation:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function DG_Tweening_DOTweenAnimation:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function DG_Tweening_DOTweenAnimation:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function DG_Tweening_DOTweenAnimation:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function DG_Tweening_DOTweenAnimation:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function DG_Tweening_DOTweenAnimation:StopCoroutine(methodName)
end

--- @return System_Void
function DG_Tweening_DOTweenAnimation:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function DG_Tweening_DOTweenAnimation:GetComponent(type)
end

--- @return CS_T
function DG_Tweening_DOTweenAnimation:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function DG_Tweening_DOTweenAnimation:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function DG_Tweening_DOTweenAnimation:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function DG_Tweening_DOTweenAnimation:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function DG_Tweening_DOTweenAnimation:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function DG_Tweening_DOTweenAnimation:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function DG_Tweening_DOTweenAnimation:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function DG_Tweening_DOTweenAnimation:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function DG_Tweening_DOTweenAnimation:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function DG_Tweening_DOTweenAnimation:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function DG_Tweening_DOTweenAnimation:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function DG_Tweening_DOTweenAnimation:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function DG_Tweening_DOTweenAnimation:GetComponentInParent(t)
end

--- @return CS_T
function DG_Tweening_DOTweenAnimation:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function DG_Tweening_DOTweenAnimation:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function DG_Tweening_DOTweenAnimation:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function DG_Tweening_DOTweenAnimation:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function DG_Tweening_DOTweenAnimation:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function DG_Tweening_DOTweenAnimation:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function DG_Tweening_DOTweenAnimation:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function DG_Tweening_DOTweenAnimation:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function DG_Tweening_DOTweenAnimation:GetComponents(results)
end

--- @return CS_T[]
function DG_Tweening_DOTweenAnimation:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function DG_Tweening_DOTweenAnimation:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function DG_Tweening_DOTweenAnimation:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function DG_Tweening_DOTweenAnimation:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function DG_Tweening_DOTweenAnimation:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function DG_Tweening_DOTweenAnimation:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function DG_Tweening_DOTweenAnimation:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function DG_Tweening_DOTweenAnimation:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function DG_Tweening_DOTweenAnimation:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function DG_Tweening_DOTweenAnimation:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function DG_Tweening_DOTweenAnimation:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function DG_Tweening_DOTweenAnimation:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function DG_Tweening_DOTweenAnimation:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function DG_Tweening_DOTweenAnimation:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function DG_Tweening_DOTweenAnimation:GetInstanceID()
end

--- @return System_Int32
function DG_Tweening_DOTweenAnimation:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function DG_Tweening_DOTweenAnimation:Equals(other)
end

--- @return System_String
function DG_Tweening_DOTweenAnimation:ToString()
end

--- @return System_Type
function DG_Tweening_DOTweenAnimation:GetType()
end
