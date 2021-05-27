-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FilterButton = {};
local filterButton = gui.FilterButton;

local numButtons = 0; -- Local ID for naming, starts at 0 and will increment if a new button is added

-- [[ Constructors ]] --
filterButton.__index = filterButton; -- Used to support OOP like code
function filterButton:New(categoriesFrame, achievementsFrame)
    diagnostics.Trace("filterButton:New");

	-- Increment ID
    numButtons = numButtons + 1;

    -- Create button
    local button = CreateFrame("DropDownToggleButton", "KrowiAF_FilterButton" .. numButtons, AchievementFrame, "KrowiAF_FilterButton_Template");
    core.InjectMetatable(button, filterButton);
    button:SetScript("OnMouseDown", filterButton.OnMouseDown);
	button:SetFrameLevel(button:GetParent():GetFrameLevel() + 7);

	-- Set properties
	button.ID = numButtons;
	button.CategoriesFrame = categoriesFrame;
    categoriesFrame.FilterButton = button;
    button.AchievementsFrame = achievementsFrame;
    achievementsFrame.FilterButton = button;

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, button:GetName());
    button:Hide();

    -- Set localization for texts already translated by Blizzard


    return button;
end

function filterButton:UpdateAchievementFrame()
    diagnostics.Trace("filterButton:UpdateAchievementFrame");

    self.CategoriesFrame:Update(true);
    self.AchievementsFrame:ForceUpdate(true); -- Issue #27: Fix
end

local menu = LibStub("KrowiMenu-1.0");
function filterButton:OnMouseDown()
    diagnostics.Trace("filterButton:OnMouseDown");

    UIMenuButtonStretchMixin.OnMouseDown(self, button);
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);

    -- Reset menu
	menu:Clear();

    -- Category Filters
    menu:AddFull({  Text = addon.L["Categories"],
                    IsTitle = true
                });

    menu:AddFull({  Text = addon.L["Merge Small Categories"],
                    Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                        return addon.Options.db.Filters.MergeSmallCategories
                    end,
                    Func = function()
                        addon.Options.db.Filters.MergeSmallCategories = not addon.Options.db.Filters.MergeSmallCategories;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });

    menu:AddSeparator();

    -- Achievement Filters
    menu:AddFull({  Text = addon.L["Achievements"],
                    IsTitle = true
                });

    menu:AddFull({  Text = addon.L["Completed"],
                    Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                        return addon.Options.db.Filters.Completion.Completed
                    end,
                    Func = function()
                        addon.Options.db.Filters.Completion.Completed = not addon.Options.db.Filters.Completion.Completed;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });
    menu:AddFull({  Text = addon.L["Not Completed"],
                    Checked = function() -- Same
                        return addon.Options.db.Filters.Completion.NotCompleted
                    end,
                    Func = function()
                        addon.Options.db.Filters.Completion.NotCompleted = not addon.Options.db.Filters.Completion.NotCompleted;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });
    menu:AddFull({  Text = addon.L["Obtainable"],
                    Checked = function() -- Same
                        return addon.Options.db.Filters.Obtainability.Obtainable
                    end,
                    Func = function()
                        addon.Options.db.Filters.Obtainability.Obtainable = not addon.Options.db.Filters.Obtainability.Obtainable;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });
    menu:AddFull({  Text = addon.L["Not Obtainable"],
                    Checked = function() -- Same
                        return addon.Options.db.Filters.Obtainability.NotObtainable;
                    end,
                    Func = function()
                        addon.Options.db.Filters.Obtainability.NotObtainable = not addon.Options.db.Filters.Obtainability.NotObtainable;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });

    local faction = addon.Objects.MenuItem:New({Text = addon.L["Faction"]});
    faction:AddChildFull({  Text = addon.L["Neutral"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Faction.Neutral;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Faction.Neutral = not addon.Options.db.Filters.Faction.Neutral;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddChildFull({  Text = addon.L["Alliance"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Faction.Alliance;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Faction.Alliance = not addon.Options.db.Filters.Faction.Alliance;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddChildFull({  Text = addon.L["Horde"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Faction.Horde;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Faction.Horde = not addon.Options.db.Filters.Faction.Horde;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddSeparator();
    faction:AddChildFull({  Text = addon.L["Select all"],
                            Func = function()
                                for faction, _ in next, addon.Options.db.Filters.Faction do
                                    addon.Options.db.Filters.Faction[faction] = true;
                                end
                                self:UpdateAchievementFrame();
                            end
                        });

    menu:Add(faction);

    local covenant = addon.Objects.MenuItem:New({Text = addon.L["Covenant"]});
    covenant:AddChildFull({ Text = addon.L["Neutral"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Covenant.Neutral;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Covenant.Neutral = not addon.Options.db.Filters.Covenant.Neutral;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Kyrian"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Covenant.Kyrian;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Covenant.Kyrian = not addon.Options.db.Filters.Covenant.Kyrian;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Venthyr"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Covenant.Venthyr;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Covenant.Venthyr = not addon.Options.db.Filters.Covenant.Venthyr;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Night Fae"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Covenant.NightFae;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Covenant.NightFae = not addon.Options.db.Filters.Covenant.NightFae;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Necrolord"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.Covenant.Necrolord;
                            end,
                            Func = function()
                                addon.Options.db.Filters.Covenant.Necrolord = not addon.Options.db.Filters.Covenant.Necrolord;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddSeparator();
    covenant:AddChildFull({ Text = addon.L["Select all"],
                            Func = function()
                                for covenant, _ in next, addon.Options.db.Filters.Covenant do
                                    addon.Options.db.Filters.Covenant[covenant] = true;
                                end
                                self:UpdateAchievementFrame();
                            end
                        });
    menu:Add(covenant);

    menu:AddFull({  Text = addon.L["Collapse Chain"],
                    Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                        return addon.Options.db.Filters.CollapseSeries
                    end,
                    Func = function()
                        addon.Options.db.Filters.CollapseSeries = not addon.Options.db.Filters.CollapseSeries;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });

    menu:AddSeparator();

    -- Sort By
    local sortBy = addon.Objects.MenuItem:New({Text = addon.L["Sort By"]});
    sortBy:AddChildFull({   Text = addon.L["Default"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.SortBy.Criteria == addon.L["Default"]
                            end,
                            Func = function()
                                addon.Options.db.Filters.SortBy.Criteria = addon.L["Default"];
                                menu:SetSelectedName(addon.L["Default"]);
                                self.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddChildFull({   Text = addon.L["Name"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.SortBy.Criteria == addon.L["Name"]
                            end,
                            Func = function()
                                addon.Options.db.Filters.SortBy.Criteria = addon.L["Name"];
                                menu:SetSelectedName(addon.L["Name"]);
                                self.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddSeparator();
    sortBy:AddChildFull({   Text = addon.L["Reverse Sort"],
                            Checked = function() -- Same
                                return addon.Options.db.Filters.SortBy.ReverseSort
                            end,
                            Func = function()
                                addon.Options.db.Filters.SortBy.ReverseSort = not addon.Options.db.Filters.SortBy.ReverseSort;
                                self.AchievementsFrame:ForceUpdate();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true,
                            IgnoreAsMenuSelection = true
                        });
    menu:Add(sortBy);

    menu:AddSeparator();

    local help = addon.Objects.MenuItem:New({   Text = addon.L["Help"],
                                                Func = function()
                                                    menu:Close();
                                                    addon.Tutorials.FeaturesTutorial:Reset();
                                                    addon.Tutorials.FeaturesTutorial:ShowTutorial();
                                                end});

    local pages = addon.Tutorials.FeaturesTutorial.Pages;

    help:AddChildFull({Text = addon.L["View Tutorial"], IsTitle = true});
    for i, _ in next, pages do
        help:AddChildFull({ Text = (pages[i].IsViewed and "" or "|T132049:0|t") .. string.format(addon.White, addon.RemoveColor(pages[i].SubTitle)),
                            Func = function()
                                menu:Close();
                                addon.Tutorials.FeaturesTutorial:ShowTutorial(i, i, i, true);
                            end
                        });
    end
    menu:Add(help);

    menu:AddFull({  Text = addon.L["Options"],
                    Func = function()
                        addon.Options.Open();
                    end
                });

	menu:Toggle(self, 96, 15);
end

function filterButton:Validate(achievement, ignoreCollapseSeries)
    -- diagnostics.Trace("filterButton:Validate " .. tostring(achievement.ID)); -- Generates a lot of messages

	local _, _, _, completed = addon.GetAchievementInfo(achievement.ID);
	if not addon.Options.db.Filters.Completion.Completed and completed then
		return -1;
	end
	if not addon.Options.db.Filters.Completion.NotCompleted and not completed then
		return -2;
	end
	if not addon.Options.db.Filters.Obtainability.Obtainable and achievement.NotObtainable == nil then
		return -3;
	end
	if not addon.Options.db.Filters.Obtainability.NotObtainable and achievement.NotObtainable then
		return -4;
	end
	if not addon.Options.db.Filters.Faction.Neutral and achievement.Faction == nil then
		return -5;
	end
	if not addon.Options.db.Filters.Faction.Alliance and achievement.Faction == addon.Objects.Faction.Alliance then
		return -6;
	end
	if not addon.Options.db.Filters.Faction.Horde and achievement.Faction == addon.Objects.Faction.Horde then
		return -7;
	end
	if not addon.Options.db.Filters.Covenant.Neutral and achievement.Covenant == nil then
		return -8;
	end
	if not addon.Options.db.Filters.Covenant.Kyrian and achievement.Covenant == addon.Objects.Covenant.Kyrian then
		return -9;
	end
	if not addon.Options.db.Filters.Covenant.Venthyr and achievement.Covenant == addon.Objects.Covenant.Venthyr then
		return -10;
	end
	if not addon.Options.db.Filters.Covenant.NightFae and achievement.Covenant == addon.Objects.Covenant.NightFae then
		return -11;
	end
	if not addon.Options.db.Filters.Covenant.Necrolord and achievement.Covenant == addon.Objects.Covenant.Necrolord then
		return -12;
	end
    if addon.Options.db.Filters.CollapseSeries and ignoreCollapseSeries ~= true then
        local _, nextCompleted = GetNextAchievement(achievement.ID);
        if nextCompleted then
            return -13;
        end
        local prevID = GetPreviousAchievement(achievement.ID);
        if prevID ~= nil then
            local _, _, _, prevCompleted = addon.GetAchievementInfo(prevID);
            if not prevCompleted then
                return -13;
            end
        end
    end

	return 1;
end

function filterButton:SetFilters(achievement)
    diagnostics.Trace("filterButton:SetFilters");

    local iterations = 0;
    while true do
        local id = self:Validate(achievement);
        if id == 1 then
            if iterations > 0 then -- If 0, nothing changed so no need to update
                self:UpdateAchievementFrame();
            end
            return; -- Jump out of loop
        elseif id == -1 then
            addon.Options.db.Filters.Completion.Completed = not addon.Options.db.Filters.Completion.Completed;
        elseif id == -2 then
            addon.Options.db.Filters.Completion.NotCompleted = not addon.Options.db.Filters.Completion.NotCompleted;
        elseif id == -3 then
            addon.Options.db.Filters.Obtainability.Obtainable = not addon.Options.db.Filters.Obtainability.Obtainable;
        elseif id == -4 then
            addon.Options.db.Filters.Obtainability.NotObtainable = not addon.Options.db.Filters.Obtainability.NotObtainable;
        elseif id == -5 then
            addon.Options.db.Filters.Faction.Neutral = not addon.Options.db.Filters.Faction.Neutral;
        elseif id == -6 then
            addon.Options.db.Filters.Faction.Alliance = not addon.Options.db.Filters.Faction.Alliance;
        elseif id == -7 then
            addon.Options.db.Filters.Faction.Horde = not addon.Options.db.Filters.Faction.Horde;
        elseif id == -8 then
            addon.Options.db.Filters.Covenant.Neutral = not addon.Options.db.Filters.Covenant.Neutral;
        elseif id == -9 then
            addon.Options.db.Filters.Covenant.Kyrian = not addon.Options.db.Filters.Covenant.Kyrian;
        elseif id == -10 then
            addon.Options.db.Filters.Covenant.Venthyr = not addon.Options.db.Filters.Covenant.Venthyr;
        elseif id == -11 then
            addon.Options.db.Filters.Covenant.NightFae = not addon.Options.db.Filters.Covenant.NightFae;
        elseif id == -12 then
            addon.Options.db.Filters.Covenant.Necrolord = not addon.Options.db.Filters.Covenant.Necrolord;
        elseif id == -13 then
            return; -- This filter can't be changed here. See AchievementsFrame SelectAchievement
        end

        iterations = iterations + 1;
    end
end

function filterButton:GetHighestAchievementWhenCollapseSeries(achievement)
    diagnostics.Trace("filterButton:GetHighestCollapsedSeriesAchievement");

    if not achievement then
        return;
    end

    if addon.Options.db.Filters.CollapseSeries then
		local nextID, completed = GetNextAchievement(achievement.ID);
		local nextAchievement = addon.GetAchievement(nextID);
		if nextAchievement and completed then
			local newID, newAchievement;
			while nextAchievement and completed do
				newID, completed = GetNextAchievement(nextAchievement.ID);
				newAchievement = addon.GetAchievement(newID);
				if newAchievement and completed then
					nextAchievement = newAchievement;
				end
			end
			achievement = nextAchievement;
		end
	end

    return achievement;
end