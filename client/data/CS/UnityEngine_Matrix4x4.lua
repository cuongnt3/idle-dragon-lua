--- @class UnityEngine_Matrix4x4
UnityEngine_Matrix4x4 = Class(UnityEngine_Matrix4x4)

--- @return void
function UnityEngine_Matrix4x4:Ctor()
	--- @type UnityEngine_Quaternion
	self.rotation = nil
	--- @type UnityEngine_Vector3
	self.lossyScale = nil
	--- @type System_Boolean
	self.isIdentity = nil
	--- @type System_Single
	self.determinant = nil
	--- @type UnityEngine_FrustumPlanes
	self.decomposeProjection = nil
	--- @type UnityEngine_Matrix4x4
	self.inverse = nil
	--- @type UnityEngine_Matrix4x4
	self.transpose = nil
	--- @type System_Single
	self.Item = nil
	--- @type System_Single
	self.Item = nil
	--- @type UnityEngine_Matrix4x4
	self.zero = nil
	--- @type UnityEngine_Matrix4x4
	self.identity = nil
	--- @type System_Single
	self.m00 = nil
	--- @type System_Single
	self.m10 = nil
	--- @type System_Single
	self.m20 = nil
	--- @type System_Single
	self.m30 = nil
	--- @type System_Single
	self.m01 = nil
	--- @type System_Single
	self.m11 = nil
	--- @type System_Single
	self.m21 = nil
	--- @type System_Single
	self.m31 = nil
	--- @type System_Single
	self.m02 = nil
	--- @type System_Single
	self.m12 = nil
	--- @type System_Single
	self.m22 = nil
	--- @type System_Single
	self.m32 = nil
	--- @type System_Single
	self.m03 = nil
	--- @type System_Single
	self.m13 = nil
	--- @type System_Single
	self.m23 = nil
	--- @type System_Single
	self.m33 = nil
end

--- @return System_Boolean
function UnityEngine_Matrix4x4:ValidTRS()
end

--- @return System_Single
--- @param m UnityEngine_Matrix4x4
function UnityEngine_Matrix4x4:Determinant(m)
end

--- @return UnityEngine_Matrix4x4
--- @param pos UnityEngine_Vector3
--- @param q UnityEngine_Quaternion
--- @param s UnityEngine_Vector3
function UnityEngine_Matrix4x4:TRS(pos, q, s)
end

--- @return System_Void
--- @param pos UnityEngine_Vector3
--- @param q UnityEngine_Quaternion
--- @param s UnityEngine_Vector3
function UnityEngine_Matrix4x4:SetTRS(pos, q, s)
end

--- @return UnityEngine_Matrix4x4
--- @param m UnityEngine_Matrix4x4
function UnityEngine_Matrix4x4:Inverse(m)
end

--- @return UnityEngine_Matrix4x4
--- @param m UnityEngine_Matrix4x4
function UnityEngine_Matrix4x4:Transpose(m)
end

--- @return UnityEngine_Matrix4x4
--- @param left System_Single
--- @param right System_Single
--- @param bottom System_Single
--- @param top System_Single
--- @param zNear System_Single
--- @param zFar System_Single
function UnityEngine_Matrix4x4:Ortho(left, right, bottom, top, zNear, zFar)
end

--- @return UnityEngine_Matrix4x4
--- @param fov System_Single
--- @param aspect System_Single
--- @param zNear System_Single
--- @param zFar System_Single
function UnityEngine_Matrix4x4:Perspective(fov, aspect, zNear, zFar)
end

--- @return UnityEngine_Matrix4x4
--- @param from UnityEngine_Vector3
--- @param to UnityEngine_Vector3
--- @param up UnityEngine_Vector3
function UnityEngine_Matrix4x4:LookAt(from, to, up)
end

--- @return UnityEngine_Matrix4x4
--- @param left System_Single
--- @param right System_Single
--- @param bottom System_Single
--- @param top System_Single
--- @param zNear System_Single
--- @param zFar System_Single
function UnityEngine_Matrix4x4:Frustum(left, right, bottom, top, zNear, zFar)
end

--- @return UnityEngine_Matrix4x4
--- @param fp UnityEngine_FrustumPlanes
function UnityEngine_Matrix4x4:Frustum(fp)
end

--- @return System_Int32
function UnityEngine_Matrix4x4:GetHashCode()
end

--- @return System_Boolean
--- @param other System_Object
function UnityEngine_Matrix4x4:Equals(other)
end

--- @return System_Boolean
--- @param other UnityEngine_Matrix4x4
function UnityEngine_Matrix4x4:Equals(other)
end

--- @return UnityEngine_Vector4
--- @param index System_Int32
function UnityEngine_Matrix4x4:GetColumn(index)
end

--- @return UnityEngine_Vector4
--- @param index System_Int32
function UnityEngine_Matrix4x4:GetRow(index)
end

--- @return System_Void
--- @param index System_Int32
--- @param column UnityEngine_Vector4
function UnityEngine_Matrix4x4:SetColumn(index, column)
end

--- @return System_Void
--- @param index System_Int32
--- @param row UnityEngine_Vector4
function UnityEngine_Matrix4x4:SetRow(index, row)
end

--- @return UnityEngine_Vector3
--- @param point UnityEngine_Vector3
function UnityEngine_Matrix4x4:MultiplyPoint(point)
end

--- @return UnityEngine_Vector3
--- @param point UnityEngine_Vector3
function UnityEngine_Matrix4x4:MultiplyPoint3x4(point)
end

--- @return UnityEngine_Vector3
--- @param vector UnityEngine_Vector3
function UnityEngine_Matrix4x4:MultiplyVector(vector)
end

--- @return UnityEngine_Plane
--- @param plane UnityEngine_Plane
function UnityEngine_Matrix4x4:TransformPlane(plane)
end

--- @return UnityEngine_Matrix4x4
--- @param vector UnityEngine_Vector3
function UnityEngine_Matrix4x4:Scale(vector)
end

--- @return UnityEngine_Matrix4x4
--- @param vector UnityEngine_Vector3
function UnityEngine_Matrix4x4:Translate(vector)
end

--- @return UnityEngine_Matrix4x4
--- @param q UnityEngine_Quaternion
function UnityEngine_Matrix4x4:Rotate(q)
end

--- @return System_String
function UnityEngine_Matrix4x4:ToString()
end

--- @return System_String
--- @param format System_String
function UnityEngine_Matrix4x4:ToString(format)
end

--- @return System_Type
function UnityEngine_Matrix4x4:GetType()
end
