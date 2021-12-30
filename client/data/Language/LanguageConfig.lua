local BANNED_WORD_PATH = "csv/basic_info/banned_word.csv"
local BANNED_WORD_VN_PATH = "csv/basic_info/banned_word_vn.csv"
local BANNED_WORD_REPLACE = "***"

--- @class LanguageConfig
LanguageConfig = Class(LanguageConfig)

function LanguageConfig:Ctor()
    --- @type List
    self.bannedWord = nil

    self:InitBannedWords()
end

--- @return void
function LanguageConfig:InitBannedWords()
    local parsedData
    if IS_VIET_NAM_VERSION then
        parsedData = CsvReaderUtils.ReadAndParseLocalFile(BANNED_WORD_VN_PATH)
    else
        parsedData = CsvReaderUtils.ReadAndParseLocalFile(BANNED_WORD_PATH)
    end
    self.bannedWord = List()
    for i = 1, #parsedData do
        self.bannedWord:Add(parsedData[i]["banned_word"])
    end
end

--- @return List
function LanguageConfig:GetBannedWords()
    return self.bannedWord
end

--- @return boolean
--- @param content string
function LanguageConfig:IsContainBannedWord(content)
    if IS_VIET_NAM_VERSION == false then
        return false
    end
    local arrWord = content:Split(' ')
    for i = 1, #arrWord do
        local word = arrWord[i]
        if self.bannedWord:IsContainValue(word) == true then
            local a, b = string.find(content, word)
            if a ~= nil and b ~= nil then
                return true
            end
        end
    end
    return false
end

--- @return string
--- @param message string
function LanguageConfig:FilterBannedWord(message)
    if IS_VIET_NAM_VERSION == false then
        return message
    end
    local arrWord = message:Split(' ')
    for i = 1, #arrWord do
        local word = arrWord[i]
        if self.bannedWord:IsContainValue(word) == true then
            local a, b = string.find(message, word)
            if a ~= nil and b ~= nil then
                local banWord = string.sub(message, a, b)
                message = string.gsub(message, banWord, BANNED_WORD_REPLACE)
            end
        end
    end
    return message
end

return LanguageConfig