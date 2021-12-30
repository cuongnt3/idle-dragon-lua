--- @class UIEventQuestItem : QuestItemView
UIEventQuestItem = Class(UIEventQuestItem, QuestItemView)

function UIEventQuestItem:Ctor()
    --- @type ItemsTableView
    self.itemsTableView = nil
    ---@type UIEventQuestItemConfig
    self.config = nil
    QuestItemView.Ctor(self)
end

function UIEventQuestItem:SetPrefabName()
    self.prefabName = 'event_quest_item_view'
    self.uiPoolType = UIPoolType.EventQuestItem
end

return UIEventQuestItem