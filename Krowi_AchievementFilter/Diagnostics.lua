local _, addon = ...; -- Global addon namespace
addon.Diagnostics = {}; -- Global diagnostics namespace
local diagnostics = addon.Diagnostics; -- Local diagnostics namespace

diagnostics.DebugEnabled = nil; -- Used to determine if printing debug messages is allowed
diagnostics.TraceEnabled = nil; -- Used to determine if printing trace messages is allowed

-- Print the value to the DEFAULT_CHAT_FRAME
function diagnostics.Debug(value, forced)
    if diagnostics.DebugEnabled() or forced then
        DEFAULT_CHAT_FRAME:AddMessage(AF_NAME .. " - " .. tostring(value));
    end
end

-- Print the table to the DEFAULT_CHAT_FRAME
function diagnostics.DebugTable(table, charactersPerLine, forced)
    if diagnostics.DebugEnabled() or forced then
        if type(charactersPerLine) ~= "number" then
            charactersPerLine = 100;
        end
		for line in TableToString(table, charactersPerLine):gmatch("[^\r\n]+") do
			DEFAULT_CHAT_FRAME:AddMessage(line);
		end
    end
end

-- Print the value to the DEFAULT_CHAT_FRAME
function diagnostics.Trace(value)
    if diagnostics.TraceEnabled() then
        DEFAULT_CHAT_FRAME:AddMessage(AF_NAME .. " - " .. tostring(value));
    end
end

-- Load the diagnostics
function diagnostics.Load()
	diagnostics.DebugEnabled = function() return addon.Options.profile.EnableDebugInfo; end;
    diagnostics.TraceEnabled = function() return addon.Options.profile.EnableTraceInfo; end;
end

-- function HookDebug()
--     -- hooksecurefunc("AchievementFrame_ToggleAchievementFrame", function () print("AchievementFrame_ToggleAchievementFrame"); end);
--     -- hooksecurefunc("AchievementFrame_DisplayComparison", function () print("AchievementFrame_DisplayComparison"); end);
--     -- hooksecurefunc("AchievementFrame_OnLoad", function () print("AchievementFrame_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrame_OnShow", function () print("AchievementFrame_OnShow"); end);
--     -- hooksecurefunc("AchievementFrame_OnHide", function () print("AchievementFrame_OnHide"); end);
--     -- hooksecurefunc("AchievementFrame_ForceUpdate", function () print("AchievementFrame_ForceUpdate"); end);
--     -- hooksecurefunc("AchievementFrame_SetTabs", function () print("AchievementFrame_SetTabs"); end);
--     -- hooksecurefunc("AchievementFrame_UpdateTabs", function () print("AchievementFrame_UpdateTabs"); end);
--     -- hooksecurefunc("AchievementFrame_ToggleView", function () print("AchievementFrame_ToggleView"); end);
--     -- hooksecurefunc("AchievementFrameBaseTab_OnClick", function () print("AchievementFrameBaseTab_OnClick"); end);
--     -- hooksecurefunc("AchievementFrameComparisonTab_OnClick", function () print("AchievementFrameComparisonTab_OnClick"); end);
--     -- hooksecurefunc("AchievementFrame_ShowSubFrame", function () print("AchievementFrame_ShowSubFrame"); end);
--     -- hooksecurefunc("AchievementFrameCategories_OnLoad", function () print("AchievementFrameCategories_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameCategories_OnEvent", function () print("AchievementFrameCategories_OnEvent"); end);
--     -- hooksecurefunc("AchievementFrameCategories_OnShow", function () print("AchievementFrameCategories_OnShow"); end);
--     -- hooksecurefunc("AchievementFrameCategories_GetCategoryList", function () print("AchievementFrameCategories_GetCategoryList"); end);
--     -- hooksecurefunc("AchievementFrameCategories_Update", function () print("AchievementFrameCategories_Update"); end);
--     -- hooksecurefunc("AchievementFrameCategories_DisplayButton", function () print("AchievementFrameCategories_DisplayButton"); end);
--     -- hooksecurefunc("AchievementFrameCategory_StatusBarTooltip", function () print("AchievementFrameCategory_StatusBarTooltip"); end);
--     -- hooksecurefunc("AchievementFrameCategory_FeatOfStrengthTooltip", function () print("AchievementFrameCategory_FeatOfStrengthTooltip"); end);
--     -- hooksecurefunc("AchievementFrameCategories_UpdateTooltip", function () print("AchievementFrameCategories_UpdateTooltip"); end);
--     -- hooksecurefunc("AchievementFrameCategories_SelectButton", function () print("AchievementFrameCategories_SelectButton"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_OnShow", function () print("AchievementFrameAchievements_OnShow"); end);
--     -- hooksecurefunc("AchievementFrameCategories_ClearSelection", function () print("AchievementFrameCategories_ClearSelection"); end);
--     -- hooksecurefunc("AchievementFrameComparison_UpdateStatusBars", function () print("AchievementFrameComparison_UpdateStatusBars"); end);
--     -- hooksecurefunc("AchievementCategoryButton_OnLoad", function () print("AchievementCategoryButton_OnLoad"); end);
--     -- hooksecurefunc("AchievementCategoryButton_OnClick", function () print("AchievementCategoryButton_OnClick"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_OnLoad", function () print("AchievementFrameAchievements_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_OnEvent", function () print("AchievementFrameAchievements_OnEvent"); end);
--     -- hooksecurefunc("AchievementFrameAchievementsBackdrop_OnLoad", function () print("AchievementFrameAchievementsBackdrop_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_Update", function () print("AchievementFrameAchievements_Update"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_ForceUpdate", function () print("AchievementFrameAchievements_ForceUpdate"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_ClearSelection", function () print("AchievementFrameAchievements_ClearSelection"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_SetupButton", function () print("AchievementFrameAchievements_SetupButton"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_ToggleView", function () print("AchievementFrameAchievements_ToggleView"); end);
--     -- hooksecurefunc("AchievementIcon_Desaturate", function () print("AchievementIcon_Desaturate"); end);
--     -- hooksecurefunc("AchievementIcon_Saturate", function () print("AchievementIcon_Saturate"); end);
--     -- hooksecurefunc("AchievementIcon_OnLoad", function () print("AchievementIcon_OnLoad"); end);
--     -- hooksecurefunc("AchievementShield_Desaturate", function () print("AchievementShield_Desaturate"); end);
--     -- hooksecurefunc("AchievementShield_Saturate", function () print("AchievementShield_Saturate"); end);
--     -- hooksecurefunc("AchievementShield_OnLoad", function () print("AchievementShield_OnLoad"); end);
--     -- hooksecurefunc("AchievementButton_UpdatePlusMinusTexture", function () print("AchievementButton_UpdatePlusMinusTexture"); end);
--     -- hooksecurefunc("AchievementButton_Collapse", function () print("AchievementButton_Collapse"); end);
--     -- hooksecurefunc("AchievementButton_Expand", function () print("AchievementButton_Expand"); end);
--     -- hooksecurefunc("AchievementButton_Saturate", function () print("AchievementButton_Saturate"); end);
--     -- hooksecurefunc("AchievementButton_Desaturate", function () print("AchievementButton_Desaturate"); end);
--     -- hooksecurefunc("AchievementButton_OnLoad", function () print("AchievementButton_OnLoad"); end);
--     -- hooksecurefunc("AchievementButton_OnClick", function () print("AchievementButton_OnClick"); end);
--     -- hooksecurefunc("AchievementButton_ToggleTracking", function () print("AchievementButton_ToggleTracking"); end);
--     -- hooksecurefunc("AchievementButton_DisplayAchievement", function () print("AchievementButton_DisplayAchievement"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_SelectButton", function () print("AchievementFrameAchievements_SelectButton"); end);
--     -- hooksecurefunc("AchievementButton_ResetObjectives", function () print("AchievementButton_ResetObjectives"); end);
--     -- hooksecurefunc("AchievementButton_DisplayObjectives", function () print("AchievementButton_DisplayObjectives"); end);
--     -- hooksecurefunc("AchievementShield_SetPoints", function () print("AchievementShield_SetPoints"); end);
--     -- hooksecurefunc("AchievementButton_ResetTable", function () print("AchievementButton_ResetTable"); end);
--     -- hooksecurefunc("AchievementButton_ResetCriteria", function () print("AchievementButton_ResetCriteria"); end);
--     -- hooksecurefunc("AchievementButton_GetCriteria", function () print("AchievementButton_GetCriteria"); end);
--     -- hooksecurefunc("AchievementButton_ResetMiniAchievements", function () print("AchievementButton_ResetMiniAchievements"); end);
--     -- hooksecurefunc("AchievementButton_GetMiniAchievement", function () print("AchievementButton_GetMiniAchievement"); end);
--     -- hooksecurefunc("AchievementButton_ResetProgressBars", function () print("AchievementButton_ResetProgressBars"); end);
--     -- hooksecurefunc("AchievementButton_GetProgressBar", function () print("AchievementButton_GetProgressBar"); end);
--     -- hooksecurefunc("AchievementButton_ResetMetas", function () print("AchievementButton_ResetMetas"); end);
--     -- hooksecurefunc("AchievementButton_GetMeta", function () print("AchievementButton_GetMeta"); end);
--     -- hooksecurefunc("AchievementButton_ToggleMetaView", function () print("AchievementButton_ToggleMetaView"); end);
--     -- hooksecurefunc("AchievementButton_GetProgressivePoints", function () print("AchievementButton_GetProgressivePoints"); end);
--     -- hooksecurefunc("AchievementObjectives_DisplayProgressiveAchievement", function () print("AchievementObjectives_DisplayProgressiveAchievement"); end);
--     -- hooksecurefunc("AchievementFrame_GetCategoryNumAchievements_All", function () print("AchievementFrame_GetCategoryNumAchievements_All"); end);
--     -- hooksecurefunc("AchievementFrame_GetCategoryNumAchievements_Complete", function () print("AchievementFrame_GetCategoryNumAchievements_Complete"); end);
--     -- hooksecurefunc("AchievementFrame_GetCategoryNumAchievements_Incomplete", function () print("AchievementFrame_GetCategoryNumAchievements_Incomplete"); end);
--     -- hooksecurefunc("AchievementFrameFilterDropDown_OnLoad", function () print("AchievementFrameFilterDropDown_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameFilterDropDown_Initialize", function () print("AchievementFrameFilterDropDown_Initialize"); end);
--     -- hooksecurefunc("AchievementFrameFilterDropDownButton_OnClick", function () print("AchievementFrameFilterDropDownButton_OnClick"); end);
--     -- hooksecurefunc("AchievementFrame_SetFilter", function () print("AchievementFrame_SetFilter"); end);
--     -- hooksecurefunc("AchievementObjectives_DisplayCriteria", function () print("AchievementObjectives_DisplayCriteria"); end);
--     -- hooksecurefunc("AchievementFrameStats_OnEvent", function () print("AchievementFrameStats_OnEvent"); end);
--     -- hooksecurefunc("AchievementFrameStats_OnLoad", function () print("AchievementFrameStats_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameStats_Update", function () print("AchievementFrameStats_Update"); end);
--     -- hooksecurefunc("AchievementFrameStats_SetStat", function () print("AchievementFrameStats_SetStat"); end);
--     -- hooksecurefunc("AchievementFrameStats_SetHeader", function () print("AchievementFrameStats_SetHeader"); end);
--     -- hooksecurefunc("AchievementStatButton_OnLoad", function () print("AchievementStatButton_OnLoad"); end);
--     -- hooksecurefunc("AchievementStatButton_OnClick", function () print("AchievementStatButton_OnClick"); end);
--     -- hooksecurefunc("AchievementStatButton_OnEnter", function () print("AchievementStatButton_OnEnter"); end);
--     -- hooksecurefunc("AchievementFrameSummary_OnShow", function () print("AchievementFrameSummary_OnShow"); end);
--     -- hooksecurefunc("AchievementFrameSummary_Update", function () print("AchievementFrameSummary_Update"); end);
--     -- hooksecurefunc("AchievementFrameSummary_UpdateSummaryCategories", function () print("AchievementFrameSummary_UpdateSummaryCategories"); end);
--     -- hooksecurefunc("AchievementFrameSummary_ToggleView", function () print("AchievementFrameSummary_ToggleView"); end);
--     -- hooksecurefunc("AchievementFrameSummary_UpdateAchievements", function () print("AchievementFrameSummary_UpdateAchievements"); end);
--     -- hooksecurefunc("AchievementFrameSummaryCategoriesStatusBar_Update", function () print("AchievementFrameSummaryCategoriesStatusBar_Update"); end);
--     -- hooksecurefunc("AchievementFrameSummaryAchievement_OnLoad", function () print("AchievementFrameSummaryAchievement_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameSummaryAchievement_SetGuildTextures", function () print("AchievementFrameSummaryAchievement_SetGuildTextures"); end);
--     -- hooksecurefunc("AchievementFrameSummaryAchievement_OnClick", function () print("AchievementFrameSummaryAchievement_OnClick"); end);
--     -- hooksecurefunc("AchievementFrameSummaryAchievement_OnEnter", function () print("AchievementFrameSummaryAchievement_OnEnter"); end);
--     -- hooksecurefunc("AchievementFrameSummaryCategoryButton_OnClick", function () print("AchievementFrameSummaryCategoryButton_OnClick"); end);
--     -- hooksecurefunc("AchievementFrameSummaryCategory_OnLoad", function () print("AchievementFrameSummaryCategory_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrame_GetCategoryTotalNumAchievements", function () print("AchievementFrame_GetCategoryTotalNumAchievements"); end);
--     -- hooksecurefunc("AchievementFrameSummaryCategory_OnEvent", function () print("AchievementFrameSummaryCategory_OnEvent"); end);
--     -- hooksecurefunc("AchievementFrameSummaryCategory_OnShow", function () print("AchievementFrameSummaryCategory_OnShow"); end);
--     -- hooksecurefunc("AchievementFrameSummaryCategory_OnHide", function () print("AchievementFrameSummaryCategory_OnHide"); end);
--     -- hooksecurefunc("AchievementFrame_SelectAchievement", function () print("AchievementFrame_SelectAchievement"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_FindSelection", function () print("AchievementFrameAchievements_FindSelection"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_AdjustSelection", function () print("AchievementFrameAchievements_AdjustSelection"); end);
--     -- hooksecurefunc("AchievementFrame_SelectSummaryStatistic", function () print("AchievementFrame_SelectSummaryStatistic"); end);
--     -- hooksecurefunc("AchievementFrame_SelectStatisticByAchievementID", function () print("AchievementFrame_SelectStatisticByAchievementID"); end);
--     -- hooksecurefunc("AchievementFrameComparison_OnLoad", function () print("AchievementFrameComparison_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameComparisonContainer_OnLoad", function () print("AchievementFrameComparisonContainer_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameComparisonStatsContainer_OnLoad", function () print("AchievementFrameComparisonStatsContainer_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameComparison_OnShow", function () print("AchievementFrameComparison_OnShow"); end);
--     -- hooksecurefunc("AchievementFrameComparison_OnHide", function () print("AchievementFrameComparison_OnHide"); end);
--     -- hooksecurefunc("AchievementFrameComparison_OnEvent", function () print("AchievementFrameComparison_OnEvent"); end);
--     -- hooksecurefunc("AchievementFrameComparison_SetUnit", function () print("AchievementFrameComparison_SetUnit"); end);
--     -- hooksecurefunc("AchievementFrameComparison_ClearSelection", function () print("AchievementFrameComparison_ClearSelection"); end);
--     -- hooksecurefunc("AchievementFrameComparison_ForceUpdate", function () print("AchievementFrameComparison_ForceUpdate"); end);
--     -- hooksecurefunc("AchievementFrameComparison_Update", function () print("AchievementFrameComparison_Update"); end);
--     -- hooksecurefunc("AchievementFrameComparison_DisplayAchievement", function () print("AchievementFrameComparison_DisplayAchievement"); end);
--     -- hooksecurefunc("AchievementFrameComparison_UpdateStats", function () print("AchievementFrameComparison_UpdateStats"); end);
--     -- hooksecurefunc("AchievementFrameComparisonStat_OnLoad", function () print("AchievementFrameComparisonStat_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrameComparisonStats_SetStat", function () print("AchievementFrameComparisonStats_SetStat"); end);
--     -- hooksecurefunc("AchievementFrameComparisonStats_SetHeader", function () print("AchievementFrameComparisonStats_SetHeader"); end);
--     -- hooksecurefunc("AchievementComparisonPlayerButton_Saturate", function () print("AchievementComparisonPlayerButton_Saturate"); end);
--     -- hooksecurefunc("AchievementComparisonPlayerButton_Desaturate", function () print("AchievementComparisonPlayerButton_Desaturate"); end);
--     -- hooksecurefunc("AchievementComparisonPlayerButton_OnLoad", function () print("AchievementComparisonPlayerButton_OnLoad"); end);
--     -- hooksecurefunc("AchievementComparisonFriendButton_Saturate", function () print("AchievementComparisonFriendButton_Saturate"); end);
--     -- hooksecurefunc("AchievementComparisonFriendButton_Desaturate", function () print("AchievementComparisonFriendButton_Desaturate"); end);
--     -- hooksecurefunc("AchievementComparisonFriendButton_OnLoad", function () print("AchievementComparisonFriendButton_OnLoad"); end);
--     -- hooksecurefunc("AchievementFrame_IsComparison", function () print("AchievementFrame_IsComparison"); end);
--     -- hooksecurefunc("AchievementFrame_IsFeatOfStrength", function () print("AchievementFrame_IsFeatOfStrength"); end);
--     -- hooksecurefunc("AchievementFrame_ClearTextures", function () print("AchievementFrame_ClearTextures"); end);
--     -- hooksecurefunc("AchievementFrame_LoadTextures", function () print("AchievementFrame_LoadTextures"); end);
--     -- hooksecurefunc("AchievementMeta_OnEnter", function () print("AchievementMeta_OnEnter"); end);
--     -- hooksecurefunc("AchievementMeta_OnLeave", function () print("AchievementMeta_OnLeave"); end);
--     -- hooksecurefunc("AchievementShield_OnEnter", function () print("AchievementShield_OnEnter"); end);
--     -- hooksecurefunc("AchievementShield_OnLeave", function () print("AchievementShield_OnLeave"); end);
--     -- hooksecurefunc("AchievementFrameFilterDropDown_OnEnter", function () print("AchievementFrameFilterDropDown_OnEnter"); end);
--     -- hooksecurefunc("AchievementFrameAchievements_CheckGuildMembersTooltip", function () print("AchievementFrameAchievements_CheckGuildMembersTooltip"); end);
--     -- hooksecurefunc("AchievementFrame_FindDisplayedAchievement", function () print("AchievementFrame_FindDisplayedAchievement"); end);
--     hooksecurefunc("AchievementFrame_HideSearchPreview", function () print("AchievementFrame_HideSearchPreview"); end);
--     hooksecurefunc("AchievementFrame_UpdateSearchPreview", function () print("AchievementFrame_UpdateSearchPreview"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnUpdate", function () print("AchievementFrameSearchBox_OnUpdate"); end);
--     hooksecurefunc("AchievementFrameSearchProgressBar_OnUpdate", function () print("AchievementFrameSearchProgressBar_OnUpdate"); end);
--     hooksecurefunc("AchievementFrame_ShowSearchPreviewResults", function () print("AchievementFrame_ShowSearchPreviewResults"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnTextChanged", function () print("AchievementFrameSearchBox_OnTextChanged"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnLoad", function () print("AchievementFrameSearchBox_OnLoad"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnShow", function () print("AchievementFrameSearchBox_OnShow"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnEnterPressed", function () print("AchievementFrameSearchBox_OnEnterPressed"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnFocusLost", function () print("AchievementFrameSearchBox_OnFocusLost"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnFocusGained", function () print("AchievementFrameSearchBox_OnFocusGained"); end);
--     hooksecurefunc("AchievementFrameSearchBox_OnKeyDown", function () print("AchievementFrameSearchBox_OnKeyDown"); end);
--     hooksecurefunc("AchievementFrame_SetSearchPreviewSelection", function () print("AchievementFrame_SetSearchPreviewSelection"); end);
--     hooksecurefunc("AcheivementFullSearchResultsButton_OnClick", function () print("AcheivementFullSearchResultsButton_OnClick"); end);
--     hooksecurefunc("AchievementFrame_ShowFullSearch", function () print("AchievementFrame_ShowFullSearch"); end);
--     hooksecurefunc("AchievementFrame_UpdateFullSearchResults", function () print("AchievementFrame_UpdateFullSearchResults"); end);
--     hooksecurefunc("AchievementFrame_SelectSearchItem", function () print("AchievementFrame_SelectSearchItem"); end);
--     hooksecurefunc("AchievementSearchPreviewButton_OnShow", function () print("AchievementSearchPreviewButton_OnShow"); end);
--     hooksecurefunc("AchievementSearchPreviewButton_OnLoad", function () print("AchievementSearchPreviewButton_OnLoad"); end);
--     hooksecurefunc("AchievementSearchPreviewButton_OnEnter", function () print("AchievementSearchPreviewButton_OnEnter"); end);
--     hooksecurefunc("AchievementSearchPreviewButton_OnClick", function () print("AchievementSearchPreviewButton_OnClick"); end);
--     hooksecurefunc("AchievementFrameShowAllSearchResults_OnEnter", function () print("AchievementFrameShowAllSearchResults_OnEnter"); end);
--     hooksecurefunc("AchievementFrame_UpdateSearch", function () print("AchievementFrame_UpdateSearch"); end);
-- end