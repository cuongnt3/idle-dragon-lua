--- @class Spine_Unity_SkeletonAnimation
Spine_Unity_SkeletonAnimation = Class(Spine_Unity_SkeletonAnimation)

--- @return void
function Spine_Unity_SkeletonAnimation:Ctor()
	--- @type Spine_AnimationState
	self.AnimationState = nil
	--- @type System_String
	self.AnimationName = nil
	--- @type Spine_Unity_SkeletonDataAsset
	self.SkeletonDataAsset = nil
	--- @type System_Collections_Generic_Dictionary`2[UnityEngine_Material,UnityEngine_Material]
	self.CustomMaterialOverride = nil
	--- @type System_Collections_Generic_Dictionary`2[Spine_Slot,UnityEngine_Material]
	self.CustomSlotMaterials = nil
	--- @type Spine_Skeleton
	self.Skeleton = nil
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
	--- @type Spine_AnimationState
	self.state = nil
	--- @type System_Boolean
	self.loop = nil
	--- @type System_Single
	self.timeScale = nil
	--- @type Spine_Unity_SkeletonDataAsset
	self.skeletonDataAsset = nil
	--- @type System_String
	self.initialSkinName = nil
	--- @type System_Boolean
	self.initialFlipX = nil
	--- @type System_Boolean
	self.initialFlipY = nil
	--- @type System_String[]
	self.separatorSlotNames = nil
	--- @type System_Collections_Generic_List`1[Spine_Slot]
	self.separatorSlots = nil
	--- @type System_Single
	self.zSpacing = nil
	--- @type System_Boolean
	self.useClipping = nil
	--- @type System_Boolean
	self.immutableTriangles = nil
	--- @type System_Boolean
	self.pmaVertexColors = nil
	--- @type System_Boolean
	self.clearStateOnDisable = nil
	--- @type System_Boolean
	self.tintBlack = nil
	--- @type System_Boolean
	self.singleSubmesh = nil
	--- @type System_Boolean
	self.addNormals = nil
	--- @type System_Boolean
	self.calculateTangents = nil
	--- @type System_Boolean
	self.logErrors = nil
	--- @type System_Boolean
	self.disableRenderingOnOverride = nil
	--- @type System_Boolean
	self.valid = nil
	--- @type Spine_Skeleton
	self.skeleton = nil
end

--- @return Spine_Unity_SkeletonAnimation
--- @param gameObject UnityEngine_GameObject
--- @param skeletonDataAsset Spine_Unity_SkeletonDataAsset
function Spine_Unity_SkeletonAnimation:AddToGameObject(gameObject, skeletonDataAsset)
end

--- @return Spine_Unity_SkeletonAnimation
--- @param skeletonDataAsset Spine_Unity_SkeletonDataAsset
function Spine_Unity_SkeletonAnimation:NewSkeletonAnimationGameObject(skeletonDataAsset)
end

--- @return System_Void
function Spine_Unity_SkeletonAnimation:ClearState()
end

--- @return System_Void
--- @param overwrite System_Boolean
function Spine_Unity_SkeletonAnimation:Initialize(overwrite)
end

--- @return System_Void
--- @param deltaTime System_Single
function Spine_Unity_SkeletonAnimation:Update(deltaTime)
end

--- @return System_Void
--- @param settings Spine_Unity_MeshGenerator_Settings
function Spine_Unity_SkeletonAnimation:SetMeshSettings(settings)
end

--- @return System_Void
function Spine_Unity_SkeletonAnimation:Awake()
end

--- @return System_Void
function Spine_Unity_SkeletonAnimation:LateUpdate()
end

--- @return System_Boolean
function Spine_Unity_SkeletonAnimation:IsInvoking()
end

--- @return System_Void
function Spine_Unity_SkeletonAnimation:CancelInvoke()
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
function Spine_Unity_SkeletonAnimation:Invoke(methodName, time)
end

--- @return System_Void
--- @param methodName System_String
--- @param time System_Single
--- @param repeatRate System_Single
function Spine_Unity_SkeletonAnimation:InvokeRepeating(methodName, time, repeatRate)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonAnimation:CancelInvoke(methodName)
end

--- @return System_Boolean
--- @param methodName System_String
function Spine_Unity_SkeletonAnimation:IsInvoking(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
function Spine_Unity_SkeletonAnimation:StartCoroutine(methodName)
end

--- @return UnityEngine_Coroutine
--- @param methodName System_String
--- @param value System_Object
function Spine_Unity_SkeletonAnimation:StartCoroutine(methodName, value)
end

--- @return UnityEngine_Coroutine
--- @param routine System_Collections_IEnumerator
function Spine_Unity_SkeletonAnimation:StartCoroutine(routine)
end

--- @return System_Void
--- @param routine System_Collections_IEnumerator
function Spine_Unity_SkeletonAnimation:StopCoroutine(routine)
end

--- @return System_Void
--- @param routine UnityEngine_Coroutine
function Spine_Unity_SkeletonAnimation:StopCoroutine(routine)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonAnimation:StopCoroutine(methodName)
end

--- @return System_Void
function Spine_Unity_SkeletonAnimation:StopAllCoroutines()
end

--- @return UnityEngine_Component
--- @param type System_Type
function Spine_Unity_SkeletonAnimation:GetComponent(type)
end

--- @return CS_T
function Spine_Unity_SkeletonAnimation:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function Spine_Unity_SkeletonAnimation:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonAnimation:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function Spine_Unity_SkeletonAnimation:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonAnimation:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function Spine_Unity_SkeletonAnimation:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonAnimation:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function Spine_Unity_SkeletonAnimation:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonAnimation:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonAnimation:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function Spine_Unity_SkeletonAnimation:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonAnimation:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function Spine_Unity_SkeletonAnimation:GetComponentInParent(t)
end

--- @return CS_T
function Spine_Unity_SkeletonAnimation:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonAnimation:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function Spine_Unity_SkeletonAnimation:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function Spine_Unity_SkeletonAnimation:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonAnimation:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function Spine_Unity_SkeletonAnimation:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function Spine_Unity_SkeletonAnimation:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function Spine_Unity_SkeletonAnimation:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function Spine_Unity_SkeletonAnimation:GetComponents(results)
end

--- @return CS_T[]
function Spine_Unity_SkeletonAnimation:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function Spine_Unity_SkeletonAnimation:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonAnimation:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function Spine_Unity_SkeletonAnimation:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonAnimation:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonAnimation:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function Spine_Unity_SkeletonAnimation:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonAnimation:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonAnimation:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonAnimation:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonAnimation:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function Spine_Unity_SkeletonAnimation:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function Spine_Unity_SkeletonAnimation:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function Spine_Unity_SkeletonAnimation:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function Spine_Unity_SkeletonAnimation:GetInstanceID()
end

--- @return System_Int32
function Spine_Unity_SkeletonAnimation:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function Spine_Unity_SkeletonAnimation:Equals(other)
end

--- @return System_String
function Spine_Unity_SkeletonAnimation:ToString()
end

--- @return System_Type
function Spine_Unity_SkeletonAnimation:GetType()
end
