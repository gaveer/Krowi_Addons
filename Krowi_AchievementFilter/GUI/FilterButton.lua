-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FilterButton = {};
local filterButton = gui.FilterButton;

local defaults = {
    profile = {
        MergeSmallCategories = true,
        Completion = {
            Completed = true,
            NotCompleted = true
        },
        Obtainability = {
            Obtainable = true,
            NotObtainable = false
        },
        Faction = {
            Neutral = true,
            Alliance = false,
            Horde = false
        },
        Covenant = {
            Neutral = true,
            Kyrian = false,
            Venthyr = false,
            NightFae = false,
            Necrolord = false
        },
        CollapseSeries = true,
        Excluded = false,
        SortBy = {
            Criteria = addon.L["Default"],
            ReverseSort = false
        },
        CurrentZone = {
            Completion = {
                Completed = false,
                NotCompleted = true
            },
            Obtainability = {
                Obtainable = true,
                NotObtainable = false
            },
            Faction = {
                Neutral = true,
                Alliance = false,
                Horde = false
            },
            Covenant = {
                Neutral = true,
                Kyrian = false,
                Venthyr = false,
                NightFae = false,
                Necrolord = false
            },
            CollapseSeries = true,
            Excluded = false,
            SortBy = {
                Criteria = addon.L["Default"],
                ReverseSort = false
            }
        },
        SelectedZone = {
            Completion = {
                Completed = false,
                NotCompleted = true
            },
            Obtainability = {
                Obtainable = true,
                NotObtainable = false
            },
            Faction = {
                Neutral = true,
                Alliance = false,
                Horde = false
            },
            Covenant = {
                Neutral = true,
                Kyrian = false,
                Venthyr = false,
                NightFae = false,
                Necrolord = false
            },
            CollapseSeries = true,
            Excluded = false,
            SortBy = {
                Criteria = addon.L["Default"],
                ReverseSort = false
            }
        },
        ExcludedCategory = {
            Completion = {
                Completed = true,
                NotCompleted = true
            },
            Obtainability = {
                Obtainable = true,
                NotObtainable = true
            },
            Faction = {
                Neutral = true,
                Alliance = false,
                Horde = false
            },
            Covenant = {
                Neutral = true,
                Kyrian = false,
                Venthyr = false,
                NightFae = false,
                Necrolord = false
            },
            CollapseSeries = true,
            Excluded = true,
            SortBy = {
                Criteria = addon.L["Name"],
                ReverseSort = false
            }
        }
    }
}

local ResetFilters;

-- [[ Constructors ]] --
filterButton.__index = filterButton; -- Used to inject all the namespace functions to the frame
function filterButton:Load()
    diagnostics.Trace("filterButton:Load");

    -- Create button
    local button = CreateFrame("DropDownToggleButton", "KrowiAF_FilterButton", AchievementFrame, "KrowiAF_FilterButton_Template");
    core.InjectMetatable(button, filterButton); -- Inject all the namespace functions to the frame
    button:SetScript("OnMouseDown", filterButton.OnMouseDown);
	button:SetFrameLevel(button:GetParent():GetFrameLevel() + 7);

    -- Load filters
    button.Filters = LibStub("AceDB-3.0"):New("Filters", defaults, true);
    button.Filters.db = button.Filters.profile;
    ResetFilters(button);

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, button:GetName());
    button:Hide();

	addon.GUI.FilterButton = button; -- Overwrite with the actual frame since all functions are injected to it
end

function filterButton:UpdateAchievementFrame()
    diagnostics.Trace("filterButton:UpdateAchievementFrame");

    gui.CategoriesFrame:Update(true);
    gui.AchievementsFrame:ForceUpdate(true); -- Issue #27: Fix
end

local menu = LibStub("Krowi_Menu-1.0");
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
                        return self.Filters.db.MergeSmallCategories
                    end,
                    Func = function()
                        self.Filters.db.MergeSmallCategories = not self.Filters.db.MergeSmallCategories;
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

    self:AddAchievementFilters(menu, nil, self.Filters.db);

    menu:AddSeparator();

    self:AddAchievementFilters(menu, addon.Objects.MenuItem:New({Text = addon.L["Current Zone"]}), self.Filters.db.CurrentZone);
    self:AddAchievementFilters(menu, addon.Objects.MenuItem:New({Text = addon.L["Selected Zone"]}), self.Filters.db.SelectedZone);
    if addon.Options.db.Categories.ShowExcludedCategory then
        self:AddAchievementFilters(menu, addon.Objects.MenuItem:New({Text = addon.L["Excluded"]}), self.Filters.db.ExcludedCategory);
    end

    menu:AddSeparator();

    local help = addon.Objects.MenuItem:New({   Text = addon.L["Help"],
                                                Func = function()
                                                    menu:Close();
                                                    addon.Tutorials.FeaturesTutorial:Reset();
                                                    addon.Tutorials.FeaturesTutorial:ShowTutorial();
                                                end});

    local pages = addon.Tutorials.FeaturesTutorial.Pages;

    help:AddFull({Text = addon.L["View Tutorial"], IsTitle = true});
    for i, _ in next, pages do
        help:AddFull({ Text = (pages[i].IsViewed and "" or "|T132049:0|t") .. string.format(addon.White, addon.RemoveColor(pages[i].SubTitle)),
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

function filterButton:AddAchievementFilters(menu, childMenu, filters)
    local tmpMenu = childMenu or menu;

    tmpMenu:AddFull({	Text = addon.L["Completed"],
                        Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                            return filters.Completion.Completed
                        end,
                        Func = function()
                            filters.Completion.Completed = not filters.Completion.Completed;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    tmpMenu:AddFull({	Text = addon.L["Not Completed"],
                        Checked = function() -- Same
                            return filters.Completion.NotCompleted
                        end,
                        Func = function()
                            filters.Completion.NotCompleted = not filters.Completion.NotCompleted;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    tmpMenu:AddFull({	Text = addon.L["Obtainable"],
                        Checked = function() -- Same
                            return filters.Obtainability.Obtainable
                        end,
                        Func = function()
                            filters.Obtainability.Obtainable = not filters.Obtainability.Obtainable;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    tmpMenu:AddFull({	Text = addon.L["Not Obtainable"],
                        Checked = function() -- Same
                            return filters.Obtainability.NotObtainable;
                        end,
                        Func = function()
                            filters.Obtainability.NotObtainable = not filters.Obtainability.NotObtainable;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });

    local faction = addon.Objects.MenuItem:New({Text = addon.L["Faction"]});
    faction:AddFull({  Text = addon.L["Neutral"],
                        Checked = function() -- Same
                            return filters.Faction.Neutral;
                        end,
                        Func = function()
                            filters.Faction.Neutral = not filters.Faction.Neutral;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    faction:AddFull({  Text = addon.L["Alliance"],
                        Checked = function() -- Same
                            return filters.Faction.Alliance;
                        end,
                        Func = function()
                            filters.Faction.Alliance = not filters.Faction.Alliance;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    faction:AddFull({  Text = addon.L["Horde"],
                        Checked = function() -- Same
                            return filters.Faction.Horde;
                        end,
                        Func = function()
                            filters.Faction.Horde = not filters.Faction.Horde;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    faction:AddSeparator();
    faction:AddFull({  Text = addon.L["Select all"],
                        Func = function()
                            for faction, _ in next, filters.Faction do
                                filters.Faction[faction] = true;
                            end
                            self:UpdateAchievementFrame();
                        end
                    });
    tmpMenu:Add(faction);

    local covenant = addon.Objects.MenuItem:New({Text = addon.L["Covenant"]});
    covenant:AddFull({ Text = addon.L["Neutral"],
                        Checked = function() -- Same
                            return filters.Covenant.Neutral;
                        end,
                        Func = function()
                            filters.Covenant.Neutral = not filters.Covenant.Neutral;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    covenant:AddFull({ Text = addon.L["Kyrian"],
                        Checked = function() -- Same
                            return filters.Covenant.Kyrian;
                        end,
                        Func = function()
                            filters.Covenant.Kyrian = not filters.Covenant.Kyrian;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    covenant:AddFull({ Text = addon.L["Venthyr"],
                        Checked = function() -- Same
                            return filters.Covenant.Venthyr;
                        end,
                        Func = function()
                            filters.Covenant.Venthyr = not filters.Covenant.Venthyr;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    covenant:AddFull({ Text = addon.L["Night Fae"],
                        Checked = function() -- Same
                            return filters.Covenant.NightFae;
                        end,
                        Func = function()
                            filters.Covenant.NightFae = not filters.Covenant.NightFae;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    covenant:AddFull({ Text = addon.L["Necrolord"],
                        Checked = function() -- Same
                            return filters.Covenant.Necrolord;
                        end,
                        Func = function()
                            filters.Covenant.Necrolord = not filters.Covenant.Necrolord;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });
    covenant:AddSeparator();
    covenant:AddFull({ Text = addon.L["Select all"],
                        Func = function()
                            for covenant, _ in next, filters.Covenant do
                                filters.Covenant[covenant] = true;
                            end
                            self:UpdateAchievementFrame();
                        end
                    });
    tmpMenu:Add(covenant);

    tmpMenu:AddFull({	Text = addon.L["Collapse Chain"],
                        Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                            return filters.CollapseSeries
                        end,
                        Func = function()
                            filters.CollapseSeries = not filters.CollapseSeries;
                            self:UpdateAchievementFrame();
                        end,
                        IsNotRadio = true,
                        NotCheckable = false,
                        KeepShownOnClick = true
                    });

    tmpMenu:AddFull({	Text = addon.L["Excluded"],
                    Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                        return filters.Excluded
                    end,
                    Func = function()
                        filters.Excluded = not filters.Excluded;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });

    tmpMenu:AddSeparator();

    local sortBy = addon.Objects.MenuItem:New({Text = addon.L["Sort By"]});
    sortBy:AddFull({   Text = addon.L["Default"],
                            Checked = function() -- Same
                                return filters.SortBy.Criteria == addon.L["Default"]
                            end,
                            Func = function()
                                filters.SortBy.Criteria = addon.L["Default"];
                                menu:SetSelectedName(addon.L["Default"]);
                                gui.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddFull({   Text = addon.L["Name"],
                            Checked = function() -- Same
                                return filters.SortBy.Criteria == addon.L["Name"]
                            end,
                            Func = function()
                                filters.SortBy.Criteria = addon.L["Name"];
                                menu:SetSelectedName(addon.L["Name"]);
                                gui.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddFull({   Text = addon.L["Completion"],
                            Checked = function() -- Same
                                return filters.SortBy.Criteria == addon.L["Completion"]
                            end,
                            Func = function()
                                filters.SortBy.Criteria = addon.L["Completion"];
                                menu:SetSelectedName(addon.L["Completion"]);
                                gui.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddFull({   Text = addon.L["ID"],
                            Checked = function() -- Same
                                return filters.SortBy.Criteria == addon.L["ID"]
                            end,
                            Func = function()
                                filters.SortBy.Criteria = addon.L["ID"];
                                menu:SetSelectedName(addon.L["ID"]);
                                gui.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddSeparator();
    sortBy:AddFull({   Text = addon.L["Reverse Sort"],
                            Checked = function() -- Same
                                return filters.SortBy.ReverseSort
                            end,
                            Func = function()
                                filters.SortBy.ReverseSort = not filters.SortBy.ReverseSort;
                                gui.AchievementsFrame:ForceUpdate();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true,
                            IgnoreAsMenuSelection = true
                        });
    tmpMenu:Add(sortBy);

    if childMenu then
        menu:Add(tmpMenu);
    end
end

function filterButton.Validate(filters, achievement, ignoreCollapseSeries)
    -- diagnostics.Trace("filterButton.Validate " .. tostring(achievement.ID)); -- Generates a lot of messages

    local _, _, _, completed = addon.GetAchievementInfo(achievement.ID);
    if not filters.Completion.Completed and completed then
        return -1;
    end
    if not filters.Completion.NotCompleted and not completed then
        return -2;
    end
    if not filters.Obtainability.Obtainable and achievement.NotObtainable == nil then
        return -3;
    end
    if not filters.Obtainability.NotObtainable and achievement.NotObtainable then
        return -4;
    end
    if not filters.Faction.Neutral and achievement.Faction == nil then
        return -5;
    end
    if not filters.Faction.Alliance and achievement.Faction == addon.Objects.Faction.Alliance then
        return -6;
    end
    if not filters.Faction.Horde and achievement.Faction == addon.Objects.Faction.Horde then
        return -7;
    end
    if not filters.Covenant.Neutral and achievement.Covenant == nil then
        return -8;
    end
    if not filters.Covenant.Kyrian and achievement.Covenant == addon.Objects.Covenant.Kyrian then
        return -9;
    end
    if not filters.Covenant.Venthyr and achievement.Covenant == addon.Objects.Covenant.Venthyr then
        return -10;
    end
    if not filters.Covenant.NightFae and achievement.Covenant == addon.Objects.Covenant.NightFae then
        return -11;
    end
    if not filters.Covenant.Necrolord and achievement.Covenant == addon.Objects.Covenant.Necrolord then
        return -12;
    end
    if filters.CollapseSeries and ignoreCollapseSeries ~= true then
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
    if not filters.Excluded and achievement.Excluded then
        return -14;
    end

    return 1;
end

function filterButton:AutoValidate(achievement, ignoreCollapseSeries)
    return self.Validate(self:GetFilters(), achievement, ignoreCollapseSeries);
end

function filterButton:GetHighestAchievementWhenCollapseSeries(achievement)
    diagnostics.Trace("filterButton:GetHighestCollapsedSeriesAchievement");

    if not achievement then
        return;
    end

    if self.Filters.db.CollapseSeries then
		local nextID, completed = GetNextAchievement(achievement.ID);
		local nextAchievement = addon.Data.Achievements[nextID];
		if nextAchievement and completed then
			local newID, newAchievement;
			while nextAchievement and completed do
				newID, completed = GetNextAchievement(nextAchievement.ID);
				newAchievement = addon.Data.Achievements[newID];
				if newAchievement and completed then
					nextAchievement = newAchievement;
				end
			end
			achievement = nextAchievement;
		end
	end

    return achievement;
end

function filterButton:SetFilters(achievement)
    diagnostics.Trace("filterButton:SetFilters");

    local iterations = 0;
    while true do
        local id = self.Validate(self.Filters.db, achievement);
        if id == 1 then
            if iterations > 0 then -- If 0, nothing changed so no need to update
                self:UpdateAchievementFrame();
            end
            return; -- Jump out of loop
        elseif id == -1 then
            self.Filters.db.Completion.Completed = not self.Filters.db.Completion.Completed;
        elseif id == -2 then
            self.Filters.db.Completion.NotCompleted = not self.Filters.db.Completion.NotCompleted;
        elseif id == -3 then
            self.Filters.db.Obtainability.Obtainable = not self.Filters.db.Obtainability.Obtainable;
        elseif id == -4 then
            self.Filters.db.Obtainability.NotObtainable = not self.Filters.db.Obtainability.NotObtainable;
        elseif id == -5 then
            self.Filters.db.Faction.Neutral = not self.Filters.db.Faction.Neutral;
        elseif id == -6 then
            self.Filters.db.Faction.Alliance = not self.Filters.db.Faction.Alliance;
        elseif id == -7 then
            self.Filters.db.Faction.Horde = not self.Filters.db.Faction.Horde;
        elseif id == -8 then
            self.Filters.db.Covenant.Neutral = not self.Filters.db.Covenant.Neutral;
        elseif id == -9 then
            self.Filters.db.Covenant.Kyrian = not self.Filters.db.Covenant.Kyrian;
        elseif id == -10 then
            self.Filters.db.Covenant.Venthyr = not self.Filters.db.Covenant.Venthyr;
        elseif id == -11 then
            self.Filters.db.Covenant.NightFae = not self.Filters.db.Covenant.NightFae;
        elseif id == -12 then
            self.Filters.db.Covenant.Necrolord = not self.Filters.db.Covenant.Necrolord;
        elseif id == -13 then
            return; -- This filter can't be changed here. See AchievementsFrame SelectAchievement
        elseif id == -14 then
            self.Filters.db.Excluded = not self.Filters.db.Excluded;
        end

        iterations = iterations + 1;
    end
end

function filterButton:GetFilters()
	if gui.CategoriesFrame.SelectedCategory == addon.Data.CurrentZoneCategory then
		return self.Filters.db.CurrentZone;
	elseif gui.CategoriesFrame.SelectedCategory == addon.Data.SelectedZoneCategory then
		return self.Filters.db.SelectedZone;
	elseif gui.CategoriesFrame.SelectedCategory == addon.Data.ExcludedCategory then
		return self.Filters.db.ExcludedCategory;
	end

    return self.Filters.db;
end

function ResetFilters(self)
    -- Always reset faction filter
    self.Filters.db.Faction.Neutral = true;
    self.Filters.db.Faction.Alliance = addon.Faction.IsAlliance;
    self.Filters.db.Faction.Horde = addon.Faction.IsHorde;
    self.Filters.db.CurrentZone.Faction.Neutral = true;
    self.Filters.db.CurrentZone.Faction.Alliance = addon.Faction.IsAlliance;
    self.Filters.db.CurrentZone.Faction.Horde = addon.Faction.IsHorde;
    self.Filters.db.SelectedZone.Faction.Neutral = true;
    self.Filters.db.SelectedZone.Faction.Alliance = addon.Faction.IsAlliance;
    self.Filters.db.SelectedZone.Faction.Horde = addon.Faction.IsHorde;
    self.Filters.db.ExcludedCategory.Faction.Neutral = true;
    self.Filters.db.ExcludedCategory.Faction.Alliance = addon.Faction.IsAlliance;
    self.Filters.db.ExcludedCategory.Faction.Horde = addon.Faction.IsHorde;

    -- Always reset covenant filter
    for covenant, _ in next, self.Filters.db.Covenant do
        self.Filters.db.Covenant[covenant] = false;
    end
    self.Filters.db.Covenant.Neutral = true;
    self.Filters.db.Covenant[addon.Objects.Covenant[addon.GetActiveCovenant()]] = true;
    for covenant, _ in next, self.Filters.db.CurrentZone.Covenant do
        self.Filters.db.CurrentZone.Covenant[covenant] = false;
    end
    self.Filters.db.CurrentZone.Covenant.Neutral = true;
    self.Filters.db.CurrentZone.Covenant[addon.Objects.Covenant[addon.GetActiveCovenant()]] = true;
    for covenant, _ in next, self.Filters.db.SelectedZone.Covenant do
        self.Filters.db.SelectedZone.Covenant[covenant] = false;
    end
    self.Filters.db.SelectedZone.Covenant.Neutral = true;
    self.Filters.db.SelectedZone.Covenant[addon.Objects.Covenant[addon.GetActiveCovenant()]] = true;
    for covenant, _ in next, self.Filters.db.ExcludedCategory.Covenant do
        self.Filters.db.ExcludedCategory.Covenant[covenant] = false;
    end
    self.Filters.db.ExcludedCategory.Covenant.Neutral = true;
    self.Filters.db.ExcludedCategory.Covenant[addon.Objects.Covenant[addon.GetActiveCovenant()]] = true;
end