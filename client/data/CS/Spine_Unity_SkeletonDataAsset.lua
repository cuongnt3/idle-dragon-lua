--- @class Spine_Unity_SkeletonDataAsset
Spine_Unity_SkeletonDataAsset = Class(Spine_Unity_SkeletonDataAsset)

--- @return void
function Spine_Unity_SkeletonDataAsset:Ctor()
	--- @type System_Boolean
	self.IsLoaded = nil
	--- @type System_String
	self.name = nil
	--- @type UnityEngine_HideFlags
	self.hideFlags = nil
	--- @type Spine_Unity_AtlasAsset[]
	self.atlasAssets = nil
	--- @type System_Single
	self.scale = nil
	--- @type UnityEngine_TextAsset
	self.skeletonJSON = nil
	--- @type System_String[]
	self.fromAnimation = nil
	--- @type System_String[]
	self.toAnimation = nil
	--- @type System_Single[]
	self.duration = nil
	--- @type System_Single
	self.defaultMix = nil
	--- @type UnityEngine_RuntimeAnimatorController
	self.controller = nil
end

--- @return Spine_Unity_SkeletonDataAsset
--- @param skeletonDataFile UnityEngine_TextAsset
--- @param atlasAsset Spine_Unity_AtlasAsset
--- @param initialize System_Boolean
--- @param scale System_Single
function Spine_Unity_SkeletonDataAsset:CreateRuntimeInstance(skeletonDataFile, atlasAsset, initialize, scale)
end

--- @return Spine_Unity_SkeletonDataAsset
--- @param skeletonDataFile UnityEngine_TextAsset
--- @param atlasAssets Spine_Unity_AtlasAsset[]
--- @param initialize System_Boolean
--- @param scale System_Single
function Spine_Unity_SkeletonDataAsset:CreateRuntimeInstance(skeletonDataFile, atlasAssets, initialize, scale)
end

--- @return System_Void
function Spine_Unity_SkeletonDataAsset:Clear()
end

--- @return Spine_SkeletonData
--- @param quiet System_Boolean
function Spine_Unity_SkeletonDataAsset:GetSkeletonData(quiet)
end

--- @return System_Void
function Spine_Unity_SkeletonDataAsset:FillStateData()
end

--- @return Spine_AnimationStateData
function Spine_Unity_SkeletonDataAsset:GetAnimationStateData()
end

--- @return System_Void
function Spine_Unity_SkeletonDataAsset:SetDirty()
end

--- @return System_Int32
function Spine_Unity_SkeletonDataAsset:GetInstanceID()
end

--- @return System_Int32
function Spine_Unity_SkeletonDataAsset:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function Spine_Unity_SkeletonDataAsset:Equals(other)
end

--- @return System_String
function Spine_Unity_SkeletonDataAsset:ToString()
end

--- @return System_Type
function Spine_Unity_SkeletonDataAsset:GetType()
end
