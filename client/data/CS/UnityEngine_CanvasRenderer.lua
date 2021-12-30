--- @class UnityEngine_CanvasRenderer
UnityEngine_CanvasRenderer = Class(UnityEngine_CanvasRenderer)

--- @return void
function UnityEngine_CanvasRenderer:Ctor()
	--- @type System_Boolean
	self.hasPopInstruction = nil
	--- @type System_Int32
	self.materialCount = nil
	--- @type System_Int32
	self.popMaterialCount = nil
	--- @type System_Int32
	self.absoluteDepth = nil
	--- @type System_Boolean
	self.hasMoved = nil
	--- @type System_Boolean
	self.cullTransparentMesh = nil
	--- @type System_Boolean
	self.hasRectClipping = nil
	--- @type System_Int32
	self.relativeDepth = nil
	--- @type System_Boolean
	self.cull = nil
	--- @type System_Boolean
	self.isMask = nil
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
--- @param color UnityEngine_Color
function UnityEngine_CanvasRenderer:SetColor(color)
end

--- @return UnityEngine_Color
function UnityEngine_CanvasRenderer:GetColor()
end

--- @return System_Void
--- @param rect UnityEngine_Rect
function UnityEngine_CanvasRenderer:EnableRectClipping(rect)
end

--- @return System_Void
function UnityEngine_CanvasRenderer:DisableRectClipping()
end

--- @return System_Void
--- @param material UnityEngine_Material
--- @param index System_Int32
function UnityEngine_CanvasRenderer:SetMaterial(material, index)
end

--- @return UnityEngine_Material
--- @param index System_Int32
function UnityEngine_CanvasRenderer:GetMaterial(index)
end

--- @return System_Void
--- @param material UnityEngine_Material
--- @param index System_Int32
function UnityEngine_CanvasRenderer:SetPopMaterial(material, index)
end

--- @return UnityEngine_Material
--- @param index System_Int32
function UnityEngine_CanvasRenderer:GetPopMaterial(index)
end

--- @return System_Void
--- @param texture UnityEngine_Texture
function UnityEngine_CanvasRenderer:SetTexture(texture)
end

--- @return System_Void
--- @param texture UnityEngine_Texture
function UnityEngine_CanvasRenderer:SetAlphaTexture(texture)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
function UnityEngine_CanvasRenderer:SetMesh(mesh)
end

--- @return System_Void
function UnityEngine_CanvasRenderer:Clear()
end

--- @return System_Single
function UnityEngine_CanvasRenderer:GetAlpha()
end

--- @return System_Void
--- @param alpha System_Single
function UnityEngine_CanvasRenderer:SetAlpha(alpha)
end

--- @return System_Void
--- @param material UnityEngine_Material
--- @param texture UnityEngine_Texture
function UnityEngine_CanvasRenderer:SetMaterial(material, texture)
end

--- @return UnityEngine_Material
function UnityEngine_CanvasRenderer:GetMaterial()
end

--- @return System_Void
--- @param verts System_Collections_Generic_List`1[UnityEngine_UIVertex]
--- @param positions System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color32]
--- @param uv0S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv1S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param normals System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param tangents System_Collections_Generic_List`1[UnityEngine_Vector4]
--- @param indices System_Collections_Generic_List`1[System_Int32]
function UnityEngine_CanvasRenderer:SplitUIVertexStreams(verts, positions, colors, uv0S, uv1S, normals, tangents, indices)
end

--- @return System_Void
--- @param verts System_Collections_Generic_List`1[UnityEngine_UIVertex]
--- @param positions System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color32]
--- @param uv0S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv1S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv2S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv3S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param normals System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param tangents System_Collections_Generic_List`1[UnityEngine_Vector4]
--- @param indices System_Collections_Generic_List`1[System_Int32]
function UnityEngine_CanvasRenderer:SplitUIVertexStreams(verts, positions, colors, uv0S, uv1S, uv2S, uv3S, normals, tangents, indices)
end

--- @return System_Void
--- @param verts System_Collections_Generic_List`1[UnityEngine_UIVertex]
--- @param positions System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color32]
--- @param uv0S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv1S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param normals System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param tangents System_Collections_Generic_List`1[UnityEngine_Vector4]
--- @param indices System_Collections_Generic_List`1[System_Int32]
function UnityEngine_CanvasRenderer:CreateUIVertexStream(verts, positions, colors, uv0S, uv1S, normals, tangents, indices)
end

--- @return System_Void
--- @param verts System_Collections_Generic_List`1[UnityEngine_UIVertex]
--- @param positions System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color32]
--- @param uv0S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv1S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv2S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv3S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param normals System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param tangents System_Collections_Generic_List`1[UnityEngine_Vector4]
--- @param indices System_Collections_Generic_List`1[System_Int32]
function UnityEngine_CanvasRenderer:CreateUIVertexStream(verts, positions, colors, uv0S, uv1S, uv2S, uv3S, normals, tangents, indices)
end

--- @return System_Void
--- @param verts System_Collections_Generic_List`1[UnityEngine_UIVertex]
--- @param positions System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color32]
--- @param uv0S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv1S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param normals System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param tangents System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_CanvasRenderer:AddUIVertexStream(verts, positions, colors, uv0S, uv1S, normals, tangents)
end

--- @return System_Void
--- @param verts System_Collections_Generic_List`1[UnityEngine_UIVertex]
--- @param positions System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color32]
--- @param uv0S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv1S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv2S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param uv3S System_Collections_Generic_List`1[UnityEngine_Vector2]
--- @param normals System_Collections_Generic_List`1[UnityEngine_Vector3]
--- @param tangents System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_CanvasRenderer:AddUIVertexStream(verts, positions, colors, uv0S, uv1S, uv2S, uv3S, normals, tangents)
end

--- @return System_Void
--- @param vertices System_Collections_Generic_List`1[UnityEngine_UIVertex]
function UnityEngine_CanvasRenderer:SetVertices(vertices)
end

--- @return System_Void
--- @param vertices UnityEngine_UIVertex[]
--- @param size System_Int32
function UnityEngine_CanvasRenderer:SetVertices(vertices, size)
end

--- @return UnityEngine_Component
--- @param type System_Type
function UnityEngine_CanvasRenderer:GetComponent(type)
end

--- @return CS_T
function UnityEngine_CanvasRenderer:GetComponent()
end

--- @return UnityEngine_Component
--- @param type System_String
function UnityEngine_CanvasRenderer:GetComponent(type)
end

--- @return UnityEngine_Component
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_CanvasRenderer:GetComponentInChildren(t, includeInactive)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_CanvasRenderer:GetComponentInChildren(t)
end

--- @return CS_T
--- @param includeInactive System_Boolean
function UnityEngine_CanvasRenderer:GetComponentInChildren(includeInactive)
end

--- @return CS_T
function UnityEngine_CanvasRenderer:GetComponentInChildren()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_CanvasRenderer:GetComponentsInChildren(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_CanvasRenderer:GetComponentsInChildren(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_CanvasRenderer:GetComponentsInChildren(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param result System_Collections_Generic_List`1[T]
function UnityEngine_CanvasRenderer:GetComponentsInChildren(includeInactive, result)
end

--- @return CS_T[]
function UnityEngine_CanvasRenderer:GetComponentsInChildren()
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_CanvasRenderer:GetComponentsInChildren(results)
end

--- @return UnityEngine_Component
--- @param t System_Type
function UnityEngine_CanvasRenderer:GetComponentInParent(t)
end

--- @return CS_T
function UnityEngine_CanvasRenderer:GetComponentInParent()
end

--- @return UnityEngine_Component[]
--- @param t System_Type
--- @param includeInactive System_Boolean
function UnityEngine_CanvasRenderer:GetComponentsInParent(t, includeInactive)
end

--- @return UnityEngine_Component[]
--- @param t System_Type
function UnityEngine_CanvasRenderer:GetComponentsInParent(t)
end

--- @return CS_T[]
--- @param includeInactive System_Boolean
function UnityEngine_CanvasRenderer:GetComponentsInParent(includeInactive)
end

--- @return System_Void
--- @param includeInactive System_Boolean
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_CanvasRenderer:GetComponentsInParent(includeInactive, results)
end

--- @return CS_T[]
function UnityEngine_CanvasRenderer:GetComponentsInParent()
end

--- @return UnityEngine_Component[]
--- @param type System_Type
function UnityEngine_CanvasRenderer:GetComponents(type)
end

--- @return System_Void
--- @param type System_Type
--- @param results System_Collections_Generic_List`1[UnityEngine_Component]
function UnityEngine_CanvasRenderer:GetComponents(type, results)
end

--- @return System_Void
--- @param results System_Collections_Generic_List`1[T]
function UnityEngine_CanvasRenderer:GetComponents(results)
end

--- @return CS_T[]
function UnityEngine_CanvasRenderer:GetComponents()
end

--- @return System_Boolean
--- @param tag System_String
function UnityEngine_CanvasRenderer:CompareTag(tag)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasRenderer:SendMessageUpwards(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_CanvasRenderer:SendMessageUpwards(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_CanvasRenderer:SendMessageUpwards(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasRenderer:SendMessageUpwards(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
function UnityEngine_CanvasRenderer:SendMessage(methodName, value)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_CanvasRenderer:SendMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param value System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasRenderer:SendMessage(methodName, value, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasRenderer:SendMessage(methodName, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasRenderer:BroadcastMessage(methodName, parameter, options)
end

--- @return System_Void
--- @param methodName System_String
--- @param parameter System_Object
function UnityEngine_CanvasRenderer:BroadcastMessage(methodName, parameter)
end

--- @return System_Void
--- @param methodName System_String
function UnityEngine_CanvasRenderer:BroadcastMessage(methodName)
end

--- @return System_Void
--- @param methodName System_String
--- @param options UnityEngine_SendMessageOptions
function UnityEngine_CanvasRenderer:BroadcastMessage(methodName, options)
end

--- @return System_Int32
function UnityEngine_CanvasRenderer:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_CanvasRenderer:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_CanvasRenderer:Equals(other)
end

--- @return System_String
function UnityEngine_CanvasRenderer:ToString()
end

--- @return System_Type
function UnityEngine_CanvasRenderer:GetType()
end
