-- [[ Namespaces ]] --
local addonName, addon = ...;

addon.L = LibStub("AceLocale-3.0"):GetLocale(addonName);

addon.Faction = {}; -- Global faction data
addon.Faction.IsAlliance = UnitFactionGroup("player") == "Alliance";
addon.Faction.IsHorde = UnitFactionGroup("player") == "Horde";
addon.Faction.IsNeutral = UnitFactionGroup("player") == "Neutral";

local loadHelper = CreateFrame("Frame");
loadHelper:RegisterEvent("ADDON_LOADED");
loadHelper:RegisterEvent("PLAYER_LOGIN");

function loadHelper:OnEvent(event, arg1)
    if event == "ADDON_LOADED" then
        if arg1 == "Krowi_AchievementFilter" then -- This always needs to load
            addon.Diagnostics.Load();
            addon.Options.Load();
            addon.Icon.Load();
            addon.Tutorials.Load();
        elseif arg1 == "Blizzard_AchievementUI" then -- This needs the Blizzard_AchievementUI addon available to load
            addon.GUI.AchievementsFrame = addon.GUI.AchievementsFrame:New();
            addon.GUI.CategoriesFrame = addon.GUI.CategoriesFrame:New(addon.Categories, addon.GUI.AchievementsFrame);

            addon.GUI.Search.Load(addon.GUI.AchievementsFrame);

            addon.GUI.TabButton1 = addon.GUI.AchievementFrameTabButton:New(addon.L["T_TAB_TEXT"], addon.GUI.CategoriesFrame, addon.GUI.AchievementsFrame, addon.GUI.SearchBoxFrame);

            addon.Tutorials.HookTrigger(addon.GUI.TabButton1);
        end
    elseif event == "PLAYER_LOGIN" then -- This needs player achievement info which is not yet available on "ADDON_LOADED"
        addon.Diagnostics.Debug("- Loading expansion data");
        addon.Classic.Load();
        addon.TheBurningCrusade.Load();
        addon.WrathOfTheLichKing.Load();
        addon.Cataclysm.Load();
        addon.MistsOfPandaria.Load();
        addon.WarlordsOfDreanor.Load();
        addon.Legion.Load();
        addon.BattleForAzeroth.Load();
        addon.Shadowlands.Load();
        addon.Categories, addon.Achievements = addon.Data:GetLists(); -- This freezes the game if we load it outside of the loading screen
        addon.Diagnostics.Debug("- Expansion data loaded");
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);

function addon.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

function addon.ResetView(categoriesFrame, searchBoxFrame, fullSearchResultsFrame)
    addon.Diagnostics.Trace("addon.ResetView");

    if categoriesFrame.ID then -- Checking ID is to know if the frame is initialised or not
        local scrollBar = categoriesFrame.Container.ScrollBar;
        local button = categoriesFrame.Container.buttons[1];

        scrollBar:SetValue(0);

        button:Click(); -- Select the 1st category
        if button.Category.NotCollapsed then -- Make sure it's collapsed
            button:Click();
        end
    end

    if searchBoxFrame and searchBoxFrame.ID then
        searchBoxFrame:SetText("");
    end

    if fullSearchResultsFrame and fullSearchResultsFrame.ID then
        fullSearchResultsFrame:Hide();
    end
end

function addon.GetCategoryInfoTitle(categoryID)
    -- addon.Diagnostics.Trace("addon.GetCategoryInfoTitle"); -- Generates a lot of messages

    local title = GetCategoryInfo(categoryID);
    return title;
end

function addon.GetAchievement(id)
    addon.Diagnostics.Trace("addon.GetAchievement");

	for _, achievement in next, addon.Achievements do
		if achievement.ID == id then
			return achievement;
		end
	end
end

function addon.GetSafeScrollChildBottom(scrollChild)
	addon.Diagnostics.Trace("GetSafeScrollChildBottom");

	return scrollChild:GetBottom() or 0;
end

function addon.InjectMetatable(tbl,meta)
    return setmetatable(tbl,setmetatable(meta,getmetatable(tbl)));
end