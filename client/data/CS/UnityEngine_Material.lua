--- @class UnityEngine_Material
UnityEngine_Material = Class(UnityEngine_Material)

--- @return void
function UnityEngine_Material:Ctor()
	--- @type UnityEngine_Shader
	self.shader = nil
	--- @type UnityEngine_Color
	self.color = nil
	--- @type UnityEngine_Texture
	self.mainTexture = nil
	--- @type UnityEngine_Vector2
	self.mainTextureOffset = nil
	--- @type UnityEngine_Vector2
	self.mainTextureScale = nil
	--- @type System_Int32
	self.renderQueue = nil
	--- @type UnityEngine_MaterialGlobalIlluminationFlags
	self.globalIlluminationFlags = nil
	--- @type System_Boolean
	self.doubleSidedGI = nil
	--- @type System_Boolean
	self.enableInstancing = nil
	--- @type System_Int32
	self.passCount = nil
	--- @type System_String[]
	self.shaderKeywords = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_String[]
function UnityEngine_Material:GetTexturePropertyNames()
end

--- @return System_Int32[]
function UnityEngine_Material:GetTexturePropertyNameIDs()
end

--- @return System_Void
--- @param outNames System_Collections_Generic_List`1[System_String]
function UnityEngine_Material:GetTexturePropertyNames(outNames)
end

--- @return System_Void
--- @param outNames System_Collections_Generic_List`1[System_Int32]
function UnityEngine_Material:GetTexturePropertyNameIDs(outNames)
end

--- @return UnityEngine_Material
--- @param scriptContents System_String
function UnityEngine_Material:Create(scriptContents)
end

--- @return System_Boolean
--- @param nameID System_Int32
function UnityEngine_Material:HasProperty(nameID)
end

--- @return System_Boolean
--- @param name System_String
function UnityEngine_Material:HasProperty(name)
end

--- @return System_Void
--- @param keyword System_String
function UnityEngine_Material:EnableKeyword(keyword)
end

--- @return System_Void
--- @param keyword System_String
function UnityEngine_Material:DisableKeyword(keyword)
end

--- @return System_Boolean
--- @param keyword System_String
function UnityEngine_Material:IsKeywordEnabled(keyword)
end

--- @return System_Void
--- @param passName System_String
--- @param enabled System_Boolean
function UnityEngine_Material:SetShaderPassEnabled(passName, enabled)
end

--- @return System_Boolean
--- @param passName System_String
function UnityEngine_Material:GetShaderPassEnabled(passName)
end

--- @return System_String
--- @param pass System_Int32
function UnityEngine_Material:GetPassName(pass)
end

--- @return System_Int32
--- @param passName System_String
function UnityEngine_Material:FindPass(passName)
end

--- @return System_Void
--- @param tag System_String
--- @param val System_String
function UnityEngine_Material:SetOverrideTag(tag, val)
end

--- @return System_String
--- @param tag System_String
--- @param searchFallbacks System_Boolean
--- @param defaultValue System_String
function UnityEngine_Material:GetTag(tag, searchFallbacks, defaultValue)
end

--- @return System_String
--- @param tag System_String
--- @param searchFallbacks System_Boolean
function UnityEngine_Material:GetTag(tag, searchFallbacks)
end

--- @return System_Void
--- @param start UnityEngine_Material
--- @param end UnityEngine_Material
--- @param t System_Single
--function UnityEngine_Material:Lerp(start, end, t)
--end

--- @return System_Boolean
--- @param pass System_Int32
function UnityEngine_Material:SetPass(pass)
end

--- @return System_Void
--- @param mat UnityEngine_Material
function UnityEngine_Material:CopyPropertiesFromMaterial(mat)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Single
function UnityEngine_Material:SetFloat(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value System_Single
function UnityEngine_Material:SetFloat(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Int32
function UnityEngine_Material:SetInt(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value System_Int32
function UnityEngine_Material:SetInt(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Color
function UnityEngine_Material:SetColor(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Color
function UnityEngine_Material:SetColor(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Vector4
function UnityEngine_Material:SetVector(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Vector4
function UnityEngine_Material:SetVector(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Matrix4x4
function UnityEngine_Material:SetMatrix(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Matrix4x4
function UnityEngine_Material:SetMatrix(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Texture
function UnityEngine_Material:SetTexture(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Texture
function UnityEngine_Material:SetTexture(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_ComputeBuffer
function UnityEngine_Material:SetBuffer(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_ComputeBuffer
function UnityEngine_Material:SetBuffer(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Material:SetFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Material:SetFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Single[]
function UnityEngine_Material:SetFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Single[]
function UnityEngine_Material:SetFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Color]
function UnityEngine_Material:SetColorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Color]
function UnityEngine_Material:SetColorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values UnityEngine_Color[]
function UnityEngine_Material:SetColorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values UnityEngine_Color[]
function UnityEngine_Material:SetColorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Material:SetVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Material:SetVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values UnityEngine_Vector4[]
function UnityEngine_Material:SetVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values UnityEngine_Vector4[]
function UnityEngine_Material:SetVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Material:SetMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Material:SetMatrixArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values UnityEngine_Matrix4x4[]
function UnityEngine_Material:SetMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values UnityEngine_Matrix4x4[]
function UnityEngine_Material:SetMatrixArray(nameID, values)
end

--- @return System_Single
--- @param name System_String
function UnityEngine_Material:GetFloat(name)
end

--- @return System_Single
--- @param nameID System_Int32
function UnityEngine_Material:GetFloat(nameID)
end

--- @return System_Int32
--- @param name System_String
function UnityEngine_Material:GetInt(name)
end

--- @return System_Int32
--- @param nameID System_Int32
function UnityEngine_Material:GetInt(nameID)
end

--- @return UnityEngine_Color
--- @param name System_String
function UnityEngine_Material:GetColor(name)
end

--- @return UnityEngine_Color
--- @param nameID System_Int32
function UnityEngine_Material:GetColor(nameID)
end

--- @return UnityEngine_Vector4
--- @param name System_String
function UnityEngine_Material:GetVector(name)
end

--- @return UnityEngine_Vector4
--- @param nameID System_Int32
function UnityEngine_Material:GetVector(nameID)
end

--- @return UnityEngine_Matrix4x4
--- @param name System_String
function UnityEngine_Material:GetMatrix(name)
end

--- @return UnityEngine_Matrix4x4
--- @param nameID System_Int32
function UnityEngine_Material:GetMatrix(nameID)
end

--- @return UnityEngine_Texture
--- @param name System_String
function UnityEngine_Material:GetTexture(name)
end

--- @return UnityEngine_Texture
--- @param nameID System_Int32
function UnityEngine_Material:GetTexture(nameID)
end

--- @return System_Single[]
--- @param name System_String
function UnityEngine_Material:GetFloatArray(name)
end

--- @return System_Single[]
--- @param nameID System_Int32
function UnityEngine_Material:GetFloatArray(nameID)
end

--- @return UnityEngine_Color[]
--- @param name System_String
function UnityEngine_Material:GetColorArray(name)
end

--- @return UnityEngine_Color[]
--- @param nameID System_Int32
function UnityEngine_Material:GetColorArray(nameID)
end

--- @return UnityEngine_Vector4[]
--- @param name System_String
function UnityEngine_Material:GetVectorArray(name)
end

--- @return UnityEngine_Vector4[]
--- @param nameID System_Int32
function UnityEngine_Material:GetVectorArray(nameID)
end

--- @return UnityEngine_Matrix4x4[]
--- @param name System_String
function UnityEngine_Material:GetMatrixArray(name)
end

--- @return UnityEngine_Matrix4x4[]
--- @param nameID System_Int32
function UnityEngine_Material:GetMatrixArray(nameID)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Material:GetFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_Material:GetFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Color]
function UnityEngine_Material:GetColorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Color]
function UnityEngine_Material:GetColorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Material:GetVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Material:GetVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Material:GetMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Material:GetMatrixArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Vector2
function UnityEngine_Material:SetTextureOffset(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Vector2
function UnityEngine_Material:SetTextureOffset(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Vector2
function UnityEngine_Material:SetTextureScale(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Vector2
function UnityEngine_Material:SetTextureScale(nameID, value)
end

--- @return UnityEngine_Vector2
--- @param name System_String
function UnityEngine_Material:GetTextureOffset(name)
end

--- @return UnityEngine_Vector2
--- @param nameID System_Int32
function UnityEngine_Material:GetTextureOffset(nameID)
end

--- @return UnityEngine_Vector2
--- @param name System_String
function UnityEngine_Material:GetTextureScale(name)
end

--- @return UnityEngine_Vector2
--- @param nameID System_Int32
function UnityEngine_Material:GetTextureScale(nameID)
end

--- @return System_Int32
function UnityEngine_Material:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Material:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Material:Equals(other)
end

--- @return System_String
function UnityEngine_Material:ToString()
end

--- @return System_Type
function UnityEngine_Material:GetType()
end
