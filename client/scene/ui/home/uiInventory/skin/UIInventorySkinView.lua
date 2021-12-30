require "lua.client.scene.ui.utils.uiSelect.UISelectCustomSprite"

--- @class UIInventorySkinView
UIInventorySkinView = Class(UIInventorySkinView)

--- @return void
--- @param transform UnityEngine_Transform
--- @param view UIInventoryView
function UIInventorySkinView:Ctor(view, transform, model)
    --- @type UIInventoryView
    self.view = view
    ---@type UIInventoryModel
    self.model = model
    ---@type List --<id>
    self.itemDic = nil

    ---@type UIInventoryArtifactConfig
    self.config = UIBaseConfig(transform)

    -- Select faction
    --- @param obj UnityEngine_UI_Button
    --- @param isSelect boolean
    local onSelectFaction = function(obj, isSelect, indexTab)
        if obj ~= nil then
            UIUtils.SetInteractableButton(obj, not isSelect)
            if isSelect then
                self.config.iconSelect.gameObject:SetActive(true)
                self.config.iconSelect.transform.position = self.config.selectType:GetChild(indexTab - 1).position
            end
        end
    end
    local onChangeSelectFaction = function(indexTab, lastTab)

    end
    local onClickSelectFaction = function(indexTab)
        self:Sort()
    end
    self.selectType = UISelectFactionFilter(self.config.selectType, nil, onSelectFaction, onChangeSelectFaction, onClickSelectFaction)
    self.selectType:SetSprite()

    --- @param obj SkinCardView
    --- @param index number
    local onCreateItem = function(obj, index)
        local type = ResourceType.Skin
        local id = self.itemDic:Get(index + 1)
        local number = InventoryUtils.Get(type, id)
        obj:EnableButton(true)
        obj:SetIconData(ItemIconData.CreateInstance(type, id, number))
        obj:RemoveAllListeners()
        obj:AddListener(function()
            obj:ShowPreview()
        end)
    end
    ---@type UILoopScroll
    self.uiScroll = UILoopScroll(self.config.scroll, UIPoolType.SkinCardView, onCreateItem)
    self.config.buttonCollection.onClick:AddListener(function()
        self:OnClickCollection()
    end)
end

--- @return void
function UIInventorySkinView:Show()
    self.selectType:Select(1)
    self:Sort()
end

--- @return void
function UIInventorySkinView:Hide()
    self.uiScroll:Hide()
end

--- @return void
function UIInventorySkinView:Sort()
    local faction = self.selectType.indexTab - 1
    if faction == 0 then
        faction = nil
    end
    self.itemDic = InventoryUtils.GetSkin(1, nil, faction)
    local itemCount = self.itemDic:Count()
    self.uiScroll:Resize(itemCount)
    self.view:EnableEmpty(itemCount == 0)
end

--- @return void
function UIInventorySkinView:OnClickCollection()
    PopupMgr.ShowPopup(UIPopupName.UISkinCollection)
    zg.audioMgr:PlaySfxUi(SfxUiType.SELECT)
end