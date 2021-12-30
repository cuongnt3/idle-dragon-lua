--- @class System_Reflection_Binder
System_Reflection_Binder = Class(System_Reflection_Binder)

--- @return void
function System_Reflection_Binder:Ctor()
end

--- @return System_Reflection_FieldInfo
--- @param bindingAttr System_Reflection_BindingFlags
--- @param match System_Reflection_FieldInfo[]
--- @param value System_Object
--- @param culture System_Globalization_CultureInfo
function System_Reflection_Binder:BindToField(bindingAttr, match, value, culture)
end

--- @return System_Reflection_MethodBase
--- @param bindingAttr System_Reflection_BindingFlags
--- @param match System_Reflection_MethodBase[]
--- @param args System_Object[]&
--- @param modifiers System_Reflection_ParameterModifier[]
--- @param culture System_Globalization_CultureInfo
--- @param names System_String[]
--- @param state System_Object&
function System_Reflection_Binder:BindToMethod(bindingAttr, match, args, modifiers, culture, names, state)
end

--- @return System_Object
--- @param value System_Object
--- @param type System_Type
--- @param culture System_Globalization_CultureInfo
function System_Reflection_Binder:ChangeType(value, type, culture)
end

--- @return System_Void
--- @param args System_Object[]&
--- @param state System_Object
function System_Reflection_Binder:ReorderArgumentArray(args, state)
end

--- @return System_Reflection_MethodBase
--- @param bindingAttr System_Reflection_BindingFlags
--- @param match System_Reflection_MethodBase[]
--- @param types System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Reflection_Binder:SelectMethod(bindingAttr, match, types, modifiers)
end

--- @return System_Reflection_PropertyInfo
--- @param bindingAttr System_Reflection_BindingFlags
--- @param match System_Reflection_PropertyInfo[]
--- @param returnType System_Type
--- @param indexes System_Type[]
--- @param modifiers System_Reflection_ParameterModifier[]
function System_Reflection_Binder:SelectProperty(bindingAttr, match, returnType, indexes, modifiers)
end

--- @return System_Boolean
--- @param obj System_Object
function System_Reflection_Binder:Equals(obj)
end

--- @return System_Int32
function System_Reflection_Binder:GetHashCode()
end

--- @return System_Type
function System_Reflection_Binder:GetType()
end

--- @return System_String
function System_Reflection_Binder:ToString()
end
