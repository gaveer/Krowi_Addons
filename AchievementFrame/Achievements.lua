-- [[ Category functionality ]] --
-- local blizzGetAchievementInfo;
-- function KrowiAF.GetAchievementInfo(...)
--     KrowiAF.Debug("GetAchievementInfo");
--     local args = {...}
--     local category, achievementID;
--     if #args == 1 then
--         achievementID = args[1];
--         KrowiAF.Debug("GetAchievementInfo for '" .. tostring(achievementID) .. "'");
--     elseif #args == 2 then
--         achievementID = KrowiAF.Categories[args[1]].more.Achievements[args[2]].ID;
--         KrowiAF.Debug("GetAchievementInfo for '" .. tostring(achievementID) .. "' (" .. tostring(args[1]) .. ", " .. tostring(args[2]) .. ")");
--     else
--         KrowiAF.Debug("GetAchievementInfo was called with a not defined number of parameters!");
--         return;
--     end

--     return blizzGetAchievementInfo(achievementID);
-- end

-- function KrowiAF.GetCategoryNumAchievements(categoryID)
--     KrowiAF.Debug("GetCategoryNumAchievements");
--     local numAchievements = 0;
--     local numCompleted = 0;
--     local completedOffset = 0;
--     for _, child in next, KrowiAF.Categories[categoryID].more.Achievements do
--         local _, _, _, completed = GetAchievementInfo(child.ID);
--         numAchievements = numAchievements + 1;
--         if completed then
--             numCompleted = numCompleted + 1;
--         end
--     end
--     KrowiAF.Debug(numAchievements);
--     KrowiAF.Debug(numCompleted);
--     KrowiAF.Debug(0);
--     -- if ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_All then
--         return numAchievements, numCompleted, 0;
--     -- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Complete then
--     --     return numCompleted, numCompleted, 0;
--     -- elseif ACHIEVEMENTUI_SELECTEDFILTER == AchievementFrame_GetCategoryNumAchievements_Incomplete then
--     --     return numAchievements - numCompleted, 0, numAchievements - numCompleted; -- need to check !!!
--     -- end
-- end

function KrowiAF.AchievementFrameAchievements_Update ()
    KrowiAF.Debug("AchievementFrameAchievements_Update");
    AchievementFrameAchievements_Update();

    -- local temp = GetCategoryNumAchievements;
    -- GetCategoryNumAchievements = KrowiAF.GetCategoryNumAchievements;
    -- GetAchievementInfo = KrowiAF.GetAchievementInfo;
    -- GetAchievementInfo = blizzGetAchievementInfo;
    -- GetCategoryNumAchievements = temp;

    -- KrowiAF.Debug("AchievementFrameAchievements_Update");
    -- local category = achievementFunctions.selectedCategory;
    -- KrowiAF.Debug("Selected category is '" .. tostring(category) .. "' with name '" .. KrowiAF.Categories[category].more.Name .. "'");

	-- local scrollFrame = AchievementFrameAchievementsContainer;

	-- local offset = HybridScrollFrame_GetOffset(scrollFrame);
    -- local buttons = scrollFrame.buttons;
    -- local numAchievements, numCompleted, completedOffset = KrowiAF.GetCategoryNumAchievements(category);
    -- KrowiAF.Debug(numAchievements);
    -- KrowiAF.Debug(numCompleted);
    -- KrowiAF.Debug(completedOffset);
	-- -- local numButtons = #buttons;

	-- -- If the current category is feats of strength and there are no entries then show the explanation text
	-- if ( AchievementFrame_IsFeatOfStrength() and #KrowiAF.Categories[category].more.Achievements == 0 ) then
	-- 	if ( AchievementFrame.selectedTab == 1 ) then
	-- 		AchievementFrameAchievementsFeatOfStrengthText:SetText(FEAT_OF_STRENGTH_DESCRIPTION);
	-- 	else
	-- 		AchievementFrameAchievementsFeatOfStrengthText:SetText(GUILD_FEAT_OF_STRENGTH_DESCRIPTION);
	-- 	end
	-- 	AchievementFrameAchievementsFeatOfStrengthText:Show();
	-- else
	-- 	AchievementFrameAchievementsFeatOfStrengthText:Hide();
	-- end

	-- local selection = AchievementFrameAchievements.selection;
	-- if selection then
	-- 	AchievementButton_ResetObjectives();
	-- end

	-- local extraHeight = scrollFrame.largeButtonHeight or ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT

	-- local achievementIndex;
	-- local displayedHeight = 0;
	-- for i = 1, #buttons do
	-- 	achievementIndex = i + offset + completedOffset;
	-- 	if ( achievementIndex > numAchievements + completedOffset ) then
	-- 		buttons[i]:Hide();
    --     else
    --         -- some workaround to not have to overwrite the entire AchievementButton_DisplayAchievement function
    --         GetAchievementInfo = KrowiAF.GetAchievementInfo;
	-- 		AchievementButton_DisplayAchievement(buttons[i], category, achievementIndex, selection);
    --         GetAchievementInfo = blizzGetAchievementInfo;
	-- 		displayedHeight = displayedHeight + buttons[i]:GetHeight();
	-- 	end
	-- end

	-- local totalHeight = numAchievements * ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT;
	-- totalHeight = totalHeight + (extraHeight - ACHIEVEMENTBUTTON_COLLAPSEDHEIGHT);

	-- HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight);

	-- if ( selection ) then
	-- 	AchievementFrameAchievements.selection = selection;
	-- else
	-- 	HybridScrollFrame_CollapseButton(scrollFrame);
    -- end
end