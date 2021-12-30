--- @class CS_BezierSpline
CS_BezierSpline = Class(CS_BezierSpline)

--- @return void
function CS_BezierSpline:Ctor()
	--- @type System_Boolean
	self.Loop = nil
	--- @type System_Int32
	self.ControlPointCount = nil
	--- @type System_Int32
	self.CurveCount = nil
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

--- @return UnityEngine_Vector3
--- @param index System_Int32
function CS_BezierSpline:GetControlPoint(index)
end

--- @return System_Void
--- @param index System_Int32
--- @param point UnityEngine_Vector3
function CS_BezierSpline:SetControlPoint(index, point)
end

--- @return CS_BezierControlPointMode
--- @param index System_Int32
function CS_BezierSpline:GetControlPointMode(index)
end

--- @return System_Void
--- @param index System_Int32
--- @param mode CS_BezierControlPointMode
function CS_BezierSpline:SetControlPointMode(index, mode)
end

--- @return UnityEngine_Vector3
--- @param t System_Single
function CS_BezierSpline:GetPoint(t)
end

--- @return UnityEngine_Vector3
--- @param t System_Single
function CS_BezierSpline:GetVelocity(t)
end

--- @return UnityEngine_Vector3
--- @param t System_Single
function CS_BezierSpline:GetDirection(t)
end

--- @return System_Void
function CS_BezierSpline:AddCurve()
end

--- @return System_Void
function CS_BezierSpline:Reset()
end

--- @return System_Void
--- @param target UnityEngine_Transform
--- @param fromPos UnityEngine_Vector3
--- @param toPos UnityEngine_Vector3
--- @param duration System_Single
--- @param onComplete System_Action
--- @param heightMultiplier System_Single
function CS_BezierSpline:DoBounceTarget(target, fromPos, toPos, duration, onComplete, heightMultiplier)
end

--- @return System_Void
function CS_BezierSpline:StopBounceTweener()
end

--- @return System_Void
--- @param pointIndex System_Int32
--- @param pointPosition UnityEngine_Vector3
function CS_BezierSpline:SetPointPosition(pointIndex, pointPosition)
end

--- @return System_Boolean
function CS_BezierSpline:IsInvoking()
end

--- @return System_Void
function CS_BezierSpline:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_BezierSpline:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_BezierSpline:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function CS_BezierSpline:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_BezierSpline:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_BezierSpline:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_BezierSpline:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_BezierSpline:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_BezierSpline:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_BezierSpline:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function CS_BezierSpline:StopCoroutine(methodName)
end

--- @return System_Void
function CS_BezierSpline:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_BezierSpline:GetComponent(type)
end

--- @return CS_T
function CS_BezierSpline:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_BezierSpline:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_BezierSpline:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_BezierSpline:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_BezierSpline:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function CS_BezierSpline:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_BezierSpline:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_BezierSpline:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_BezierSpline:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_BezierSpline:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_BezierSpline:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_BezierSpline:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_BezierSpline:GetComponentInParent(t)
end

--- @return CS_T
function CS_BezierSpline:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_BezierSpline:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_BezierSpline:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_BezierSpline:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_BezierSpline:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_BezierSpline:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_BezierSpline:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_BezierSpline:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_BezierSpline:GetComponents(results)
end

--- @return CS_T[]
function CS_BezierSpline:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_BezierSpline:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_BezierSpline:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_BezierSpline:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_BezierSpline:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_BezierSpline:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_BezierSpline:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_BezierSpline:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_BezierSpline:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_BezierSpline:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_BezierSpline:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_BezierSpline:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_BezierSpline:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_BezierSpline:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function CS_BezierSpline:GetInstanceID()
end

--- @return System_Int32
function CS_BezierSpline:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_BezierSpline:Equals(other)
end

--- @return System_String
function CS_BezierSpline:ToString()
end

--- @return System_Type
function CS_BezierSpline:GetType()
end
