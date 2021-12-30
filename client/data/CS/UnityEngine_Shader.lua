--- @class UnityEngine_Shader
UnityEngine_Shader = Class(UnityEngine_Shader)

--- @return void
function UnityEngine_Shader:Ctor()
	--- @type UnityEngine_Rendering_ShaderHardwareTier
	self.globalShaderHardwareTier = nil
	--- @type System_Int32
	self.maximumLOD = nil
	--- @type System_Int32
	self.globalMaximumLOD = nil
	--- @type System_Boolean
	self.isSupported = nil
	--- @type System_String
	self.globalRenderPipeline = nil
	--- @type System_Int32
	self.renderQueue = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_Void
--- @param propertyName System_String
--- @param mode UnityEngine_TexGenMode
function UnityEngine_Shader:SetGlobalTexGenMode(propertyName, mode)
end

--- @return System_Void
--- @param propertyName System_String
--- @param matrixName System_String
function UnityEngine_Shader:SetGlobalTextureMatrixName(propertyName, matrixName)
end

--- @return UnityEngine_Shader
--- @param name System_String
function UnityEngine_Shader:Find(name)
end

--- @return System_Void
--- @param keyword System_String
function UnityEngine_Shader:EnableKeyword(keyword)
end

--- @return System_Void
--- @param keyword System_String
function UnityEngine_Shader:DisableKeyword(keyword)
end

--- @return System_Boolean
--- @param keyword System_String
function UnityEngine_Shader:IsKeywordEnabled(keyword)
end

--- @return System_Void
function UnityEngine_Shader:WarmupAllShaders()
end

--- @return System_Int32
--- @param name System_String
function UnityEngine_Shader:PropertyToID(name)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Single
function UnityEngine_Shader:SetGlobalFloat(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value System_Single
function UnityEngine_Shader:SetGlobalFloat(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Int32
function UnityEngine_Shader:SetGlobalInt(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value System_Int32
function UnityEngine_Shader:SetGlobalInt(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Vector4
function UnityEngine_Shader:SetGlobalVector(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Vector4
function UnityEngine_Shader:SetGlobalVector(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Color
function UnityEngine_Shader:SetGlobalColor(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Color
function UnityEngine_Shader:SetGlobalColor(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Matrix4x4
function UnityEngine_Shader:SetGlobalMatrix(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Matrix4x4
function UnityEngine_Shader:SetGlobalMatrix(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Texture
function UnityEngine_Shader:SetGlobalTexture(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Texture
function UnityEngine_Shader:SetGlobalTexture(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_ComputeBuffer
function UnityEngine_Shader:SetGlobalBuffer(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_ComputeBuffer
function UnityEngine_Shader:SetGlobalBuffer(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Shader:SetGlobalFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Shader:SetGlobalFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Single[]
function UnityEngine_Shader:SetGlobalFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Single[]
function UnityEngine_Shader:SetGlobalFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Shader:SetGlobalVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Shader:SetGlobalVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values UnityEngine_Vector4[]
function UnityEngine_Shader:SetGlobalVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values UnityEngine_Vector4[]
function UnityEngine_Shader:SetGlobalVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Shader:SetGlobalMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Shader:SetGlobalMatrixArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values UnityEngine_Matrix4x4[]
function UnityEngine_Shader:SetGlobalMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values UnityEngine_Matrix4x4[]
function UnityEngine_Shader:SetGlobalMatrixArray(nameID, values)
end

--- @return System_Single
--- @param name System_String
function UnityEngine_Shader:GetGlobalFloat(name)
end

--- @return System_Single
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalFloat(nameID)
end

--- @return System_Int32
--- @param name System_String
function UnityEngine_Shader:GetGlobalInt(name)
end

--- @return System_Int32
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalInt(nameID)
end

--- @return UnityEngine_Vector4
--- @param name System_String
function UnityEngine_Shader:GetGlobalVector(name)
end

--- @return UnityEngine_Vector4
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalVector(nameID)
end

--- @return UnityEngine_Color
--- @param name System_String
function UnityEngine_Shader:GetGlobalColor(name)
end

--- @return UnityEngine_Color
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalColor(nameID)
end

--- @return UnityEngine_Matrix4x4
--- @param name System_String
function UnityEngine_Shader:GetGlobalMatrix(name)
end

--- @return UnityEngine_Matrix4x4
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalMatrix(nameID)
end

--- @return UnityEngine_Texture
--- @param name System_String
function UnityEngine_Shader:GetGlobalTexture(name)
end

--- @return UnityEngine_Texture
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalTexture(nameID)
end

--- @return System_Single[]
--- @param name System_String
function UnityEngine_Shader:GetGlobalFloatArray(name)
end

--- @return System_Single[]
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalFloatArray(nameID)
end

--- @return UnityEngine_Vector4[]
--- @param name System_String
function UnityEngine_Shader:GetGlobalVectorArray(name)
end

--- @return UnityEngine_Vector4[]
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalVectorArray(nameID)
end

--- @return UnityEngine_Matrix4x4[]
--- @param name System_String
function UnityEngine_Shader:GetGlobalMatrixArray(name)
end

--- @return UnityEngine_Matrix4x4[]
--- @param nameID System_Int32
function UnityEngine_Shader:GetGlobalMatrixArray(nameID)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Shader:GetGlobalFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Shader:GetGlobalFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Shader:GetGlobalVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Shader:GetGlobalVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Shader:GetGlobalMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Shader:GetGlobalMatrixArray(nameID, values)
end

--- @return System_Int32
function UnityEngine_Shader:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Shader:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Shader:Equals(other)
end

--- @return System_String
function UnityEngine_Shader:ToString()
end

--- @return System_Type
function UnityEngine_Shader:GetType()
end
