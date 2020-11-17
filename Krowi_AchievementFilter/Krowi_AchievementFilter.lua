-- function KrowiAF.InGuildView_Old()
--     return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
-- end

-- KrowiAF.TabFunctions = {
--     categoryAccessor = function()
--         return KrowiAF.Categories_Old;
--     end,
--     getCategoryList = KrowiAF.AchievementFrameCategories_GetCategoryList_Old,
--     clearFunc = AchievementFrameAchievements_ClearSelection,
--     updateFunc = KrowiAF.AchievementFrameAchievements_Update_Old,
--     selectedCategory = 1;
--     noSummary = true;
-- };

local loadHelper = CreateFrame("Frame", nil, nil);
loadHelper:RegisterEvent("ADDON_LOADED");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == "Krowi_AchievementFilter" then
            KrowiAF.LoadOptions(); -- 1
            KrowiAF.LoadIcon(); -- 2
        elseif arg1 == "Blizzard_AchievementUI" then
            -- local tab = KrowiAF.AchievementTab_Old:AddNewTab(AF_TAB_BUTTON_TEXT .. "OLD", KrowiAF.TabFunctions); -- 4
            -- KrowiAF.Debug("     - Functions linked");
            -- hooksecurefunc("AchievementFrameBaseTab_OnClick", tab.LeaveTab);
            -- hooksecurefunc("AchievementFrameComparisonTab_OnClick", tab.LeaveTab);
            -- KrowiAF.Debug("     - LeaveTab hooked");
            -- KrowiAF.LoadCategories(); -- 5
            -- KrowiAF.LoadAchievements(); -- 6
            -- local loaded, reason = LoadAddOn("AchievementFilter_Tab");
            -- KrowiAF.Debug(loaded);
            -- KrowiAF.Debug(reason);
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);