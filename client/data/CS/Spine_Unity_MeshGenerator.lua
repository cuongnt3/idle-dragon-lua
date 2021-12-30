--- @class Spine_Unity_MeshGenerator
Spine_Unity_MeshGenerator = Class(Spine_Unity_MeshGenerator)

--- @return void
function Spine_Unity_MeshGenerator:Ctor()
	--- @type System_Int32
	self.VertexCount = nil
	--- @type Spine_Unity_MeshGeneratorBuffers
	self.Buffers = nil
	--- @type Spine_Unity_MeshGenerator_Settings
	self.settings = nil
end

--- @return System_Void
--- @param instructionOutput Spine_Unity_SkeletonRendererInstruction
--- @param skeleton Spine_Skeleton
--- @param material UnityEngine_Material
function Spine_Unity_MeshGenerator:GenerateSingleSubmeshInstruction(instructionOutput, skeleton, material)
end

--- @return System_Void
--- @param instructionOutput Spine_Unity_SkeletonRendererInstruction
--- @param skeleton Spine_Skeleton
--- @param customSlotMaterials System_Collections_Generic_Dictionary`2[Spine_Slot,UnityEngine_Material]
--- @param separatorSlots System_Collections_Generic_List`1[Spine_Slot]
--- @param generateMeshOverride System_Boolean
--- @param immutableTriangles System_Boolean
function Spine_Unity_MeshGenerator:GenerateSkeletonRendererInstruction(instructionOutput, skeleton, customSlotMaterials, separatorSlots, generateMeshOverride, immutableTriangles)
end

--- @return System_Void
--- @param workingSubmeshInstructions Spine_ExposedList`1[Spine_Unity_SubmeshInstruction]
--- @param customMaterialOverride System_Collections_Generic_Dictionary`2[UnityEngine_Material,UnityEngine_Material]
function Spine_Unity_MeshGenerator:TryReplaceMaterials(workingSubmeshInstructions, customMaterialOverride)
end

--- @return System_Void
function Spine_Unity_MeshGenerator:Begin()
end

--- @return System_Void
--- @param instruction Spine_Unity_SubmeshInstruction
--- @param updateTriangles System_Boolean
function Spine_Unity_MeshGenerator:AddSubmesh(instruction, updateTriangles)
end

--- @return System_Void
--- @param instruction Spine_Unity_SkeletonRendererInstruction
--- @param updateTriangles System_Boolean
function Spine_Unity_MeshGenerator:BuildMesh(instruction, updateTriangles)
end

--- @return System_Void
--- @param instruction Spine_Unity_SkeletonRendererInstruction
--- @param updateTriangles System_Boolean
function Spine_Unity_MeshGenerator:BuildMeshWithArrays(instruction, updateTriangles)
end

--- @return System_Void
--- @param scale System_Single
function Spine_Unity_MeshGenerator:ScaleVertexData(scale)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
function Spine_Unity_MeshGenerator:FillVertexData(mesh)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
function Spine_Unity_MeshGenerator:FillLateVertexData(mesh)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
function Spine_Unity_MeshGenerator:FillTriangles(mesh)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
function Spine_Unity_MeshGenerator:FillTrianglesSingle(mesh)
end

--- @return System_Void
function Spine_Unity_MeshGenerator:TrimExcess()
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
--- @param regionAttachment Spine_RegionAttachment
function Spine_Unity_MeshGenerator:FillMeshLocal(mesh, regionAttachment)
end

--- @return System_Void
--- @param mesh UnityEngine_Mesh
--- @param meshAttachment Spine_MeshAttachment
--- @param skeletonData Spine_SkeletonData
function Spine_Unity_MeshGenerator:FillMeshLocal(mesh, meshAttachment, skeletonData)
end

--- @return System_Boolean
--- @param obj System_Object
function Spine_Unity_MeshGenerator:Equals(obj)
end

--- @return System_Int32
function Spine_Unity_MeshGenerator:GetHashCode()
end

--- @return System_Type
function Spine_Unity_MeshGenerator:GetType()
end

--- @return System_String
function Spine_Unity_MeshGenerator:ToString()
end
