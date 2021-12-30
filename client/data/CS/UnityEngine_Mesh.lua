--- @class UnityEngine_Mesh
UnityEngine_Mesh = Class(UnityEngine_Mesh)

--- @return void
function UnityEngine_Mesh:Ctor()
	--- @type UnityEngine_Vector2[]
	self.uv1 = nil
	--- @type UnityEngine_Rendering_IndexFormat
	self.indexFormat = nil
	--- @type System_Int32
	self.vertexBufferCount = nil
	--- @type System_Int32
	self.blendShapeCount = nil
	--- @type UnityEngine_BoneWeight[]
	self.boneWeights = nil
	--- @type UnityEngine_Matrix4x4[]
	self.bindposes = nil
	--- @type System_Boolean
	self.isReadable = nil
	--- @type System_Int32
	self.vertexCount = nil
	--- @type System_Int32
	self.subMeshCount = nil
	--- @type UnityEngine_Bounds
	self.bounds = nil
	--- @type UnityEngine_Vector3[]
	self.vertices = nil
	--- @type UnityEngine_Vector3[]
	self.normals = nil
	--- @type UnityEngine_Vector4[]
	self.tangents = nil
	--- @type UnityEngine_Vector2[]
	self.uv = nil
	--- @type UnityEngine_Vector2[]
	self.uv2 = nil
	--- @type UnityEngine_Vector2[]
	self.uv3 = nil
	--- @type UnityEngine_Vector2[]
	self.uv4 = nil
	--- @type UnityEngine_Vector2[]
	self.uv5 = nil
	--- @type UnityEngine_Vector2[]
	self.uv6 = nil
	--- @type UnityEngine_Vector2[]
	self.uv7 = nil
	--- @type UnityEngine_Vector2[]
	self.uv8 = nil
	--- @type UnityEngine_Color[]
	self.colors = nil
	--- @type UnityEngine_Color32[]
	self.colors32 = nil
	--- @type System_Int32[]
	self.triangles = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
end

--- @return System_IntPtr
--- @param index System_Int32
function UnityEngine_Mesh:GetNativeVertexBufferPtr(index)
end

--- @return System_IntPtr
function UnityEngine_Mesh:GetNativeIndexBufferPtr()
end

--- @return System_Void
function UnityEngine_Mesh:ClearBlendShapes()
end

--- @return System_String
--- @param shapeIndex System_Int32
function UnityEngine_Mesh:GetBlendShapeName(shapeIndex)
end

--- @return System_Int32
--- @param blendShapeName System_String
function UnityEngine_Mesh:GetBlendShapeIndex(blendShapeName)
end

--- @return System_Int32
--- @param shapeIndex System_Int32
function UnityEngine_Mesh:GetBlendShapeFrameCount(shapeIndex)
end

--- @return System_Single
--- @param shapeIndex System_Int32
--- @param frameIndex System_Int32
function UnityEngine_Mesh:GetBlendShapeFrameWeight(shapeIndex, frameIndex)
end

--- @return System_Void
--- @param shapeIndex System_Int32
--- @param frameIndex System_Int32
--- @param deltaVertices UnityEngine_Vector3[]
--- @param deltaNormals UnityEngine_Vector3[]
--- @param deltaTangents UnityEngine_Vector3[]
function UnityEngine_Mesh:GetBlendShapeFrameVertices(shapeIndex, frameIndex, deltaVertices, deltaNormals, deltaTangents)
end

--- @return System_Void
--- @param shapeName System_String
--- @param frameWeight System_Single
--- @param deltaVertices UnityEngine_Vector3[]
--- @param deltaNormals UnityEngine_Vector3[]
--- @param deltaTangents UnityEngine_Vector3[]
function UnityEngine_Mesh:AddBlendShapeFrame(shapeName, frameWeight, deltaVertices, deltaNormals, deltaTangents)
end

--- @return System_Single
--- @param uvSetIndex System_Int32
function UnityEngine_Mesh:GetUVDistributionMetric(uvSetIndex)
end

--- @return System_Void
--- @param vertices System_Collections_Generic_List`1[UnityEngine_Vector3]
function UnityEngine_Mesh:GetVertices(vertices)
end

--- @return System_Void
--- @param inVertices System_Collections_Generic_List`1[UnityEngine_Vector3]
function UnityEngine_Mesh:SetVertices(inVertices)
end

--- @return System_Void
--- @param normals System_Collections_Generic_List`1[UnityEngine_Vector3]
function UnityEngine_Mesh:GetNormals(normals)
end

--- @return System_Void
--- @param inNormals System_Collections_Generic_List`1[UnityEngine_Vector3]
function UnityEngine_Mesh:SetNormals(inNormals)
end

--- @return System_Void
--- @param tangents System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Mesh:GetTangents(tangents)
end

--- @return System_Void
--- @param inTangents System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Mesh:SetTangents(inTangents)
end

--- @return System_Void
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color]
function UnityEngine_Mesh:GetColors(colors)
end

--- @return System_Void
--- @param inColors System_Collections_Generic_List`1[UnityEngine_Color]
function UnityEngine_Mesh:SetColors(inColors)
end

--- @return System_Void
--- @param colors System_Collections_Generic_List`1[UnityEngine_Color32]
function UnityEngine_Mesh:GetColors(colors)
end

--- @return System_Void
--- @param inColors System_Collections_Generic_List`1[UnityEngine_Color32]
function UnityEngine_Mesh:SetColors(inColors)
end

--- @return System_Void
--- @param channel System_Int32
--- @param uvs System_Collections_Generic_List`1[UnityEngine_Vector2]
function UnityEngine_Mesh:SetUVs(channel, uvs)
end

--- @return System_Void
--- @param channel System_Int32
--- @param uvs System_Collections_Generic_List`1[UnityEngine_Vector3]
function UnityEngine_Mesh:SetUVs(channel, uvs)
end

--- @return System_Void
--- @param channel System_Int32
--- @param uvs System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Mesh:SetUVs(channel, uvs)
end

--- @return System_Void
--- @param channel System_Int32
--- @param uvs System_Collections_Generic_List`1[UnityEngine_Vector2]
function UnityEngine_Mesh:GetUVs(channel, uvs)
end

--- @return System_Void
--- @param channel System_Int32
--- @param uvs System_Collections_Generic_List`1[UnityEngine_Vector3]
function UnityEngine_Mesh:GetUVs(channel, uvs)
end

--- @return System_Void
--- @param channel System_Int32
--- @param uvs System_Collections_Generic_List`1[UnityEngine_Vector4]
function UnityEngine_Mesh:GetUVs(channel, uvs)
end

--- @return System_Int32[]
--- @param submesh System_Int32
function UnityEngine_Mesh:GetTriangles(submesh)
end

--- @return System_Int32[]
--- @param submesh System_Int32
--- @param applyBaseVertex System_Boolean
function UnityEngine_Mesh:GetTriangles(submesh, applyBaseVertex)
end

--- @return System_Void
--- @param triangles System_Collections_Generic_List`1[System_Int32]
--- @param submesh System_Int32
function UnityEngine_Mesh:GetTriangles(triangles, submesh)
end

--- @return System_Void
--- @param triangles System_Collections_Generic_List`1[System_Int32]
--- @param submesh System_Int32
--- @param applyBaseVertex System_Boolean
function UnityEngine_Mesh:GetTriangles(triangles, submesh, applyBaseVertex)
end

--- @return System_Int32[]
--- @param submesh System_Int32
function UnityEngine_Mesh:GetIndices(submesh)
end

--- @return System_Int32[]
--- @param submesh System_Int32
--- @param applyBaseVertex System_Boolean
function UnityEngine_Mesh:GetIndices(submesh, applyBaseVertex)
end

--- @return System_Void
--- @param indices System_Collections_Generic_List`1[System_Int32]
--- @param submesh System_Int32
function UnityEngine_Mesh:GetIndices(indices, submesh)
end

--- @return System_Void
--- @param indices System_Collections_Generic_List`1[System_Int32]
--- @param submesh System_Int32
--- @param applyBaseVertex System_Boolean
function UnityEngine_Mesh:GetIndices(indices, submesh, applyBaseVertex)
end

--- @return System_UInt32
--- @param submesh System_Int32
function UnityEngine_Mesh:GetIndexStart(submesh)
end

--- @return System_UInt32
--- @param submesh System_Int32
function UnityEngine_Mesh:GetIndexCount(submesh)
end

--- @return System_UInt32
--- @param submesh System_Int32
function UnityEngine_Mesh:GetBaseVertex(submesh)
end

--- @return System_Void
--- @param triangles System_Int32[]
--- @param submesh System_Int32
function UnityEngine_Mesh:SetTriangles(triangles, submesh)
end

--- @return System_Void
--- @param triangles System_Int32[]
--- @param submesh System_Int32
--- @param calculateBounds System_Boolean
function UnityEngine_Mesh:SetTriangles(triangles, submesh, calculateBounds)
end

--- @return System_Void
--- @param triangles System_Int32[]
--- @param submesh System_Int32
--- @param calculateBounds System_Boolean
--- @param baseVertex System_Int32
function UnityEngine_Mesh:SetTriangles(triangles, submesh, calculateBounds, baseVertex)
end

--- @return System_Void
--- @param triangles System_Collections_Generic_List`1[System_Int32]
--- @param submesh System_Int32
function UnityEngine_Mesh:SetTriangles(triangles, submesh)
end

--- @return System_Void
--- @param triangles System_Collections_Generic_List`1[System_Int32]
--- @param submesh System_Int32
--- @param calculateBounds System_Boolean
function UnityEngine_Mesh:SetTriangles(triangles, submesh, calculateBounds)
end

--- @return System_Void
--- @param triangles System_Collections_Generic_List`1[System_Int32]
--- @param submesh System_Int32
--- @param calculateBounds System_Boolean
--- @param baseVertex System_Int32
function UnityEngine_Mesh:SetTriangles(triangles, submesh, calculateBounds, baseVertex)
end

--- @return System_Void
--- @param indices System_Int32[]
--- @param topology UnityEngine_MeshTopology
--- @param submesh System_Int32
function UnityEngine_Mesh:SetIndices(indices, topology, submesh)
end

--- @return System_Void
--- @param indices System_Int32[]
--- @param topology UnityEngine_MeshTopology
--- @param submesh System_Int32
--- @param calculateBounds System_Boolean
function UnityEngine_Mesh:SetIndices(indices, topology, submesh, calculateBounds)
end

--- @return System_Void
--- @param indices System_Int32[]
--- @param topology UnityEngine_MeshTopology
--- @param submesh System_Int32
--- @param calculateBounds System_Boolean
--- @param baseVertex System_Int32
function UnityEngine_Mesh:SetIndices(indices, topology, submesh, calculateBounds, baseVertex)
end

--- @return System_Void
--- @param bindposes System_Collections_Generic_List`1[UnityEngine_Matrix4x4]
function UnityEngine_Mesh:GetBindposes(bindposes)
end

--- @return System_Void
--- @param boneWeights System_Collections_Generic_List`1[UnityEngine_BoneWeight]
function UnityEngine_Mesh:GetBoneWeights(boneWeights)
end

--- @return System_Void
--- @param keepVertexLayout System_Boolean
function UnityEngine_Mesh:Clear(keepVertexLayout)
end

--- @return System_Void
function UnityEngine_Mesh:Clear()
end

--- @return System_Void
function UnityEngine_Mesh:RecalculateBounds()
end

--- @return System_Void
function UnityEngine_Mesh:RecalculateNormals()
end

--- @return System_Void
function UnityEngine_Mesh:RecalculateTangents()
end

--- @return System_Void
function UnityEngine_Mesh:MarkDynamic()
end

--- @return System_Void
--- @param markNoLongerReadable System_Boolean
function UnityEngine_Mesh:UploadMeshData(markNoLongerReadable)
end

--- @return UnityEngine_MeshTopology
--- @param submesh System_Int32
function UnityEngine_Mesh:GetTopology(submesh)
end

--- @return System_Void
--- @param combine UnityEngine_CombineInstance[]
--- @param mergeSubMeshes System_Boolean
--- @param useMatrices System_Boolean
--- @param hasLightmapData System_Boolean
function UnityEngine_Mesh:CombineMeshes(combine, mergeSubMeshes, useMatrices, hasLightmapData)
end

--- @return System_Void
--- @param combine UnityEngine_CombineInstance[]
--- @param mergeSubMeshes System_Boolean
--- @param useMatrices System_Boolean
function UnityEngine_Mesh:CombineMeshes(combine, mergeSubMeshes, useMatrices)
end

--- @return System_Void
--- @param combine UnityEngine_CombineInstance[]
--- @param mergeSubMeshes System_Boolean
function UnityEngine_Mesh:CombineMeshes(combine, mergeSubMeshes)
end

--- @return System_Void
--- @param combine UnityEngine_CombineInstance[]
function UnityEngine_Mesh:CombineMeshes(combine)
end

--- @return System_Void
function UnityEngine_Mesh:Optimize()
end

--- @return System_Int32
function UnityEngine_Mesh:GetInstanceID()
end

--- @return System_Int32
function UnityEngine_Mesh:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Mesh:Equals(other)
end

--- @return System_String
function UnityEngine_Mesh:ToString()
end

--- @return System_Type
function UnityEngine_Mesh:GetType()
end
