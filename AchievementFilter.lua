function KrowiAF.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

local loadHelper = CreateFrame("Frame", nil, nil);
loadHelper:RegisterEvent("ADDON_LOADED");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == "AchievementFilter" then
            KrowiAF.LoadOptions(); -- 1
            KrowiAF.LoadIcon(); -- 2
        elseif arg1 == "Blizzard_AchievementUI" then
            KrowiAF.AchievementTab:AddNewTab(AF_TAB_BUTTON_TEXT, {
                categoryAccessor = function()
                    return KrowiAF.Categories;
                end,
                getCategoryList = KrowiAF.AchievementFrameCategories_GetCategoryList,
                clearFunc = AchievementFrameAchievements_ClearSelection,
                updateFunc = KrowiAF.AchievementFrameAchievements_Update,
                selectedCategory = 1;
                noSummary = true;
            }); -- 4
            KrowiAF.Debug("     - Functions linked");
            KrowiAF.LoadCategories(); -- 5
            KrowiAF.LoadAchievements(); -- 6
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);