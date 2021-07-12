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
BINDING_NAME_AF_OPEN_TAB1 = addon.L["BINDING_NAME_AF_OPEN_TAB1"];

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

function addon.ExcludeAchievement(achievement, update)
    achievement:Exclude();
    if addon.Options.db.Categories.ShowExcludedCategory then
        addon.Data.ExcludedCategory:AddAchievement(achievement);
        if update ~= false then
            addon.GUI.CategoriesFrame:Update(true);
            addon.GUI.AchievementsFrame:ForceUpdate();
        end
    else
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
end

function addon.IncludeAchievement(achievement, update)
    achievement:Include();
    addon.Data.ExcludedCategory:RemoveAchievement(achievement);
    if update ~= false then
        addon.GUI.CategoriesFrame:Update(true);
        addon.GUI.AchievementsFrame:ForceUpdate();
    end
    if #addon.Data.ExcludedCategory.Achievements < 1 then
        SavedData.ExcludedAchievements = nil;
        addon.Data.ExcludedCategory.Achievements = nil;
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

-- [[ IAT integration ]] --
function addon.IsIATLoaded()
    return IsAddOnLoaded("InstanceAchievementTracker") and GetAddOnMetadata("InstanceAchievementTracker", "Version") >= "3.18.0";
end

-- [[ Load addon ]] --
local loadHelper = CreateFrame("Frame");
loadHelper:RegisterEvent("ADDON_LOADED");
loadHelper:RegisterEvent("PLAYER_LOGIN");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == "Krowi_AchievementFilter" then -- This always needs to load
            addon.Diagnostics.Load();
            addon.Options.Load();

            addon.Data.SavedData.Load();

            addon.GUI:LoadWithAddon();

            addon.Icon.Load();
            addon.Tutorials.Load();
        elseif arg1 == "Blizzard_AchievementUI" then -- This needs the Blizzard_AchievementUI addon available to load
            addon.Data.Load();

            addon.GUI:LoadWithBlizzard_AchievementUI();
            
            addon.Data.LoadExcludedAchievements(addon.Data.Achievements);

            addon.Tutorials.HookTrigger(addon.GUI.TabButton1);

            addon.GUI.ElvUISkin.Apply();
        elseif arg1 == "ElvUI" then -- Just in case this addon loads before ElvUI
            addon.GUI.ElvUISkin.Apply();
        end
    elseif event == "PLAYER_LOGIN" then
        -- addon.GUI.FilterButton:ResetFilters();

        if addon.Diagnostics.DebugEnabled() then
            hooksecurefunc(WorldMapFrame, "OnMapChanged", function()
                local mapID = WorldMapFrame.mapID;
                print(mapID);
            end);
        end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);