-- [[ Namespaces ]] --
local _, addon = ...;
local core = addon.Core;
local diagnostics = addon.Diagnostics;
local gui = addon.GUI;
gui.FilterButton = {};
local filterButton = gui.FilterButton;

local numButtons = 0; -- Local ID for naming, starts at 0 and will increment if a new button is added

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
            CollapseSeries = true
        },
        SortBy = {
            Criteria = addon.L["Default"],
            ReverseSort = false
        }
    }
}

local ResetFilters;

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

    -- Load filters
    button.Filters = LibStub("AceDB-3.0"):New("Filters", defaults, true);
    button.Filters.db = button.Filters.profile;
    ResetFilters(button);

	tinsert(ACHIEVEMENTFRAME_SUBFRAMES, button:GetName());
    button:Hide();

    return button;
end

function filterButton:UpdateAchievementFrame()
    diagnostics.Trace("filterButton:UpdateAchievementFrame");

    self.CategoriesFrame:Update(true);
    self.AchievementsFrame:ForceUpdate(true); -- Issue #27: Fix
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

    menu:AddFull({  Text = addon.L["Completed"],
                    Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                        return self.Filters.db.Completion.Completed
                    end,
                    Func = function()
                        self.Filters.db.Completion.Completed = not self.Filters.db.Completion.Completed;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });
    menu:AddFull({  Text = addon.L["Not Completed"],
                    Checked = function() -- Same
                        return self.Filters.db.Completion.NotCompleted
                    end,
                    Func = function()
                        self.Filters.db.Completion.NotCompleted = not self.Filters.db.Completion.NotCompleted;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });
    menu:AddFull({  Text = addon.L["Obtainable"],
                    Checked = function() -- Same
                        return self.Filters.db.Obtainability.Obtainable
                    end,
                    Func = function()
                        self.Filters.db.Obtainability.Obtainable = not self.Filters.db.Obtainability.Obtainable;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });
    menu:AddFull({  Text = addon.L["Not Obtainable"],
                    Checked = function() -- Same
                        return self.Filters.db.Obtainability.NotObtainable;
                    end,
                    Func = function()
                        self.Filters.db.Obtainability.NotObtainable = not self.Filters.db.Obtainability.NotObtainable;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });

    local faction = addon.Objects.MenuItem:New({Text = addon.L["Faction"]});
    faction:AddChildFull({  Text = addon.L["Neutral"],
                            Checked = function() -- Same
                                return self.Filters.db.Faction.Neutral;
                            end,
                            Func = function()
                                self.Filters.db.Faction.Neutral = not self.Filters.db.Faction.Neutral;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddChildFull({  Text = addon.L["Alliance"],
                            Checked = function() -- Same
                                return self.Filters.db.Faction.Alliance;
                            end,
                            Func = function()
                                self.Filters.db.Faction.Alliance = not self.Filters.db.Faction.Alliance;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddChildFull({  Text = addon.L["Horde"],
                            Checked = function() -- Same
                                return self.Filters.db.Faction.Horde;
                            end,
                            Func = function()
                                self.Filters.db.Faction.Horde = not self.Filters.db.Faction.Horde;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddSeparator();
    faction:AddChildFull({  Text = addon.L["Select all"],
                            Func = function()
                                for faction, _ in next, self.Filters.db.Faction do
                                    self.Filters.db.Faction[faction] = true;
                                end
                                self:UpdateAchievementFrame();
                            end
                        });
    menu:Add(faction);

    local covenant = addon.Objects.MenuItem:New({Text = addon.L["Covenant"]});
    covenant:AddChildFull({ Text = addon.L["Neutral"],
                            Checked = function() -- Same
                                return self.Filters.db.Covenant.Neutral;
                            end,
                            Func = function()
                                self.Filters.db.Covenant.Neutral = not self.Filters.db.Covenant.Neutral;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Kyrian"],
                            Checked = function() -- Same
                                return self.Filters.db.Covenant.Kyrian;
                            end,
                            Func = function()
                                self.Filters.db.Covenant.Kyrian = not self.Filters.db.Covenant.Kyrian;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Venthyr"],
                            Checked = function() -- Same
                                return self.Filters.db.Covenant.Venthyr;
                            end,
                            Func = function()
                                self.Filters.db.Covenant.Venthyr = not self.Filters.db.Covenant.Venthyr;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Night Fae"],
                            Checked = function() -- Same
                                return self.Filters.db.Covenant.NightFae;
                            end,
                            Func = function()
                                self.Filters.db.Covenant.NightFae = not self.Filters.db.Covenant.NightFae;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Necrolord"],
                            Checked = function() -- Same
                                return self.Filters.db.Covenant.Necrolord;
                            end,
                            Func = function()
                                self.Filters.db.Covenant.Necrolord = not self.Filters.db.Covenant.Necrolord;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddSeparator();
    covenant:AddChildFull({ Text = addon.L["Select all"],
                            Func = function()
                                for covenant, _ in next, self.Filters.db.Covenant do
                                    self.Filters.db.Covenant[covenant] = true;
                                end
                                self:UpdateAchievementFrame();
                            end
                        });
    menu:Add(covenant);

    menu:AddFull({  Text = addon.L["Collapse Chain"],
                    Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
                        return self.Filters.db.CollapseSeries
                    end,
                    Func = function()
                        self.Filters.db.CollapseSeries = not self.Filters.db.CollapseSeries;
                        self:UpdateAchievementFrame();
                    end,
                    IsNotRadio = true,
                    NotCheckable = false,
                    KeepShownOnClick = true
                });

    menu:AddSeparator();

	-- Current Zone Filters
	local currentZone = addon.Objects.MenuItem:New({Text = addon.L["Current Zone"]});
    currentZone:AddChildFull({	Text = addon.L["Completed"],
							Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
								return self.Filters.db.CurrentZone.Completion.Completed
							end,
							Func = function()
								self.Filters.db.CurrentZone.Completion.Completed = not self.Filters.db.CurrentZone.Completion.Completed;
								self:UpdateAchievementFrame();
							end,
							IsNotRadio = true,
							NotCheckable = false,
							KeepShownOnClick = true
						});
    currentZone:AddChildFull({	Text = addon.L["Not Completed"],
							Checked = function() -- Same
								return self.Filters.db.CurrentZone.Completion.NotCompleted
							end,
							Func = function()
								self.Filters.db.CurrentZone.Completion.NotCompleted = not self.Filters.db.CurrentZone.Completion.NotCompleted;
								self:UpdateAchievementFrame();
							end,
							IsNotRadio = true,
							NotCheckable = false,
							KeepShownOnClick = true
						});
    currentZone:AddChildFull({	Text = addon.L["Obtainable"],
							Checked = function() -- Same
								return self.Filters.db.CurrentZone.Obtainability.Obtainable
							end,
							Func = function()
								self.Filters.db.CurrentZone.Obtainability.Obtainable = not self.Filters.db.CurrentZone.Obtainability.Obtainable;
								self:UpdateAchievementFrame();
							end,
							IsNotRadio = true,
							NotCheckable = false,
							KeepShownOnClick = true
						});
    currentZone:AddChildFull({	Text = addon.L["Not Obtainable"],
							Checked = function() -- Same
								return self.Filters.db.CurrentZone.Obtainability.NotObtainable;
							end,
							Func = function()
								self.Filters.db.CurrentZone.Obtainability.NotObtainable = not self.Filters.db.CurrentZone.Obtainability.NotObtainable;
								self:UpdateAchievementFrame();
							end,
							IsNotRadio = true,
							NotCheckable = false,
							KeepShownOnClick = true
						});

    local faction = addon.Objects.MenuItem:New({Text = addon.L["Faction"]});
    faction:AddChildFull({  Text = addon.L["Neutral"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Faction.Neutral;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Faction.Neutral = not self.Filters.db.CurrentZone.Faction.Neutral;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddChildFull({  Text = addon.L["Alliance"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Faction.Alliance;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Faction.Alliance = not self.Filters.db.CurrentZone.Faction.Alliance;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddChildFull({  Text = addon.L["Horde"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Faction.Horde;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Faction.Horde = not self.Filters.db.CurrentZone.Faction.Horde;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    faction:AddSeparator();
    faction:AddChildFull({  Text = addon.L["Select all"],
                            Func = function()
                                for faction, _ in next, self.Filters.db.CurrentZone.Faction do
                                    self.Filters.db.CurrentZone.Faction[faction] = true;
                                end
                                self:UpdateAchievementFrame();
                            end
                        });
    currentZone:AddChild(faction);

    local covenant = addon.Objects.MenuItem:New({Text = addon.L["Covenant"]});
    covenant:AddChildFull({ Text = addon.L["Neutral"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Covenant.Neutral;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Covenant.Neutral = not self.Filters.db.CurrentZone.Covenant.Neutral;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Kyrian"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Covenant.Kyrian;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Covenant.Kyrian = not self.Filters.db.CurrentZone.Covenant.Kyrian;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Venthyr"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Covenant.Venthyr;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Covenant.Venthyr = not self.Filters.db.CurrentZone.Covenant.Venthyr;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Night Fae"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Covenant.NightFae;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Covenant.NightFae = not self.Filters.db.CurrentZone.Covenant.NightFae;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddChildFull({ Text = addon.L["Necrolord"],
                            Checked = function() -- Same
                                return self.Filters.db.CurrentZone.Covenant.Necrolord;
                            end,
                            Func = function()
                                self.Filters.db.CurrentZone.Covenant.Necrolord = not self.Filters.db.CurrentZone.Covenant.Necrolord;
                                self:UpdateAchievementFrame();
                            end,
                            IsNotRadio = true,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    covenant:AddSeparator();
    covenant:AddChildFull({ Text = addon.L["Select all"],
                            Func = function()
                                for covenant, _ in next, self.Filters.db.CurrentZone.Covenant do
                                    self.Filters.db.CurrentZone.Covenant[covenant] = true;
                                end
                                self:UpdateAchievementFrame();
                            end
                        });
    currentZone:AddChild(covenant);

    currentZone:AddChildFull({	Text = addon.L["Collapse Chain"],
							Checked = function() -- Using function here, we force the GUI to get the value again instead of only once (caused visual bugs)
								return self.Filters.db.CurrentZone.CollapseSeries
							end,
							Func = function()
								self.Filters.db.CurrentZone.CollapseSeries = not self.Filters.db.CurrentZone.CollapseSeries;
								self:UpdateAchievementFrame();
							end,
							IsNotRadio = true,
							NotCheckable = false,
							KeepShownOnClick = true
						});
	menu:Add(currentZone);

    menu:AddSeparator();

    -- Sort By
    local sortBy = addon.Objects.MenuItem:New({Text = addon.L["Sort By"]});
    sortBy:AddChildFull({   Text = addon.L["Default"],
                            Checked = function() -- Same
                                return self.Filters.db.SortBy.Criteria == addon.L["Default"]
                            end,
                            Func = function()
                                self.Filters.db.SortBy.Criteria = addon.L["Default"];
                                menu:SetSelectedName(addon.L["Default"]);
                                self.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddChildFull({   Text = addon.L["Name"],
                            Checked = function() -- Same
                                return self.Filters.db.SortBy.Criteria == addon.L["Name"]
                            end,
                            Func = function()
                                self.Filters.db.SortBy.Criteria = addon.L["Name"];
                                menu:SetSelectedName(addon.L["Name"]);
                                self.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddChildFull({   Text = addon.L["Completion"],
                            Checked = function() -- Same
                                return self.Filters.db.SortBy.Criteria == addon.L["Completion"]
                            end,
                            Func = function()
                                self.Filters.db.SortBy.Criteria = addon.L["Completion"];
                                menu:SetSelectedName(addon.L["Completion"]);
                                self.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddChildFull({   Text = addon.L["ID"],
                            Checked = function() -- Same
                                return self.Filters.db.SortBy.Criteria == addon.L["ID"]
                            end,
                            Func = function()
                                self.Filters.db.SortBy.Criteria = addon.L["ID"];
                                menu:SetSelectedName(addon.L["ID"]);
                                self.AchievementsFrame:ForceUpdate();
                            end,
                            NotCheckable = false,
                            KeepShownOnClick = true
                        });
    sortBy:AddSeparator();
    sortBy:AddChildFull({   Text = addon.L["Reverse Sort"],
                            Checked = function() -- Same
                                return self.Filters.db.SortBy.ReverseSort
                            end,
                            Func = function()
                                self.Filters.db.SortBy.ReverseSort = not self.Filters.db.SortBy.ReverseSort;
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

function filterButton:ValidateBase(filters, achievement, ignoreCollapseSeries)
    -- diagnostics.Trace("filterButton:Validate " .. tostring(achievement.ID)); -- Generates a lot of messages

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

	return 1;
end

function filterButton:Validate(achievement, ignoreCollapseSeries)
    return self:ValidateBase(self.Filters.db, achievement, ignoreCollapseSeries);
end

function filterButton:ValidateCurrentZone(achievement, ignoreCollapseSeries)
    return self:ValidateBase(self.Filters.db.CurrentZone, achievement, ignoreCollapseSeries);
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
        end

        iterations = iterations + 1;
    end
end

function filterButton:GetHighestAchievementWhenCollapseSeries(achievement)
    diagnostics.Trace("filterButton:GetHighestCollapsedSeriesAchievement");

    if not achievement then
        return;
    end

    if self.Filters.db.CollapseSeries then
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

function ResetFilters(self)
    -- Always reset faction filter
    self.Filters.db.Faction.Neutral = true;
    self.Filters.db.Faction.Alliance = addon.Faction.IsAlliance;
    self.Filters.db.Faction.Horde = addon.Faction.IsHorde;
    self.Filters.db.CurrentZone.Faction.Neutral = true;
    self.Filters.db.CurrentZone.Faction.Alliance = addon.Faction.IsAlliance;
    self.Filters.db.CurrentZone.Faction.Horde = addon.Faction.IsHorde;

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
end