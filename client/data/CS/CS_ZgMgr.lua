--- @class CS_ZgMgr
CS_ZgMgr = Class(CS_ZgMgr)

--- @return void
function CS_ZgMgr:Ctor()
	--- @type CS_ZgMgr
	self.Ins = nil
	--- @type System_String
	self.UrlLua = nil
	--- @type System_Boolean
	self.IsPVE = nil
	--- @type System_Boolean
	self.IsResetGame = nil
	--- @type System_Boolean
	self.IsTest = nil
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
	--- @type System_Action
	self.onBackPress = nil
	--- @type System_Action
	self.onUpdate = nil
	--- @type System_Action`1[System_Int32]
	self.onPause = nil
	--- @type System_Action
	self.onChangeOrientation = nil
	--- @type System_Action`1[System_String]
	self.onGetAdvertisingId = nil
	--- @type CS_LuaMgr
	self.luaMgr = nil
	--- @type CS_NetworkMgr
	self.networkMgr = nil
	--- @type CS_IAPMgr
	self.iapMgr = nil
	--- @type CS_AssetBundleMgr
	self.assetBundleMgr = nil
	--- @type CS_AppsflyerUtils
	self.appsflyer = nil
	--- @type CS_FirebaseUtils
	self.firebase = nil
	--- @type CS_IronSrcUtils
	self.ironSrc = nil
	--- @type CS_GoogleReviewUtils
	self.googleReviewUtils = nil
end

--- @return System_Void
function CS_ZgMgr:RunGame()
end

--- @return System_Boolean
function CS_ZgMgr:IsInvoking()
end

--- @return System_Void
function CS_ZgMgr:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_ZgMgr:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_ZgMgr:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function CS_ZgMgr:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_ZgMgr:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_ZgMgr:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_ZgMgr:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_ZgMgr:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_ZgMgr:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_ZgMgr:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function CS_ZgMgr:StopCoroutine(methodName)
end

--- @return System_Void
function CS_ZgMgr:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_ZgMgr:GetComponent(type)
end

--- @return CS_T
function CS_ZgMgr:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_ZgMgr:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_ZgMgr:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_ZgMgr:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_ZgMgr:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function CS_ZgMgr:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_ZgMgr:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_ZgMgr:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_ZgMgr:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_ZgMgr:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_ZgMgr:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_ZgMgr:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_ZgMgr:GetComponentInParent(t)
end

--- @return CS_T
function CS_ZgMgr:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_ZgMgr:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_ZgMgr:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_ZgMgr:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_ZgMgr:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_ZgMgr:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_ZgMgr:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_ZgMgr:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_ZgMgr:GetComponents(results)
end

--- @return CS_T[]
function CS_ZgMgr:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_ZgMgr:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_ZgMgr:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_ZgMgr:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_ZgMgr:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_ZgMgr:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_ZgMgr:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_ZgMgr:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_ZgMgr:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_ZgMgr:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_ZgMgr:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_ZgMgr:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_ZgMgr:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_ZgMgr:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function CS_ZgMgr:GetInstanceID()
end

--- @return System_Int32
function CS_ZgMgr:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_ZgMgr:Equals(other)
end

--- @return System_String
function CS_ZgMgr:ToString()
end

--- @return System_Type
function CS_ZgMgr:GetType()
end
