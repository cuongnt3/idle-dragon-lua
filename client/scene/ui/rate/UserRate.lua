--- @class UserRate
UserRate = Class(UserRate)

UserRate.KEY_USER_RATE = "user_rate"

---@type number
UserRate.time = nil

--- @return void
function UserRate.LoadFromServer(callbackSuccess, callbackFailed)
    UserRate.time = zg.playerData.remoteConfig.rateTime
    if UserRate.time == nil then
        UserRate.time = 0
    end
    if callbackSuccess ~= nil then
        callbackSuccess()
    end
end

--- @return void
function UserRate.SaveToServer(time)
    UserRate.time = time
    zg.playerData.remoteConfig.rateTime = time
    zg.playerData:SaveRemoteConfig()
end

--- @return void
function UserRate.CheckRate(forceShow)
    if IS_HUAWEI_VERSION then
        return
    end
    if UIBaseView.IsActiveTutorial() == false then
        local checkShowPopup = function()
            if forceShow == true or (UserRate.time >= 0 and zg.timeMgr:GetServerTime() - UserRate.time > 86400) then
                if zgUnity.googleReviewUtils ~= nil then
                    print(">>> RequestReview")
                    zgUnity.googleReviewUtils:RequestReview(function(isSuccess)
                        print(">>> Result RequestReview ", isSuccess)
                        --touchObject:Enable()
                        if isSuccess == false then
                            PopupMgr.ShowPopupDelay(1, UIPopupName.UIRate)
                        else
                            UserRate.SaveToServer(-1)
                        end
                    end)
                else
                    PopupMgr.ShowPopupDelay(1, UIPopupName.UIRate)
                end
            end
        end
        if UserRate.time == nil then
            UserRate.LoadFromServer(checkShowPopup)
        else
            checkShowPopup()
        end
    end
end