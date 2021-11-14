-- [[ Namespaces ]] --
local addonName, addon = ...;

-- [[ Ace ]] --
addon.L = LibStub("AceLocale-3.0"):GetLocale(addonName);
addon.Event = {};
LibStub("AceEvent-3.0"):Embed(addon.Event);

-- [[ Personal libraries ]] --
addon.Util = LibStub("Krowi_Util-1.0");

-- [[ Binding names ]] --
BINDING_HEADER_AF_NAME = addon.MetaData.Title;
BINDING_NAME_AF_OPEN_TAB1 = addon.L["Toggle "] .. addon.L["Expansions"] .. addon.L[" tab"];
BINDING_NAME_AF_OPEN_TAB2 = addon.L["Toggle "] .. addon.L["Events"] .. addon.L[" tab"];
BINDING_NAME_AF_OPEN_TAB3 = addon.L["Toggle "] .. addon.L["Player vs. Player"] .. addon.L[" tab"];
BINDING_NAME_AF_OPEN_TAB4 = addon.L["Toggle "] .. addon.L["Specials"] .. addon.L[" tab"];

-- [[ Guild view ]] --
function addon.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

-- [[ Faction data ]] --
addon.Faction = {};
addon.Faction.IsAlliance = UnitFactionGroup("player") == "Alliance";
addon.Faction.IsHorde = UnitFactionGroup("player") == "Horde";
addon.Faction.IsNeutral = UnitFactionGroup("player") == "Neutral";

-- [[ Covenant data ]] --
function addon.GetActiveCovenant()
    return C_Covenants.GetActiveCovenantID() + 1; -- 1 offset since Covenant Enum is 1 based (lua) and Covenant Database Table 0 based
end

-- [[ Achievements ]] --
function addon.GetAchievementsInZone(mapID, getAll)
    addon.Diagnostics.Trace("addon.GetAchievementsInZone");

    -- Differentiate between 10 and 25 man raids and Normal and Heroic raids
    local player10 = GetDifficultyInfo(3); -- 10 player
    local player10Hc = GetDifficultyInfo(5); -- 10 player
    local player25 = GetDifficultyInfo(4); -- 25 player
    local player25Hc = GetDifficultyInfo(6); -- 25 player
    local _, _, _, difficulty = GetInstanceInfo();

    local achievements = {};
    if addon.Data.Maps[mapID] == nil then
        return achievements;
    else
        addon.Util.ConcatTables(achievements, addon.Data.Maps[mapID].Achievements);
    end

    if difficulty ~= "" then -- Need to add 10 and 25 when doing it from the map
        if difficulty == player10 or difficulty == player10Hc then
            -- checkCategory = not string.find(category.Name, player25);
            addon.Util.ConcatTables(achievements, addon.Data.Maps[mapID].Achievements10);
        elseif difficulty == player25 or difficulty == player25Hc then
            -- checkCategory = not string.find(category.Name, player10);
            addon.Util.ConcatTables(achievements, addon.Data.Maps[mapID].Achievements25);
        end
    elseif getAll then
        addon.Util.ConcatTables(achievements, addon.Data.Maps[mapID].Achievements10);
        addon.Util.ConcatTables(achievements, addon.Data.Maps[mapID].Achievements25);
    end

    return achievements;
end

function addon.GetAchievementInfo(achievementID, excludeNextPatch)
    local id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy = GetAchievementInfo(achievementID);
    if id then
        return id, name, points, completed, month, day, year, description, flags, icon, rewardText, isGuild, wasEarnedByMe, earnedBy;
    end

    if not excludeNextPatch then
        local achievement = addon.Data.NextPatchAchievements[achievementID];
        if achievement then
            return achievement[1], achievement[2], achievement[3], false, nil, nil, nil, achievement[4], achievement[5], achievement[6], achievement[7], false, nil, false;
        end
    end

    return nil; -- Achievement info not found, default function also returns nil when not found
end

function addon.GetAchievementNumbers(filterButton, filters, achievement, numOfAch, numOfCompAch, numOfNotObtAch) -- , numOfIncompAch
	if filterButton and filterButton.Validate(filters, achievement, true) > 0 then -- If set to false we lag the game
		numOfAch = numOfAch + 1;
		local _, _, _, completed = addon.GetAchievementInfo(achievement.ID);
		if completed then
			numOfCompAch = numOfCompAch + 1;
		-- else
		-- 	numOfIncompAch = numOfIncompAch + 1;
		elseif achievement.NotObtainable then
			numOfNotObtAch = numOfNotObtAch + 1;
		end
	end

	return numOfAch, numOfCompAch, numOfNotObtAch; -- , numOfIncompAch
end

local function ClearTree(categories)
    for i = #categories, 1, -1 do
        if categories[i].Achievements == nil or #categories[i].Achievements == 0 then -- No more achievements
            if categories[i].Children == nil or #categories[i].Children == 0 then -- And no more children
                categories[i].Parent:RemoveCategory(categories[i]);
            end
        end
    end
end

function addon.ClearFocusAchievement(achievement, update)
    achievement:ClearFocus();
    if addon.Options.db.Categories.Focused.ShowSubCategories then
        ClearTree(achievement.FocusedCategory:GetTree());
    end
    achievement.FocusedCategory:RemoveFocusedAchievement(achievement);
    if update ~= false then
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
    if (addon.Data.FocusedCategory.Achievements and #addon.Data.FocusedCategory.Achievements == 0) or (addon.Data.FocusedCategory.Children and #addon.Data.FocusedCategory.Children == 0) then
        SavedData.FocusedAchievements = nil;
        addon.Data.FocusedCategory.Achievements = nil;
    end
end

function addon.FocusAchievement(achievement, update)
    achievement:Focus();
    local focusedCategory = addon.Data.FocusedCategory;
    if addon.Options.db.Categories.Focused.ShowSubCategories then
        local categories = achievement.Category:GetTree();
        for _, category in next, categories do
            local newCategory = addon.Objects.AchievementCategory:New(category.Name);
            -- newCategory.Focused = true;

            local alreadyAdded;
            if focusedCategory.Children then
                for _, child in next, focusedCategory.Children do
                    if child.Name == newCategory.Name then
                        alreadyAdded = true;
                        focusedCategory = child;
                    end
                end
            end
            if alreadyAdded == nil then
                focusedCategory = focusedCategory:AddCategory(newCategory);
            end
            alreadyAdded = nil;
        end
    end
    focusedCategory:AddFocusedAchievement(achievement);
    if update ~= false then
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
end

function addon.IncludeAchievement(achievement, update)
    achievement:Include();
    if addon.Options.db.Categories.Excluded.ShowSubCategories then
        ClearTree(achievement.ExcludedCategory:GetTree());
    end
    achievement.ExcludedCategory:RemoveExcludedAchievement(achievement);
    if update ~= false then
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
    if (addon.Data.ExcludedCategory.Achievements and #addon.Data.ExcludedCategory.Achievements == 0) or (addon.Data.ExcludedCategory.Children and #addon.Data.ExcludedCategory.Children == 0) then
        SavedData.ExcludedAchievements = nil;
        addon.Data.ExcludedCategory.Achievements = nil;
    end
end

function addon.ExcludeAchievement(achievement, update)
    achievement:Exclude();
    if addon.Options.db.Categories.Excluded.Show then
        local excludedCategory = addon.Data.ExcludedCategory;
        if addon.Options.db.Categories.Excluded.ShowSubCategories then
            local categories = achievement.Category:GetTree();
            for _, category in next, categories do
                local newCategory = addon.Objects.AchievementCategory:New(category.Name);
                newCategory.Excluded = true;

                local alreadyAdded;
                if excludedCategory.Children then
                    for _, child in next, excludedCategory.Children do
                        if child.Name == newCategory.Name then
                            alreadyAdded = true;
                            excludedCategory = child;
                        end
                    end
                end
                if alreadyAdded == nil then
                    excludedCategory = excludedCategory:AddCategory(newCategory);
                end
                alreadyAdded = nil;
            end
        end
        excludedCategory:AddExcludedAchievement(achievement);
        if update ~= false then
            addon.GUI.CategoriesFrame:Update(true);
            addon.GUI.AchievementsFrame:ForceUpdate();
        end
    else
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
end

-- [[ Movable window ]] --
local function MakeMovable(frame, target)
    if frame:IsMovable() then -- Do not hook it multiple times if another addon already made it movable
        return;
    end

    target = target or frame;

    frame:SetMovable(true);
    frame:EnableMouse(true);
    frame:SetScript("OnMouseDown", function(frame, button)
        if button == "LeftButton" then
            target:StartMoving();
        end
    end);
    frame:SetScript("OnMouseUp", function(frame, button)
        target:StopMovingOrSizing();
    end);
end

function addon.MakeWindowMovable()
    if addon.Options.db.Window.Movable and AchievementFrame and AchievementFrameHeader then
        MakeMovable(AchievementFrame);
        MakeMovable(AchievementFrameHeader, AchievementFrame);
    end
end

-- [[ Tooltip ]] --
local progressBar = LibStub("Krowi_ProgressBar-1.0");
function addon.StatusBarTooltip(self, anchor)
	-- GameTooltip_SetDefaultAnchor(GameTooltip, self);
	GameTooltip:SetOwner(self, anchor or "ANCHOR_NONE");
    if anchor == nil then
	    GameTooltip:SetPoint("TOPLEFT", self, "TOPRIGHT", -3, -3);
    end
	GameTooltip:SetMinimumWidth(128, true);
	GameTooltip:SetText(self.name, 1, 1, 1, nil, true);
	local numOfNotObtAch = 0;
	if addon.Options.db.Tooltip.Categories.ShowNotObtainable then
		numOfNotObtAch = self.numOfNotObtAch;
	end
	progressBar:ShowProgressBar(GameTooltip, 0, self.numAchievements, self.numCompleted, numOfNotObtAch, 0, 0, addon.GreenRGB, addon.RedRGB, nil, nil, self.numCompletedText);
	GameTooltip:Show();
end

-- [[ Time functions ]] --
function addon.GetSecondsSince(date)
    date.day = date.monthDay;
    date.monthDay = nil;
    date.wday = date.weekday;
    date.weekday = nil;
    date.min = date.minute;
    date.minute = nil;

    return time(date);
end

-- [[ IAT integration ]] --
function addon.IsIATLoaded()
    return IsAddOnLoaded("InstanceAchievementTracker") and GetAddOnMetadata("InstanceAchievementTracker", "Version") >= "3.18.0";
end

-- [[ Load addon ]] --
local loadHelper = CreateFrame("Frame");
loadHelper:RegisterEvent("ADDON_LOADED"); -- 1
loadHelper:RegisterEvent("PLAYER_LOGIN"); -- 4
loadHelper:RegisterEvent("PLAYER_ENTERING_WORLD"); -- 5

function loadHelper:OnEvent(event, arg1, arg2)
    if event == "ADDON_LOADED" then
        if arg1 == "Krowi_AchievementFilter" then -- This always needs to load
            addon.Diagnostics.Load();
            addon.Data.ExportedCalendarEvents.InjectOptions()
            addon.Data.ExportedWorldEvents.InjectOptions()
            addon.Options.Load();

            addon.Data.SavedData.Load();

            addon.GUI:LoadWithAddon();

            addon.Icon.Load();
            addon.Tutorials.Load();
        elseif arg1 == "Blizzard_AchievementUI" then -- This needs the Blizzard_AchievementUI addon available to load
            addon.Data.Load();

            addon.GUI:LoadWithBlizzard_AchievementUI();

            addon.Data.LoadFocusedAchievements(addon.Data.Achievements);
            addon.Data.LoadExcludedAchievements(addon.Data.Achievements);

            addon.Tutorials.HookTrigger(addon.GUI.TabButtonExpansions);

            addon.GUI.ElvUISkin.Apply();

            addon.MakeWindowMovable();
        elseif arg1 == "ElvUI" then -- Just in case this addon loads before ElvUI
            addon.GUI.ElvUISkin.Apply();
        end
    elseif event == "PLAYER_LOGIN" then
        addon.GUI.ElvUISkin.ApplyToAlertFrames();
        addon.Data.ExportedCalendarEvents.Load(addon.Data.CalendarEvents);
        addon.Data.ExportedWorldEvents.Load(addon.Data.WorldEvents);
        addon.EventData.Load();

        if addon.Diagnostics.DebugEnabled() then
            hooksecurefunc(WorldMapFrame, "OnMapChanged", function()
                local mapID = WorldMapFrame.mapID;
                print(mapID);
            end);
        end
        addon.Diagnostics.DebugTable(addon.Objects.TimeDisplay);
    elseif event == "PLAYER_ENTERING_WORLD" then
        addon.Diagnostics.Debug("PLAYER_ENTERING_WORLD");
        addon.Diagnostics.Debug("isLogin: " .. tostring(arg1));
        addon.Diagnostics.Debug("isReload: " .. tostring(arg2));
         -- arg1 = isLogin, arg2 = isReload
        if arg1 then -- On a fresh login we need AREA_POIS_UPDATED to get world events
            loadHelper:RegisterEvent("AREA_POIS_UPDATED");
        end
        if arg2 then -- On reload we can get world events here since AREA_POIS_UPDATED does not always trigger and data is already available
            addon.GUI.AlertSystem.ShowActiveCalendarEvents();
            addon.GUI.AlertSystem.ShowActiveWorldEvents();
        end
    elseif event == "AREA_POIS_UPDATED" then
        addon.Diagnostics.Debug("AREA_POIS_UPDATED");
        if addon.EventData.GetActiveWorldEvents() ~= nil then
            -- It takes a couple of times in order to properly load all POI info
            addon.GUI.AlertSystem.ShowActiveCalendarEvents();
            addon.GUI.AlertSystem.ShowActiveWorldEvents();
            loadHelper:UnregisterEvent("AREA_POIS_UPDATED");
            addon.Diagnostics.Debug("UnregisterEvent AREA_POIS_UPDATED");
        end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);