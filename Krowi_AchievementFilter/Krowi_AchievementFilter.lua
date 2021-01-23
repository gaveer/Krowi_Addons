local addonName, addon = ...;

addon.L = LibStub(addon.Libs.AceLocale):GetLocale(addonName);

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

            addon.GUI.Search.Load();

            addon.GUI.TabButton1 = addon.GUI.AchievementFrameTabButton:New(addon.L["T_TAB_TEXT"], addon.GUI.CategoriesFrame, addon.GUI.AchievementsFrame, addon.GUI.SearchBox.Frame);
            
            addon.Tutorials.HookTrigger(addon.GUI.TabButton1);
            -- HookDebug();
        end
    elseif event == "PLAYER_LOGIN" then -- This needs player achievement info which is not yet available on "ADDON_LOADED"
        addon.Classic.Load();
        addon.TheBurningCrusade.Load();
        addon.WrathOfTheLichKing.Load();
        addon.Cataclysm.Load();
        addon.MistsOfPandaria.Load();
        addon.WarlordsOfDreanor.Load();
        addon.Legion.Load();
        addon.BattleForAzeroth.Load();
        addon.Shadowlands.Load();
        addon.Categories, addon.Achievements = addon.Data:GetList(); -- This freezes the game if we load it outside of the loading screen

        -- TEST = {};
        -- if addon.Diagnostics.DebugEnabled() then
        --     for _, category in next, addon.Categories do
        --         local parentName = "";
        --         if category.Parent ~= nil then
        --             parentName = category.Parent.Name;
        --         end
        --         tinsert(TEST, {parentName, category.Name});
        --     end
        -- end
    end
end
loadHelper:SetScript("OnEvent", loadHelper.OnEvent);

function addon.InGuildView()
    return AchievementFrameHeaderTitle:GetText() == GUILD_ACHIEVEMENTS_TITLE;
end

function addon.ResetView(categoriesFrame)
    addon.Diagnostics.Trace("addon.ResetView");

	local scrollBar = categoriesFrame.Container.ScrollBar;
	local buttons = categoriesFrame.Container.buttons;

	scrollBar:SetValue(0);

    KrowiAF_AchievementCategoryButton_OnClick(buttons[1]); -- Select the 1st category
    if buttons[1].Category.NotCollapsed then -- Make sure it's collapsed
        KrowiAF_AchievementCategoryButton_OnClick(buttons[1]);
    end

    -- This should also clear the search box text but this is for later, not needed right now
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