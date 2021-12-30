--- @class UnityEngine_MaterialPropertyBlock
UnityEngine_MaterialPropertyBlock = Class(UnityEngine_MaterialPropertyBlock)

--- @return void
function UnityEngine_MaterialPropertyBlock:Ctor()
	--- @type System_Boolean
	self.isEmpty = nil
end

--- @return System_Void
--- @param name System_String
--- @param value System_Single
function UnityEngine_MaterialPropertyBlock:AddFloat(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value System_Single
function UnityEngine_MaterialPropertyBlock:AddFloat(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Vector4
function UnityEngine_MaterialPropertyBlock:AddVector(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Vector4
function UnityEngine_MaterialPropertyBlock:AddVector(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Color
function UnityEngine_MaterialPropertyBlock:AddColor(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Color
function UnityEngine_MaterialPropertyBlock:AddColor(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Matrix4x4
function UnityEngine_MaterialPropertyBlock:AddMatrix(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Matrix4x4
function UnityEngine_MaterialPropertyBlock:AddMatrix(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Texture
function UnityEngine_MaterialPropertyBlock:AddTexture(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Texture
function UnityEngine_MaterialPropertyBlock:AddTexture(nameID, value)
end

--- @return System_Void
function UnityEngine_MaterialPropertyBlock:Clear()
end

--- @return System_Void
--- @param name System_String
--- @param value System_Single
function UnityEngine_MaterialPropertyBlock:SetFloat(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value System_Single
function UnityEngine_MaterialPropertyBlock:SetFloat(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value System_Int32
function UnityEngine_MaterialPropertyBlock:SetInt(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value System_Int32
function UnityEngine_MaterialPropertyBlock:SetInt(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Vector4
function UnityEngine_MaterialPropertyBlock:SetVector(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Vector4
function UnityEngine_MaterialPropertyBlock:SetVector(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Color
function UnityEngine_MaterialPropertyBlock:SetColor(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Color
function UnityEngine_MaterialPropertyBlock:SetColor(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Matrix4x4
function UnityEngine_MaterialPropertyBlock:SetMatrix(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Matrix4x4
function UnityEngine_MaterialPropertyBlock:SetMatrix(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_ComputeBuffer
function UnityEngine_MaterialPropertyBlock:SetBuffer(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_ComputeBuffer
function UnityEngine_MaterialPropertyBlock:SetBuffer(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param value UnityEngine_Texture
function UnityEngine_MaterialPropertyBlock:SetTexture(name, value)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param value UnityEngine_Texture
function UnityEngine_MaterialPropertyBlock:SetTexture(nameID, value)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_MaterialPropertyBlock:SetFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_MaterialPropertyBlock:SetFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Single[]
function UnityEngine_MaterialPropertyBlock:SetFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Single[]
function UnityEngine_MaterialPropertyBlock:SetFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_MaterialPropertyBlock:SetVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_MaterialPropertyBlock:SetVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values UnityEngine_Vector4[]
function UnityEngine_MaterialPropertyBlock:SetVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values UnityEngine_Vector4[]
function UnityEngine_MaterialPropertyBlock:SetVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_MaterialPropertyBlock:SetMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_MaterialPropertyBlock:SetMatrixArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values UnityEngine_Matrix4x4[]
function UnityEngine_MaterialPropertyBlock:SetMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values UnityEngine_Matrix4x4[]
function UnityEngine_MaterialPropertyBlock:SetMatrixArray(nameID, values)
end

--- @return System_Single
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetFloat(name)
end

--- @return System_Single
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetFloat(nameID)
end

--- @return System_Int32
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetInt(name)
end

--- @return System_Int32
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetInt(nameID)
end

--- @return UnityEngine_Vector4
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetVector(name)
end

--- @return UnityEngine_Vector4
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetVector(nameID)
end

--- @return UnityEngine_Color
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetColor(name)
end

--- @return UnityEngine_Color
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetColor(nameID)
end

--- @return UnityEngine_Matrix4x4
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetMatrix(name)
end

--- @return UnityEngine_Matrix4x4
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetMatrix(nameID)
end

--- @return UnityEngine_Texture
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetTexture(name)
end

--- @return UnityEngine_Texture
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetTexture(nameID)
end

--- @return System_Single[]
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetFloatArray(name)
end

--- @return System_Single[]
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetFloatArray(nameID)
end

--- @return UnityEngine_Vector4[]
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetVectorArray(name)
end

--- @return UnityEngine_Vector4[]
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetVectorArray(nameID)
end

--- @return UnityEngine_Matrix4x4[]
--- @param name System_String
function UnityEngine_MaterialPropertyBlock:GetMatrixArray(name)
end

--- @return UnityEngine_Matrix4x4[]
--- @param nameID System_Int32
function UnityEngine_MaterialPropertyBlock:GetMatrixArray(nameID)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_MaterialPropertyBlock:GetFloatArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[System_Single]
function UnityEngine_MaterialPropertyBlock:GetFloatArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_MaterialPropertyBlock:GetVectorArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_MaterialPropertyBlock:GetVectorArray(nameID, values)
end

--- @return System_Void
--- @param name System_String
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_MaterialPropertyBlock:GetMatrixArray(name, values)
end

--- @return System_Void
--- @param nameID System_Int32
--- @param values System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_MaterialPropertyBlock:GetMatrixArray(nameID, values)
end

--- @return System_Void
--- @param lightProbes System_Collections_Generic_List`1[UnityEngine_Rendering_SphericalHarmonicsL2]
function UnityEngine_MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes)
end

--- @return System_Void
--- @param lightProbes UnityEngine_Rendering_SphericalHarmonicsL2[]
function UnityEngine_MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes)
end

--- @return System_Void
--- @param lightProbes System_Collections_Generic_List`1[UnityEngine_Rendering_SphericalHarmonicsL2]
--- @param sourceStart System_Int32
--- @param destStart System_Int32
--- @param count System_Int32
function UnityEngine_MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes, sourceStart, destStart, count)
end

--- @return System_Void
--- @param lightProbes UnityEngine_Rendering_SphericalHarmonicsL2[]
--- @param sourceStart System_Int32
--- @param destStart System_Int32
--- @param count System_Int32
function UnityEngine_MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes, sourceStart, destStart, count)
end

--- @return System_Void
--- @param occlusionProbes System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes)
end

--- @return System_Void
--- @param occlusionProbes UnityEngine_Vector4[]
function UnityEngine_MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes)
end

--- @return System_Void
--- @param occlusionProbes System_Collections_Generic_List`1[UnityEngine_Vector4]
--- @param sourceStart System_Int32
--- @param destStart System_Int32
--- @param count System_Int32
function UnityEngine_MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes, sourceStart, destStart, count)
end

--- @return System_Void
--- @param occlusionProbes UnityEngine_Vector4[]
--- @param sourceStart System_Int32
--- @param destStart System_Int32
--- @param count System_Int32
function UnityEngine_MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes, sourceStart, destStart, count)
end

--- @return System_Boolean
--- @param obj System_Object
function UnityEngine_MaterialPropertyBlock:Equals(obj)
end

--- @return System_Int32
function UnityEngine_MaterialPropertyBlock:GetHashCode()
end

--- @return System_Type
function UnityEngine_MaterialPropertyBlock:GetType()
end

--- @return System_String
function UnityEngine_MaterialPropertyBlock:ToString()
end
