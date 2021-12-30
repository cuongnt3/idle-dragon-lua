--- @class CS_IAPListener
CS_IAPListener = Class(CS_IAPListener)

--- @return void
function CS_IAPListener:Ctor()
	--- @type CS_IAPListener
	self.Instance = nil
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
--- @param controller UnityEngine_Purchasing_IStoreController
--- @param extensions UnityEngine_Purchasing_IExtensionProvider
function CS_IAPListener:OnInitialized(controller, extensions)
end

--- @return UnityEngine_Purchasing_PurchaseProcessingResult
--- @param e UnityEngine_Purchasing_PurchaseEventArgs
function CS_IAPListener:ProcessPurchase(e)
end

--- @return System_Void
--- @param item UnityEngine_Purchasing_Product
--- @param r UnityEngine_Purchasing_PurchaseFailureReason
function CS_IAPListener:OnPurchaseFailed(item, r)
end

--- @return System_Void
--- @param error UnityEngine_Purchasing_InitializationFailureReason
function CS_IAPListener:OnInitializeFailed(error)
end

--- @return System_Void
--- @param productId System_String
--- @param _purchaseCallback System_Action`2[UnityEngine_Purchasing_Product,System_String]
function CS_IAPListener:PurchaseProduct(productId, _purchaseCallback)
end

--- @return System_Void
--- @param productID System_String
function CS_IAPListener:PurchaseButtonClick(productID)
end

--- @return System_Void
function CS_IAPListener:RestoreButtonClick()
end

--- @return System_Void
--- @param productID System_String
function CS_IAPListener:ConfirmPendingPurchase(productID)
end

--- @return System_Boolean
function CS_IAPListener:IsInvoking()
end

--- @return System_Void
function CS_IAPListener:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function CS_IAPListener:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function CS_IAPListener:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function CS_IAPListener:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function CS_IAPListener:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function CS_IAPListener:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function CS_IAPListener:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function CS_IAPListener:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function CS_IAPListener:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function CS_IAPListener:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function CS_IAPListener:StopCoroutine(methodName)
end

--- @return System_Void
function CS_IAPListener:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function CS_IAPListener:GetComponent(type)
end

--- @return CS_T
function CS_IAPListener:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function CS_IAPListener:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_IAPListener:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_IAPListener:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function CS_IAPListener:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function CS_IAPListener:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_IAPListener:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_IAPListener:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_IAPListener:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function CS_IAPListener:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function CS_IAPListener:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_IAPListener:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function CS_IAPListener:GetComponentInParent(t)
end

--- @return CS_T
function CS_IAPListener:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function CS_IAPListener:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function CS_IAPListener:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function CS_IAPListener:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function CS_IAPListener:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function CS_IAPListener:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function CS_IAPListener:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function CS_IAPListener:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function CS_IAPListener:GetComponents(results)
end

--- @return CS_T[]
function CS_IAPListener:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function CS_IAPListener:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_IAPListener:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_IAPListener:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_IAPListener:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_IAPListener:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function CS_IAPListener:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function CS_IAPListener:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_IAPListener:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_IAPListener:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function CS_IAPListener:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function CS_IAPListener:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function CS_IAPListener:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function CS_IAPListener:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function CS_IAPListener:GetInstanceID()
end

--- @return System_Int32
function CS_IAPListener:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function CS_IAPListener:Equals(other)
end

--- @return System_String
function CS_IAPListener:ToString()
end

--- @return System_Type
function CS_IAPListener:GetType()
end
