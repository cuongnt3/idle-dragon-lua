--- @class UIEventLoginLayout : UIEventLayout
UIEventLoginLayout = Class(UIEventLoginLayout, UIEventLayout)

--- @param view UIEventView
function UIEventLoginLayout:Ctor(view, eventTimeType)
    --- @type EventLoginPanel
    self.eventLoginPanel = nil
    UIEventLayout.Ctor(self, view, eventTimeType)
end

--- @param eventPopupModel EventPopupLoginModel
function UIEventLoginLayout:OnShow(eventPopupModel)
    UIEventLayout.OnShow(self, eventPopupModel)
    self.eventLoginPanel:Show(eventPopupModel)
end

function UIEventLoginLayout:SetUpLayout()
    require "lua.client.scene.ui.home.uiEvent.eventLogin.EventLoginPanel"
    self.eventLoginPanel = PrefabLoadUtils.Get(EventLoginPanel, self.config.loginEventAnchor)
end

function UIEventLoginLayout:OnHide()
    if self.eventLoginPanel ~= nil then
        self.eventLoginPanel:Hide()
        self.eventLoginPanel = nil
    end
end

function UIEventLoginLayout:PlayMotion()

end

function UIEventLoginLayout:OnDestroy()
    PrefabLoadUtils.Remove(EventLoginPanel)
end
