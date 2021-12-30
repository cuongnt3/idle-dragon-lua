--- @class System_String
System_String = Class(System_String)

--- @return void
function System_String:Ctor()
	--- @type System_Char
	self.Chars = nil
	--- @type System_Int32
	self.Length = nil
	--- @type System_String
	self.Empty = nil
end

--- @return System_Boolean
--- @param a System_String
--- @param b System_String
function System_String:Equals(a, b)
end

--- @return System_Boolean
--- @param obj System_Object
function System_String:Equals(obj)
end

--- @return System_Boolean
--- @param value System_String
function System_String:Equals(value)
end

--- @return System_Object
function System_String:Clone()
end

--- @return System_TypeCode
function System_String:GetTypeCode()
end

--- @return System_Void
--- @param sourceIndex System_Int32
--- @param destination System_Char[]
--- @param destinationIndex System_Int32
--- @param count System_Int32
function System_String:CopyTo(sourceIndex, destination, destinationIndex, count)
end

--- @return System_Char[]
function System_String:ToCharArray()
end

--- @return System_Char[]
--- @param startIndex System_Int32
--- @param length System_Int32
function System_String:ToCharArray(startIndex, length)
end

--- @return System_String[]
--- @param separator System_Char[]
function System_String:Split(separator)
end

--- @return System_String[]
--- @param separator System_Char[]
--- @param count System_Int32
function System_String:Split(separator, count)
end

--- @return System_String[]
--- @param separator System_Char[]
--- @param count System_Int32
--- @param options System_StringSplitOptions
function System_String:Split(separator, count, options)
end

--- @return System_String[]
--- @param separator System_String[]
--- @param count System_Int32
--- @param options System_StringSplitOptions
function System_String:Split(separator, count, options)
end

--- @return System_String[]
--- @param separator System_Char[]
--- @param options System_StringSplitOptions
function System_String:Split(separator, options)
end

--- @return System_String[]
--- @param separator System_String[]
--- @param options System_StringSplitOptions
function System_String:Split(separator, options)
end

--- @return System_String
--- @param startIndex System_Int32
function System_String:Substring(startIndex)
end

--- @return System_String
--- @param startIndex System_Int32
--- @param length System_Int32
function System_String:Substring(startIndex, length)
end

--- @return System_String
function System_String:Trim()
end

--- @return System_String
--- @param trimChars System_Char[]
function System_String:Trim(trimChars)
end

--- @return System_String
--- @param trimChars System_Char[]
function System_String:TrimStart(trimChars)
end

--- @return System_String
--- @param trimChars System_Char[]
function System_String:TrimEnd(trimChars)
end

--- @return System_Int32
--- @param strA System_String
--- @param strB System_String
function System_String:Compare(strA, strB)
end

--- @return System_Int32
--- @param strA System_String
--- @param strB System_String
--- @param ignoreCase System_Boolean
function System_String:Compare(strA, strB, ignoreCase)
end

--- @return System_Int32
--- @param strA System_String
--- @param strB System_String
--- @param ignoreCase System_Boolean
--- @param culture System_Globalization_CultureInfo
function System_String:Compare(strA, strB, ignoreCase, culture)
end

--- @return System_Int32
--- @param strA System_String
--- @param indexA System_Int32
--- @param strB System_String
--- @param indexB System_Int32
--- @param length System_Int32
function System_String:Compare(strA, indexA, strB, indexB, length)
end

--- @return System_Int32
--- @param strA System_String
--- @param indexA System_Int32
--- @param strB System_String
--- @param indexB System_Int32
--- @param length System_Int32
--- @param ignoreCase System_Boolean
function System_String:Compare(strA, indexA, strB, indexB, length, ignoreCase)
end

--- @return System_Int32
--- @param strA System_String
--- @param indexA System_Int32
--- @param strB System_String
--- @param indexB System_Int32
--- @param length System_Int32
--- @param ignoreCase System_Boolean
--- @param culture System_Globalization_CultureInfo
function System_String:Compare(strA, indexA, strB, indexB, length, ignoreCase, culture)
end

--- @return System_Int32
--- @param strA System_String
--- @param strB System_String
--- @param comparisonType System_StringComparison
function System_String:Compare(strA, strB, comparisonType)
end

--- @return System_Int32
--- @param strA System_String
--- @param indexA System_Int32
--- @param strB System_String
--- @param indexB System_Int32
--- @param length System_Int32
--- @param comparisonType System_StringComparison
function System_String:Compare(strA, indexA, strB, indexB, length, comparisonType)
end

--- @return System_Boolean
--- @param a System_String
--- @param b System_String
--- @param comparisonType System_StringComparison
function System_String:Equals(a, b, comparisonType)
end

--- @return System_Boolean
--- @param value System_String
--- @param comparisonType System_StringComparison
function System_String:Equals(value, comparisonType)
end

--- @return System_Int32
--- @param strA System_String
--- @param strB System_String
--- @param culture System_Globalization_CultureInfo
--- @param options System_Globalization_CompareOptions
function System_String:Compare(strA, strB, culture, options)
end

--- @return System_Int32
--- @param strA System_String
--- @param indexA System_Int32
--- @param strB System_String
--- @param indexB System_Int32
--- @param length System_Int32
--- @param culture System_Globalization_CultureInfo
--- @param options System_Globalization_CompareOptions
function System_String:Compare(strA, indexA, strB, indexB, length, culture, options)
end

--- @return System_Int32
--- @param value System_Object
function System_String:CompareTo(value)
end

--- @return System_Int32
--- @param strB System_String
function System_String:CompareTo(strB)
end

--- @return System_Int32
--- @param strA System_String
--- @param strB System_String
function System_String:CompareOrdinal(strA, strB)
end

--- @return System_Int32
--- @param strA System_String
--- @param indexA System_Int32
--- @param strB System_String
--- @param indexB System_Int32
--- @param length System_Int32
function System_String:CompareOrdinal(strA, indexA, strB, indexB, length)
end

--- @return System_Boolean
--- @param value System_String
function System_String:EndsWith(value)
end

--- @return System_Boolean
--- @param value System_String
--- @param ignoreCase System_Boolean
--- @param culture System_Globalization_CultureInfo
function System_String:EndsWith(value, ignoreCase, culture)
end

--- @return System_Int32
--- @param anyOf System_Char[]
function System_String:IndexOfAny(anyOf)
end

--- @return System_Int32
--- @param anyOf System_Char[]
--- @param startIndex System_Int32
function System_String:IndexOfAny(anyOf, startIndex)
end

--- @return System_Int32
--- @param anyOf System_Char[]
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:IndexOfAny(anyOf, startIndex, count)
end

--- @return System_Int32
--- @param value System_String
--- @param comparisonType System_StringComparison
function System_String:IndexOf(value, comparisonType)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
--- @param comparisonType System_StringComparison
function System_String:IndexOf(value, startIndex, comparisonType)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
--- @param count System_Int32
--- @param comparisonType System_StringComparison
function System_String:IndexOf(value, startIndex, count, comparisonType)
end

--- @return System_Int32
--- @param value System_String
--- @param comparisonType System_StringComparison
function System_String:LastIndexOf(value, comparisonType)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
--- @param comparisonType System_StringComparison
function System_String:LastIndexOf(value, startIndex, comparisonType)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
--- @param count System_Int32
--- @param comparisonType System_StringComparison
function System_String:LastIndexOf(value, startIndex, count, comparisonType)
end

--- @return System_Int32
--- @param value System_Char
function System_String:IndexOf(value)
end

--- @return System_Int32
--- @param value System_Char
--- @param startIndex System_Int32
function System_String:IndexOf(value, startIndex)
end

--- @return System_Int32
--- @param value System_Char
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:IndexOf(value, startIndex, count)
end

--- @return System_Int32
--- @param value System_String
function System_String:IndexOf(value)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
function System_String:IndexOf(value, startIndex)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:IndexOf(value, startIndex, count)
end

--- @return System_Int32
--- @param anyOf System_Char[]
function System_String:LastIndexOfAny(anyOf)
end

--- @return System_Int32
--- @param anyOf System_Char[]
--- @param startIndex System_Int32
function System_String:LastIndexOfAny(anyOf, startIndex)
end

--- @return System_Int32
--- @param anyOf System_Char[]
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:LastIndexOfAny(anyOf, startIndex, count)
end

--- @return System_Int32
--- @param value System_Char
function System_String:LastIndexOf(value)
end

--- @return System_Int32
--- @param value System_Char
--- @param startIndex System_Int32
function System_String:LastIndexOf(value, startIndex)
end

--- @return System_Int32
--- @param value System_Char
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:LastIndexOf(value, startIndex, count)
end

--- @return System_Int32
--- @param value System_String
function System_String:LastIndexOf(value)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
function System_String:LastIndexOf(value, startIndex)
end

--- @return System_Int32
--- @param value System_String
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:LastIndexOf(value, startIndex, count)
end

--- @return System_Boolean
--- @param value System_String
function System_String:Contains(value)
end

--- @return System_Boolean
--- @param value System_String
function System_String:IsNullOrEmpty(value)
end

--- @return System_String
function System_String:Normalize()
end

--- @return System_String
--- @param normalizationForm System_Text_NormalizationForm
function System_String:Normalize(normalizationForm)
end

--- @return System_Boolean
function System_String:IsNormalized()
end

--- @return System_Boolean
--- @param normalizationForm System_Text_NormalizationForm
function System_String:IsNormalized(normalizationForm)
end

--- @return System_String
--- @param startIndex System_Int32
function System_String:Remove(startIndex)
end

--- @return System_String
--- @param totalWidth System_Int32
function System_String:PadLeft(totalWidth)
end

--- @return System_String
--- @param totalWidth System_Int32
--- @param paddingChar System_Char
function System_String:PadLeft(totalWidth, paddingChar)
end

--- @return System_String
--- @param totalWidth System_Int32
function System_String:PadRight(totalWidth)
end

--- @return System_String
--- @param totalWidth System_Int32
--- @param paddingChar System_Char
function System_String:PadRight(totalWidth, paddingChar)
end

--- @return System_Boolean
--- @param value System_String
function System_String:StartsWith(value)
end

--- @return System_Boolean
--- @param value System_String
--- @param comparisonType System_StringComparison
function System_String:StartsWith(value, comparisonType)
end

--- @return System_Boolean
--- @param value System_String
--- @param comparisonType System_StringComparison
function System_String:EndsWith(value, comparisonType)
end

--- @return System_Boolean
--- @param value System_String
--- @param ignoreCase System_Boolean
--- @param culture System_Globalization_CultureInfo
function System_String:StartsWith(value, ignoreCase, culture)
end

--- @return System_String
--- @param oldChar System_Char
--- @param newChar System_Char
function System_String:Replace(oldChar, newChar)
end

--- @return System_String
--- @param oldValue System_String
--- @param newValue System_String
function System_String:Replace(oldValue, newValue)
end

--- @return System_String
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:Remove(startIndex, count)
end

--- @return System_String
function System_String:ToLower()
end

--- @return System_String
--- @param culture System_Globalization_CultureInfo
function System_String:ToLower(culture)
end

--- @return System_String
function System_String:ToLowerInvariant()
end

--- @return System_String
function System_String:ToUpper()
end

--- @return System_String
--- @param culture System_Globalization_CultureInfo
function System_String:ToUpper(culture)
end

--- @return System_String
function System_String:ToUpperInvariant()
end

--- @return System_String
function System_String:ToString()
end

--- @return System_String
--- @param provider System_IFormatProvider
function System_String:ToString(provider)
end

--- @return System_String
--- @param format System_String
--- @param arg0 System_Object
function System_String:Format(format, arg0)
end

--- @return System_String
--- @param format System_String
--- @param arg0 System_Object
--- @param arg1 System_Object
function System_String:Format(format, arg0, arg1)
end

--- @return System_String
--- @param format System_String
--- @param arg0 System_Object
--- @param arg1 System_Object
--- @param arg2 System_Object
function System_String:Format(format, arg0, arg1, arg2)
end

--- @return System_String
--- @param format System_String
--- @param args System_Object[]
function System_String:Format(format, args)
end

--- @return System_String
--- @param provider System_IFormatProvider
--- @param format System_String
--- @param args System_Object[]
function System_String:Format(provider, format, args)
end

--- @return System_String
--- @param str System_String
function System_String:Copy(str)
end

--- @return System_String
--- @param arg0 System_Object
function System_String:Concat(arg0)
end

--- @return System_String
--- @param arg0 System_Object
--- @param arg1 System_Object
function System_String:Concat(arg0, arg1)
end

--- @return System_String
--- @param arg0 System_Object
--- @param arg1 System_Object
--- @param arg2 System_Object
function System_String:Concat(arg0, arg1, arg2)
end

--- @return System_String
--- @param arg0 System_Object
--- @param arg1 System_Object
--- @param arg2 System_Object
--- @param arg3 System_Object
function System_String:Concat(arg0, arg1, arg2, arg3)
end

--- @return System_String
--- @param str0 System_String
--- @param str1 System_String
function System_String:Concat(str0, str1)
end

--- @return System_String
--- @param str0 System_String
--- @param str1 System_String
--- @param str2 System_String
function System_String:Concat(str0, str1, str2)
end

--- @return System_String
--- @param str0 System_String
--- @param str1 System_String
--- @param str2 System_String
--- @param str3 System_String
function System_String:Concat(str0, str1, str2, str3)
end

--- @return System_String
--- @param args System_Object[]
function System_String:Concat(args)
end

--- @return System_String
--- @param values System_String[]
function System_String:Concat(values)
end

--- @return System_String
--- @param startIndex System_Int32
--- @param value System_String
function System_String:Insert(startIndex, value)
end

--- @return System_String
--- @param str System_String
function System_String:Intern(str)
end

--- @return System_String
--- @param str System_String
function System_String:IsInterned(str)
end

--- @return System_String
--- @param separator System_String
--- @param value System_String[]
function System_String:Join(separator, value)
end

--- @return System_String
--- @param separator System_String
--- @param value System_String[]
--- @param startIndex System_Int32
--- @param count System_Int32
function System_String:Join(separator, value, startIndex, count)
end

--- @return System_CharEnumerator
function System_String:GetEnumerator()
end

--- @return System_Int32
function System_String:GetHashCode()
end

--- @return System_Type
function System_String:GetType()
end
