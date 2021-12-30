--- @class UnityEngine_Animator
UnityEngine_Animator = Class(UnityEngine_Animator)

--- @return void
function UnityEngine_Animator:Ctor()
	--- @type System_Boolean
	self.isOptimizable = nil
	--- @type System_Boolean
	self.isHuman = nil
	--- @type System_Boolean
	self.hasRootMotion = nil
	--- @type System_Single
	self.humanScale = nil
	--- @type System_Boolean
	self.isInitialized = nil
	--- @type UnityEngine_Vector3
	self.deltaPosition = nil
	--- @type UnityEngine_Quaternion
	self.deltaRotation = nil
	--- @type UnityEngine_Vector3
	self.velocity = nil
	--- @type UnityEngine_Vector3
	self.angularVelocity = nil
	--- @type UnityEngine_Vector3
	self.rootPosition = nil
	--- @type UnityEngine_Quaternion
	self.rootRotation = nil
	--- @type System_Boolean
	self.applyRootMotion = nil
	--- @type System_Boolean
	self.linearVelocityBlending = nil
	--- @type System_Boolean
	self.animatePhysics = nil
	--- @type UnityEngine_AnimatorUpdateMode
	self.updateMode = nil
	--- @type System_Boolean
	self.hasTransformHierarchy = nil
	--- @type System_Single
	self.gravityWeight = nil
	--- @type UnityEngine_Vector3
	self.bodyPosition = nil
	--- @type UnityEngine_Quaternion
	self.bodyRotation = nil
	--- @type System_Boolean
	self.stabilizeFeet = nil
	--- @type System_Int32
	self.layerCount = nil
	--- @type UnityEngine_AnimatorControllerParameter[]
	self.parameters = nil
	--- @type System_Int32
	self.parameterCount = nil
	--- @type System_Single
	self.feetPivotActive = nil
	--- @type System_Single
	self.pivotWeight = nil
	--- @type UnityEngine_Vector3
	self.pivotPosition = nil
	--- @type System_Boolean
	self.isMatchingTarget = nil
	--- @type System_Single
	self.speed = nil
	--- @type UnityEngine_Vector3
	self.targetPosition = nil
	--- @type UnityEngine_Quaternion
	self.targetRotation = nil
	--- @type UnityEngine_AnimatorCullingMode
	self.cullingMode = nil
	--- @type System_Single
	self.playbackTime = nil
	--- @type System_Single
	self.recorderStartTime = nil
	--- @type System_Single
	self.recorderStopTime = nil
	--- @type UnityEngine_AnimatorRecorderMode
	self.recorderMode = nil
	--- @type UnityEngine_RuntimeAnimatorController
	self.runtimeAnimatorController = nil
	--- @type System_Boolean
	self.hasBoundPlayables = nil
	--- @type UnityEngine_Avatar
	self.avatar = nil
	--- @type UnityEngine_Playables_PlayableGraph
	self.playableGraph = nil
	--- @type System_Boolean
	self.layersAffectMassCenter = nil
	--- @type System_Single
	self.leftFeetBottomHeight = nil
	--- @type System_Single
	self.rightFeetBottomHeight = nil
	--- @type System_Boolean
	self.logWarnings = nil
	--- @type System_Boolean
	self.fireEvents = nil
	--- @type System_Boolean
	self.keepAnimatorControllerStateOnDisable = nil
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

--- @return UnityEngine_AnimationInfo[]
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetCurrentAnimationClipState(layerIndex)
end

--- @return UnityEngine_AnimationInfo[]
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetNextAnimationClipState(layerIndex)
end

--- @return System_Void
function UnityEngine_Animator:Stop()
end

--- @return System_Single
--- @param name System_String
function UnityEngine_Animator:GetFloat(name)
end

--- @return System_Single
--- @param id System_Int32
function UnityEngine_Animator:GetFloat(id)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Single
function UnityEngine_Animator:SetFloat(name, value)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Single
--- @param dampTime System_Single
--- @param deltaTime System_Single
function UnityEngine_Animator:SetFloat(name, value, dampTime, deltaTime)
end

--- @return System_Void
--- @param id System_Int32
--- @param value System_Single
function UnityEngine_Animator:SetFloat(id, value)
end

--- @return System_Void
--- @param id System_Int32
--- @param value System_Single
--- @param dampTime System_Single
--- @param deltaTime System_Single
function UnityEngine_Animator:SetFloat(id, value, dampTime, deltaTime)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Animator:GetBool(name)
end

--- @return System_Boolean
--- @param id System_Int32
function UnityEngine_Animator:GetBool(id)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Boolean
function UnityEngine_Animator:SetBool(name, value)
end

--- @return System_Void
--- @param id System_Int32
--- @param value System_Boolean
function UnityEngine_Animator:SetBool(id, value)
end

--- @return System_Int32
--- @param name System_String
function UnityEngine_Animator:GetInteger(name)
end

--- @return System_Int32
--- @param id System_Int32
function UnityEngine_Animator:GetInteger(id)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Int32
function UnityEngine_Animator:SetInteger(name, value)
end

--- @return System_Void
--- @param id System_Int32
--- @param value System_Int32
function UnityEngine_Animator:SetInteger(id, value)
end

--- @return System_Void
--- @param name System_String
function UnityEngine_Animator:SetTrigger(name)
end

--- @return System_Void
--- @param id System_Int32
function UnityEngine_Animator:SetTrigger(id)
end

--- @return System_Void
--- @param name System_String
function UnityEngine_Animator:ResetTrigger(name)
end

--- @return System_Void
--- @param id System_Int32
function UnityEngine_Animator:ResetTrigger(id)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Animator:IsParameterControlledByCurve(name)
end

--- @return System_Boolean
--- @param id System_Int32
function UnityEngine_Animator:IsParameterControlledByCurve(id)
end

--- @return UnityEngine_Vector3
--- @param goal UnityEngine_AvatarIKGoal
function UnityEngine_Animator:GetIKPosition(goal)
end

--- @return System_Void
--- @param goal UnityEngine_AvatarIKGoal
--- @param goalPosition UnityEngine_Vector3
function UnityEngine_Animator:SetIKPosition(goal, goalPosition)
end

--- @return UnityEngine_Quaternion
--- @param goal UnityEngine_AvatarIKGoal
function UnityEngine_Animator:GetIKRotation(goal)
end

--- @return System_Void
--- @param goal UnityEngine_AvatarIKGoal
--- @param goalRotation UnityEngine_Quaternion
function UnityEngine_Animator:SetIKRotation(goal, goalRotation)
end

--- @return System_Single
--- @param goal UnityEngine_AvatarIKGoal
function UnityEngine_Animator:GetIKPositionWeight(goal)
end

--- @return System_Void
--- @param goal UnityEngine_AvatarIKGoal
--- @param value System_Single
function UnityEngine_Animator:SetIKPositionWeight(goal, value)
end

--- @return System_Single
--- @param goal UnityEngine_AvatarIKGoal
function UnityEngine_Animator:GetIKRotationWeight(goal)
end

--- @return System_Void
--- @param goal UnityEngine_AvatarIKGoal
--- @param value System_Single
function UnityEngine_Animator:SetIKRotationWeight(goal, value)
end

--- @return UnityEngine_Vector3
--- @param hint UnityEngine_AvatarIKHint
function UnityEngine_Animator:GetIKHintPosition(hint)
end

--- @return System_Void
--- @param hint UnityEngine_AvatarIKHint
--- @param hintPosition UnityEngine_Vector3
function UnityEngine_Animator:SetIKHintPosition(hint, hintPosition)
end

--- @return System_Single
--- @param hint UnityEngine_AvatarIKHint
function UnityEngine_Animator:GetIKHintPositionWeight(hint)
end

--- @return System_Void
--- @param hint UnityEngine_AvatarIKHint
--- @param value System_Single
function UnityEngine_Animator:SetIKHintPositionWeight(hint, value)
end

--- @return System_Void
--- @param lookAtPosition UnityEngine_Vector3
function UnityEngine_Animator:SetLookAtPosition(lookAtPosition)
end

--- @return System_Void
--- @param weight System_Single
function UnityEngine_Animator:SetLookAtWeight(weight)
end

--- @return System_Void
--- @param weight System_Single
--- @param bodyWeight System_Single
function UnityEngine_Animator:SetLookAtWeight(weight, bodyWeight)
end

--- @return System_Void
--- @param weight System_Single
--- @param bodyWeight System_Single
--- @param headWeight System_Single
function UnityEngine_Animator:SetLookAtWeight(weight, bodyWeight, headWeight)
end

--- @return System_Void
--- @param weight System_Single
--- @param bodyWeight System_Single
--- @param headWeight System_Single
--- @param eyesWeight System_Single
function UnityEngine_Animator:SetLookAtWeight(weight, bodyWeight, headWeight, eyesWeight)
end

--- @return System_Void
--- @param weight System_Single
--- @param bodyWeight System_Single
--- @param headWeight System_Single
--- @param eyesWeight System_Single
--- @param clampWeight System_Single
function UnityEngine_Animator:SetLookAtWeight(weight, bodyWeight, headWeight, eyesWeight, clampWeight)
end

--- @return System_Void
--- @param humanBoneId UnityEngine_HumanBodyBones
--- @param rotation UnityEngine_Quaternion
function UnityEngine_Animator:SetBoneLocalRotation(humanBoneId, rotation)
end

--- @return CS_T
function UnityEngine_Animator:GetBehaviour()
end

--- @return CS_T[]
function UnityEngine_Animator:GetBehaviours()
end

--- @return UnityEngine_StateMachineBehaviour[]
--- @param fullPathHash System_Int32
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetBehaviours(fullPathHash, layerIndex)
end

--- @return System_String
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetLayerName(layerIndex)
end

--- @return System_Int32
--- @param layerName System_String
function UnityEngine_Animator:GetLayerIndex(layerName)
end

--- @return System_Single
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetLayerWeight(layerIndex)
end

--- @return System_Void
--- @param layerIndex System_Int32
--- @param weight System_Single
function UnityEngine_Animator:SetLayerWeight(layerIndex, weight)
end

--- @return UnityEngine_AnimatorStateInfo
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetCurrentAnimatorStateInfo(layerIndex)
end

--- @return UnityEngine_AnimatorStateInfo
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetNextAnimatorStateInfo(layerIndex)
end

--- @return UnityEngine_AnimatorTransitionInfo
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetAnimatorTransitionInfo(layerIndex)
end

--- @return System_Int32
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetCurrentAnimatorClipInfoCount(layerIndex)
end

--- @return System_Int32
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetNextAnimatorClipInfoCount(layerIndex)
end

--- @return UnityEngine_AnimatorClipInfo[]
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetCurrentAnimatorClipInfo(layerIndex)
end

--- @return UnityEngine_AnimatorClipInfo[]
--- @param layerIndex System_Int32
function UnityEngine_Animator:GetNextAnimatorClipInfo(layerIndex)
end

--- @return System_Void
--- @param layerIndex System_Int32
--- @param clips System_Collections_Generic_List`1[UnityEngine_AnimatorClipInfo]
function UnityEngine_Animator:GetCurrentAnimatorClipInfo(layerIndex, clips)
end

--- @return System_Void
--- @param layerIndex System_Int32
--- @param clips System_Collections_Generic_List`1[UnityEngine_AnimatorClipInfo]
function UnityEngine_Animator:GetNextAnimatorClipInfo(layerIndex, clips)
end

--- @return System_Boolean
--- @param layerIndex System_Int32
function UnityEngine_Animator:IsInTransition(layerIndex)
end

--- @return UnityEngine_AnimatorControllerParameter
--- @param index System_Int32
function UnityEngine_Animator:GetParameter(index)
end

--- @return System_Void
--- @param matchPosition UnityEngine_Vector3
--- @param matchRotation UnityEngine_Quaternion
--- @param targetBodyPart UnityEngine_AvatarTarget
--- @param weightMask UnityEngine_MatchTargetWeightMask
--- @param startNormalizedTime System_Single
function UnityEngine_Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime)
end

--- @return System_Void
--- @param matchPosition UnityEngine_Vector3
--- @param matchRotation UnityEngine_Quaternion
--- @param targetBodyPart UnityEngine_AvatarTarget
--- @param weightMask UnityEngine_MatchTargetWeightMask
--- @param startNormalizedTime System_Single
--- @param targetNormalizedTime System_Single
function UnityEngine_Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime, targetNormalizedTime)
end

--- @return System_Void
function UnityEngine_Animator:InterruptMatchTarget()
end

--- @return System_Void
--- @param completeMatch System_Boolean
function UnityEngine_Animator:InterruptMatchTarget(completeMatch)
end

--- @return System_Void
--- @param normalizedTime System_Single
function UnityEngine_Animator:ForceStateNormalizedTime(normalizedTime)
end

--- @return System_Void
--- @param stateName System_String
--- @param fixedTransitionDuration System_Single
function UnityEngine_Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration)
end

--- @return System_Void
--- @param stateName System_String
--- @param fixedTransitionDuration System_Single
--- @param layer System_Int32
function UnityEngine_Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration, layer)
end

--- @return System_Void
--- @param stateName System_String
--- @param fixedTransitionDuration System_Single
--- @param layer System_Int32
--- @param fixedTimeOffset System_Single
function UnityEngine_Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration, layer, fixedTimeOffset)
end

--- @return System_Void
--- @param stateName System_String
--- @param fixedTransitionDuration System_Single
--- @param layer System_Int32
--- @param fixedTimeOffset System_Single
--- @param normalizedTransitionTime System_Single
function UnityEngine_Animator:CrossFadeInFixedTime(stateName, fixedTransitionDuration, layer, fixedTimeOffset, normalizedTransitionTime)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param fixedTransitionDuration System_Single
--- @param layer System_Int32
--- @param fixedTimeOffset System_Single
function UnityEngine_Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration, layer, fixedTimeOffset)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param fixedTransitionDuration System_Single
--- @param layer System_Int32
function UnityEngine_Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration, layer)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param fixedTransitionDuration System_Single
function UnityEngine_Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param fixedTransitionDuration System_Single
--- @param layer System_Int32
--- @param fixedTimeOffset System_Single
--- @param normalizedTransitionTime System_Single
function UnityEngine_Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration, layer, fixedTimeOffset, normalizedTransitionTime)
end

--- @return System_Void
--- @param stateName System_String
--- @param normalizedTransitionDuration System_Single
--- @param layer System_Int32
--- @param normalizedTimeOffset System_Single
function UnityEngine_Animator:CrossFade(stateName, normalizedTransitionDuration, layer, normalizedTimeOffset)
end

--- @return System_Void
--- @param stateName System_String
--- @param normalizedTransitionDuration System_Single
--- @param layer System_Int32
function UnityEngine_Animator:CrossFade(stateName, normalizedTransitionDuration, layer)
end

--- @return System_Void
--- @param stateName System_String
--- @param normalizedTransitionDuration System_Single
function UnityEngine_Animator:CrossFade(stateName, normalizedTransitionDuration)
end

--- @return System_Void
--- @param stateName System_String
--- @param normalizedTransitionDuration System_Single
--- @param layer System_Int32
--- @param normalizedTimeOffset System_Single
--- @param normalizedTransitionTime System_Single
function UnityEngine_Animator:CrossFade(stateName, normalizedTransitionDuration, layer, normalizedTimeOffset, normalizedTransitionTime)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param normalizedTransitionDuration System_Single
--- @param layer System_Int32
--- @param normalizedTimeOffset System_Single
--- @param normalizedTransitionTime System_Single
function UnityEngine_Animator:CrossFade(stateHashName, normalizedTransitionDuration, layer, normalizedTimeOffset, normalizedTransitionTime)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param normalizedTransitionDuration System_Single
--- @param layer System_Int32
--- @param normalizedTimeOffset System_Single
function UnityEngine_Animator:CrossFade(stateHashName, normalizedTransitionDuration, layer, normalizedTimeOffset)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param normalizedTransitionDuration System_Single
--- @param layer System_Int32
function UnityEngine_Animator:CrossFade(stateHashName, normalizedTransitionDuration, layer)
end

--- @return System_Void
--- @param stateHashName System_Int32
--- @param normalizedTransitionDuration System_Single
function UnityEngine_Animator:CrossFade(stateHashName, normalizedTransitionDuration)
end

--- @return System_Void
--- @param stateName System_String
--- @param layer System_Int32
function UnityEngine_Animator:PlayInFixedTime(stateName, layer)
end

--- @return System_Void
--- @param stateName System_String
function UnityEngine_Animator:PlayInFixedTime(stateName)
end

--- @return System_Void
--- @param stateName System_String
--- @param layer System_Int32
--- @param fixedTime System_Single
function UnityEngine_Animator:PlayInFixedTime(stateName, layer, fixedTime)
end

--- @return System_Void
--- @param stateNameHash System_Int32
--- @param layer System_Int32
--- @param fixedTime System_Single
function UnityEngine_Animator:PlayInFixedTime(stateNameHash, layer, fixedTime)
end

--- @return System_Void
--- @param stateNameHash System_Int32
--- @param layer System_Int32
function UnityEngine_Animator:PlayInFixedTime(stateNameHash, layer)
end

--- @return System_Void
--- @param stateNameHash System_Int32
function UnityEngine_Animator:PlayInFixedTime(stateNameHash)
end

--- @return System_Void
--- @param stateName System_String
--- @param layer System_Int32
function UnityEngine_Animator:Play(stateName, layer)
end

--- @return System_Void
--- @param stateName System_String
function UnityEngine_Animator:Play(stateName)
end

--- @return System_Void
--- @param stateName System_String
--- @param layer System_Int32
--- @param normalizedTime System_Single
function UnityEngine_Animator:Play(stateName, layer, normalizedTime)
end

--- @return System_Void
--- @param stateNameHash System_Int32
--- @param layer System_Int32
--- @param normalizedTime System_Single
function UnityEngine_Animator:Play(stateNameHash, layer, normalizedTime)
end

--- @return System_Void
--- @param stateNameHash System_Int32
--- @param layer System_Int32
function UnityEngine_Animator:Play(stateNameHash, layer)
end

--- @return System_Void
--- @param stateNameHash System_Int32
function UnityEngine_Animator:Play(stateNameHash)
end

--- @return System_Void
--- @param targetIndex UnityEngine_AvatarTarget
--- @param targetNormalizedTime System_Single
function UnityEngine_Animator:SetTarget(targetIndex, targetNormalizedTime)
end

--- @return System_Boolean
--- @param transform UnityEngine_Transform
function UnityEngine_Animator:IsControlled(transform)
end

--- @return UnityEngine_Transform
--- @param humanBoneId UnityEngine_HumanBodyBones
function UnityEngine_Animator:GetBoneTransform(humanBoneId)
end

--- @return System_Void
function UnityEngine_Animator:StartPlayback()
end

--- @return System_Void
function UnityEngine_Animator:StopPlayback()
end

--- @return System_Void
--- @param frameCount System_Int32
function UnityEngine_Animator:StartRecording(frameCount)
end

--- @return System_Void
function UnityEngine_Animator:StopRecording()
end

--- @return System_Boolean
--- @param layerIndex System_Int32
--- @param stateID System_Int32
function UnityEngine_Animator:HasState(layerIndex, stateID)
end

--- @return System_Int32
--- @param name System_String
function UnityEngine_Animator:StringToHash(name)
end

--- @return System_Void
--- @param deltaTime System_Single
function UnityEngine_Animator:Update(deltaTime)
end

--- @return System_Void
function UnityEngine_Animator:Rebind()
end

--- @return System_Void
function UnityEngine_Animator:ApplyBuiltinRootMotion()
end

--- @return UnityEngine_Vector3
--- @param name System_String
function UnityEngine_Animator:GetVector(name)
end

--- @return UnityEngine_Vector3
--- @param id System_Int32
function UnityEngine_Animator:GetVector(id)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Vector3
function UnityEngine_Animator:SetVector(name, value)
end

--- @return System_Void
--- @param id System_Int32
--- @param value UnityEngine_Vector3
function UnityEngine_Animator:SetVector(id, value)
end

--- @return UnityEngine_Quaternion
--- @param name System_String
function UnityEngine_Animator:GetQuaternion(name)
end

--- @return UnityEngine_Quaternion
--- @param id System_Int32
function UnityEngine_Animator:GetQuaternion(id)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Quaternion
function UnityEngine_Animator:SetQuaternion(name, value)
end

--- @return System_Void
--- @param id System_Int32
--- @param value UnityEngine_Quaternion
function UnityEngine_Animator:SetQuaternion(id, value)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_Animator:GetComponent(type)
end

--- @return CS_T
function UnityEngine_Animator:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_Animator:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Animator:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Animator:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_Animator:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_Animator:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Animator:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Animator:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Animator:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_Animator:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_Animator:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Animator:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_Animator:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_Animator:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_Animator:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_Animator:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_Animator:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Animator:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_Animator:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_Animator:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_Animator:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_Animator:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_Animator:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_Animator:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animator:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Animator:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Animator:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animator:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_Animator:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Animator:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animator:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animator:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animator:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_Animator:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_Animator:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_Animator:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_Animator:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Animator:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Animator:Equals(other)
end

--- @return System_String
function UnityEngine_Animator:ToString()
end

--- @return System_Type
function UnityEngine_Animator:GetType()
end
