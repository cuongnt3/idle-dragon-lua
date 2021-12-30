--- @class System_Text_Encoding
System_Text_Encoding = Class(System_Text_Encoding)

--- @return void
function System_Text_Encoding:Ctor()
	--- @type System_String
	self.BodyName = nil
	--- @type System_String
	self.EncodingName = nil
	--- @type System_String
	self.HeaderName = nil
	--- @type System_String
	self.WebName = nil
	--- @type System_Int32
	self.WindowsCodePage = nil
	--- @type System_Boolean
	self.IsBrowserDisplay = nil
	--- @type System_Boolean
	self.IsBrowserSave = nil
	--- @type System_Boolean
	self.IsMailNewsDisplay = nil
	--- @type System_Boolean
	self.IsMailNewsSave = nil
	--- @type System_Boolean
	self.IsSingleByte = nil
	--- @type System_Text_EncoderFallback
	self.EncoderFallback = nil
	--- @type System_Text_DecoderFallback
	self.DecoderFallback = nil
	--- @type System_Boolean
	self.IsReadOnly = nil
	--- @type System_Text_Encoding
	self.ASCII = nil
	--- @type System_Int32
	self.CodePage = nil
	--- @type System_Text_Encoding
	self.Default = nil
	--- @type System_Text_Encoding
	self.Unicode = nil
	--- @type System_Text_Encoding
	self.BigEndianUnicode = nil
	--- @type System_Text_Encoding
	self.UTF7 = nil
	--- @type System_Text_Encoding
	self.UTF8 = nil
	--- @type System_Text_Encoding
	self.UTF32 = nil
end

--- @return System_Byte[]
--- @param srcEncoding System_Text_Encoding
--- @param dstEncoding System_Text_Encoding
--- @param bytes System_Byte[]
function System_Text_Encoding:Convert(srcEncoding, dstEncoding, bytes)
end

--- @return System_Byte[]
--- @param srcEncoding System_Text_Encoding
--- @param dstEncoding System_Text_Encoding
--- @param bytes System_Byte[]
--- @param index System_Int32
--- @param count System_Int32
function System_Text_Encoding:Convert(srcEncoding, dstEncoding, bytes, index, count)
end

--- @return System_Void
--- @param provider System_Text_EncodingProvider
function System_Text_Encoding:RegisterProvider(provider)
end

--- @return System_Text_Encoding
--- @param codepage System_Int32
function System_Text_Encoding:GetEncoding(codepage)
end

--- @return System_Text_Encoding
--- @param codepage System_Int32
--- @param encoderFallback System_Text_EncoderFallback
--- @param decoderFallback System_Text_DecoderFallback
function System_Text_Encoding:GetEncoding(codepage, encoderFallback, decoderFallback)
end

--- @return System_Text_Encoding
--- @param name System_String
function System_Text_Encoding:GetEncoding(name)
end

--- @return System_Text_Encoding
--- @param name System_String
--- @param encoderFallback System_Text_EncoderFallback
--- @param decoderFallback System_Text_DecoderFallback
function System_Text_Encoding:GetEncoding(name, encoderFallback, decoderFallback)
end

--- @return System_Text_EncodingInfo[]
function System_Text_Encoding:GetEncodings()
end

--- @return System_Byte[]
function System_Text_Encoding:GetPreamble()
end

--- @return System_Object
function System_Text_Encoding:Clone()
end

--- @return System_Int32
--- @param chars System_Char[]
function System_Text_Encoding:GetByteCount(chars)
end

--- @return System_Int32
--- @param s System_String
function System_Text_Encoding:GetByteCount(s)
end

--- @return System_Int32
--- @param chars System_Char[]
--- @param index System_Int32
--- @param count System_Int32
function System_Text_Encoding:GetByteCount(chars, index, count)
end

--- @return System_Int32
--- @param chars System_Char*
--- @param count System_Int32
function System_Text_Encoding:GetByteCount(chars, count)
end

--- @return System_Byte[]
--- @param chars System_Char[]
function System_Text_Encoding:GetBytes(chars)
end

--- @return System_Byte[]
--- @param chars System_Char[]
--- @param index System_Int32
--- @param count System_Int32
function System_Text_Encoding:GetBytes(chars, index, count)
end

--- @return System_Int32
--- @param chars System_Char[]
--- @param charIndex System_Int32
--- @param charCount System_Int32
--- @param bytes System_Byte[]
--- @param byteIndex System_Int32
function System_Text_Encoding:GetBytes(chars, charIndex, charCount, bytes, byteIndex)
end

--- @return System_Byte[]
--- @param s System_String
function System_Text_Encoding:GetBytes(s)
end

--- @return System_Int32
--- @param s System_String
--- @param charIndex System_Int32
--- @param charCount System_Int32
--- @param bytes System_Byte[]
--- @param byteIndex System_Int32
function System_Text_Encoding:GetBytes(s, charIndex, charCount, bytes, byteIndex)
end

--- @return System_Int32
--- @param chars System_Char*
--- @param charCount System_Int32
--- @param bytes System_Byte*
--- @param byteCount System_Int32
function System_Text_Encoding:GetBytes(chars, charCount, bytes, byteCount)
end

--- @return System_Int32
--- @param bytes System_Byte[]
function System_Text_Encoding:GetCharCount(bytes)
end

--- @return System_Int32
--- @param bytes System_Byte[]
--- @param index System_Int32
--- @param count System_Int32
function System_Text_Encoding:GetCharCount(bytes, index, count)
end

--- @return System_Int32
--- @param bytes System_Byte*
--- @param count System_Int32
function System_Text_Encoding:GetCharCount(bytes, count)
end

--- @return System_Char[]
--- @param bytes System_Byte[]
function System_Text_Encoding:GetChars(bytes)
end

--- @return System_Char[]
--- @param bytes System_Byte[]
--- @param index System_Int32
--- @param count System_Int32
function System_Text_Encoding:GetChars(bytes, index, count)
end

--- @return System_Int32
--- @param bytes System_Byte[]
--- @param byteIndex System_Int32
--- @param byteCount System_Int32
--- @param chars System_Char[]
--- @param charIndex System_Int32
function System_Text_Encoding:GetChars(bytes, byteIndex, byteCount, chars, charIndex)
end

--- @return System_Int32
--- @param bytes System_Byte*
--- @param byteCount System_Int32
--- @param chars System_Char*
--- @param charCount System_Int32
function System_Text_Encoding:GetChars(bytes, byteCount, chars, charCount)
end

--- @return System_String
--- @param bytes System_Byte*
--- @param byteCount System_Int32
function System_Text_Encoding:GetString(bytes, byteCount)
end

--- @return System_Boolean
function System_Text_Encoding:IsAlwaysNormalized()
end

--- @return System_Boolean
--- @param form System_Text_NormalizationForm
function System_Text_Encoding:IsAlwaysNormalized(form)
end

--- @return System_Text_Decoder
function System_Text_Encoding:GetDecoder()
end

--- @return System_Text_Encoder
function System_Text_Encoding:GetEncoder()
end

--- @return System_Int32
--- @param charCount System_Int32
function System_Text_Encoding:GetMaxByteCount(charCount)
end

--- @return System_Int32
--- @param byteCount System_Int32
function System_Text_Encoding:GetMaxCharCount(byteCount)
end

--- @return System_String
--- @param bytes System_Byte[]
function System_Text_Encoding:GetString(bytes)
end

--- @return System_String
--- @param bytes System_Byte[]
--- @param index System_Int32
--- @param count System_Int32
function System_Text_Encoding:GetString(bytes, index, count)
end

--- @return System_Boolean
--- @param value System_Object
function System_Text_Encoding:Equals(value)
end

--- @return System_Int32
function System_Text_Encoding:GetHashCode()
end

--- @return System_Type
function System_Text_Encoding:GetType()
end

--- @return System_String
function System_Text_Encoding:ToString()
end
